library(plyr);
library(dplyr)
library(data.table)
library(tidyr)
      
filepath <- file.path("C:\\Users\\user\\Dropbox\\Coursera\\assignment\\data" , "UCI HAR Dataset")

dataActTest  <- read.table(file.path(filepath, "test" , "Y_test.txt" ), header = FALSE)
dataActTrain <- read.table(file.path(filepath, "train", "Y_train.txt"), header = FALSE)
dataFeatTest  <- read.table(file.path(filepath, "test" , "X_test.txt" ), header = FALSE)
dataFeatTrain <- read.table(file.path(filepath, "train", "X_train.txt"), header = FALSE)
dataSubTrain <- read.table(file.path(filepath, "train", "subject_train.txt"), header = FALSE)
dataSubTest  <- read.table(file.path(filepath, "test" , "subject_test.txt"), header = FALSE)

dataSub <- rbind(dataSubTrain, dataSubTest)
dataAct<- rbind(dataActTrain, dataActTest)
dataFeat<- rbind(dataFeatTrain, dataFeatTest)

names(dataSub)<-c("subject")
names(dataAct)<- c("activity")
dataFeatNames <- read.table(file.path(filepath, "features.txt"), head = FALSE)
names(dataFeat)<- dataFeatNames$V2

dataCombine <- cbind(dataSub, dataAct)
Data <- cbind(dataFeat, dataCombine)

subdataFeatNames<-dataFeatNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeatNames$V2)]
                                           

selectedNames<-c(as.character(subdataFeatNames), "subject", "activity" )
Data <- subset(Data,select=selectedNames)

activityLabels <- read.table(file.path(filepath, "activity_labels.txt"), header = FALSE)

names(Data)<-gsub("^t", "time ", names(Data))
names(Data)<-gsub("^f", "frequency ", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))


DataFinal<-aggregate(. ~subject + activity, Data, mean)
DataFinal<-DataFinal[order(DataFinal$subject,DataFinal$activity),]

write.table(DataFinal, file = "tidydata.txt",row.name=FALSE)
