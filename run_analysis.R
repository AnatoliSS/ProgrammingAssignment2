run_analysis<-function(){
  #download data
  url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, destfile = "./UCI HAR Dataset Dataset.zip")
  
  #read training data
  train = read.csv("./UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
  l=length(train)
  train[,l+1] = read.csv("./UCI HAR Dataset/train/y_train.txt", sep="", header=FALSE)
  train[,l+2] = read.csv("./UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)  
    
  #read testing data
  test = read.csv("./UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
  test[,l+1] = read.csv("./UCI HAR Dataset/test/y_test.txt", sep="", header=FALSE)
  test[,l+2] = read.csv("./UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE) 
  
  #row bind training and testing  
  bind = rbind(train, test)
  
  #read activities labels
  ActLab = read.csv("./UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)

  #read features
  features = read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)

  #select features with mean and std only
  
  select <- grep("mean\\(\\)|std\\(\\)", features[,2])
  features <- features[select,]
  
  #select from binded data only mean and std columns
  bind <- bind[,c(select,l+1,l+2)]
  
  #rename columns
  colnames(bind) <- tolower(c(as.character(features$V2), "activity", "subject"))
  
  i = 1
  for (actlab in ActLab$V2) {
    bind$activity <- gsub(i, actlab, bind$activity)
    i = i + 1
  }
  
  #aggregate  
  bind$activity <- as.factor(bind$activity)
  bind$subject <- as.factor(bind$subject)
  tidySet = aggregate(bind, by=list(activity = bind$activity, subject=bind$subject), mean)
  
  #remove irrelevant columns
  l=length(tidySet)
  tidySet[,l] = NULL
  tidySet[,l-1] = NULL
  
  #write tidy set
  write.table(tidySet, "tidySet.txt",  row.name = FALSE, sep="\t")

}