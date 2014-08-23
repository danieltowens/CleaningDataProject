# read in metadata

activity.labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
feature.names <- as.character(features$V2)


# read in test data

subject.test <- read.table("test/subject_test.txt")
colnames(subject.test) <- "subject"

activity.test <- read.table("test/y_test.txt")
colnames(activity.test) <- "activity"

test.data <- read.table("test/X_test.txt")
colnames(test.data) <- feature.names

test.data <- test.data[, grepl("mean|std", feature.names)]
test.data$subject <- subject.test$subject
test.data$activity <- activity.test$activity

test.data$activity <- as.factor(test.data$activity)
levels(test.data$activity) <- activity.labels$V2


# read in training data

subject.train <- read.table("train/subject_train.txt")
colnames(subject.train) <- "subject"

activity.train <- read.table("train/y_train.txt")
colnames(activity.train) <- "activity"

train.data <- read.table("train/X_train.txt")
colnames(train.data) <- feature.names

train.data <- train.data[, grepl("mean|std", feature.names)]
train.data$subject <- subject.train$subject
train.data$activity <- activity.train$activity

train.data$activity <- as.factor(train.data$activity)
levels(train.data$activity) <- activity.labels$V2


# combine all data and calculate means

all.data <- rbind(test.data, train.data)
all.data$activity <- as.numeric(all.data$activity)
split.data <- split(all.data, all.data[,c("subject", "activity")])

all.means <- as.data.frame(t(sapply(split.data, colMeans)))
all.means$activity <- as.factor(all.means$activity)
levels(all.means$activity) <- activity.labels$V2


