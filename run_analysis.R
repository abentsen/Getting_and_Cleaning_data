run_analysis <- function() {
        library(reshape2)
        
        # Read activites and features from main directory
        activities <- read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE, sep=" ", col.names=c("activityid","activity"))
        features <- read.table("UCI HAR Dataset/features.txt", header=FALSE, sep=" ", col.names=c("colnum","featurename"))

        # Read test data from test directory
        testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names=c("subjectid"))
        testActivity <- read.table("UCI HAR Dataset/test/y_test.txt", col.names=c("activityid"))
        testData <- read.fwf("UCI HAR Dataset/test/x_test.txt", header=FALSE, widths=rep(16,561))
        
        # Read training data from test directory
        trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names=c("subjectid"))
        trainActivity <- read.table("UCI HAR Dataset/train/y_train.txt", col.names=c("activityid"))
        trainData <- read.fwf("UCI HAR Dataset/train/x_train.txt", header=FALSE, widths=rep(16,561))
        
        # Format the features data and assign as column names to the main data sets
        features$featurename <- getDescriptiveNames(features)
        colnames(testData) <- as.vector(features[[2]])
        colnames(trainData) <- as.vector(features[[2]])
        
        # Combine the test and train data sets into one set
        fullData <- rbind(testData,trainData)

        # Create a subset that includes only mean and standard deviation columns
        meansStdCols <- c(features[grepl("Mean",features$featurename) | grepl("mean",features$featurename) | grepl("StandardDeviation",features$featurename),1])
        meanStdData <- fullData[,meansStdCols]

        # Write the subset to a file for later use
        meanStdFile <- "meanStdData.txt"
        write.table(meanStdData, file=meanStdFile,sep="|",row.names=FALSE,col.names=TRUE)
        
        # Combine the test and train activity into one set
        fullActivity <- rbind(testActivity,trainActivity)
        
        # Combine the test and train subject into one set
        fullSubject <- rbind(testSubject,trainSubject)
        
        # Bind activity and subject to the full data set
        meanStdData <- cbind(meanStdData,fullActivity,fullSubject)
        
        # Add a column with descriptive activity names and remove the activityid column
        meanStdData <- merge(meanStdData,activities)
        meanStdData <- meanStdData[,c(2:89)]
        
        # Melt and dcast the data to compute the average of each variable per subject and activity
        meanStdMelt <- melt(meanStdData,id=c("subjectid","activity"),measure.vars=names(fullData[,meansStdCols]))
        tidyData <- dcast(meanStdMelt, subjectid + activity ~ variable, mean)
        
        # Write the tidy data set to a file for later use
        tidyDataFile <- "tidyDataSet.txt"
        write.table(tidyData, file=tidyDataFile,sep="|",row.names=FALSE,col.names=TRUE)
        
}

getDescriptiveNames <- function(features){
        dn <- gsub(",","",gsub("-","",gsub("\\)","",gsub("\\(","",features$featurename))))
        dn <- gsub("Body",".Body.",dn)
        dn <- gsub("Acc",".Acceleration.",dn)
        dn <- gsub("Gyro",".Gyroscope.",dn)
        dn <- gsub("meanFreq",".mFrequency.",dn)
        dn <- gsub("Mean",".Mean.",dn)
        dn <- gsub("mean",".Mean.",dn)
        dn <- gsub("Jerk",".Jerk.",dn)
        dn <- gsub("Gravity",".Gravity.",dn)
        dn <- gsub("gravity",".Gravity.",dn)
        dn <- gsub("Mag",".Magnitude.",dn)
        dn <- gsub("angle","angle.",dn)
        dn <- gsub("std",".StandardDeviation.",dn)
        dn <- gsub("mFrequency","meanFrequency",dn)
        dn <- paste(paste(".",dn,sep=""),".",sep="")
        dn <- gsub("\\.\\.","\\.",dn)
        dn <- gsub("\\.t\\.","\\.time\\.",dn)
        dn <- gsub("\\.f\\.","\\.frequency\\.",dn)
        dn <- substr(dn,2,nchar(dn)-1)
        dn
}