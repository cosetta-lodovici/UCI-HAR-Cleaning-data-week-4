##1 download file week 4 assignment
if (!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url=fileUrl, destfile = "./data/Dataset.zip")
unzip("./data/Dataset.zip", exdir = "./data")


####1. Merges the training and the test sets to create one data set.

## read training files
subjecttrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
Xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
## read test files
subjecttest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
Xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")

## create data set train
dftrain <- cbind(Xtrain, ytrain, subjecttrain)
## create data set test
dftest <- cbind(Xtest, ytest, subjecttest)

## create one data set with train and test
dfmeasures <- rbind(dftrain,dftest)

##descriptive names data set
namesx <- make.names((read.table("./data/UCI HAR Dataset/features.txt")[2])[[1]])
namescol <- c(namesx,"activity","subject")
names(dfmeasures) <- namescol


####2. Extracts only the measurements on the mean and standard deviation for each measurement.
##criteria: mean or std
imeasures <- grep("(mean\\.\\.|std\\.\\.)",namescol)
dfmsmeasures <- dfmeasures[,c(imeasures,562,563)]


####3. Uses descriptive activity names to name the activities in the data set
namesact <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
names(namesact) <- c("code","humanactivity")
##merge for lookup
dfmsmeasures1 <- merge(dfmsmeasures, namesact, by.x = "activity", by.y = "code")[,-1]


####4. Appropriately labels the data set with descriptive variable names.
##criteria: tolower + gsub
names(dfmsmeasures1) <- gsub("\\.","",tolower(names(dfmsmeasures1)))


####5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidymeasures <- aggregate(. ~ subject + humanactivity, data=dfmsmeasures1, FUN="mean")
## write tidy file txt
write.table(tidymeasures, file="./data/tidydataset.txt",row.names = FALSE)


