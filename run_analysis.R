# Coursera JHU "Getting and Cleaning Data" 
# Week 4 Programming Assignment
# Victor Garzon
# 2016-01-26

# Load packages dplyr and reshape2
library(dplyr)
library(reshape2)

# Data foler name
dat_dir <- "./UCI HAR Dataset/"

# Read test and train data sets
set_tst <- read.table(paste0(dat_dir, "test/X_test.txt"))
set_trn <- read.table(paste0(dat_dir, "train/X_train.txt"))

# Read subject definition files
sbj_tst <- read.table(paste0(dat_dir, "test/subject_test.txt"))
sbj_trn <- read.table(paste0(dat_dir, "train/subject_train.txt"))

# Read test and train activity labels data
lbl_trn <- read.table(paste0(dat_dir, "train/y_train.txt"))
lbl_tst <- read.table(paste0(dat_dir, "test/y_test.txt"))

# Read features and activity definition files
ftr <- read.table(paste0(dat_dir, "features.txt"))
act <- read.table(paste0(dat_dir, "activity_labels.txt"))

# Convert subjects names to factors
sbj_trn_fac <- factor(sbj_trn$V1)
sbj_tst_fac <- factor(sbj_tst$V1)

# Convert activities to factors
lbl_trn_fac <- factor(lbl_trn$V1, act$V1, act$V2)
lbl_tst_fac <- factor(lbl_tst$V1, act$V1, act$V2)

# Select features whose name includes "mean" or "std"
mean_std_ind <- grep("mean|std", ftr$V2)

# Convert feature labels to character vector
ftr_sel_char <- as.character(ftr[mean_std_ind, 2])

# Capitalize M and S in mean and std, remove parentheses and dashes
ftr_sel_char <- gsub("mean", "Mean", ftr_sel_char)
ftr_sel_char <- gsub("std", "Std", ftr_sel_char)
ftr_sel_char <- gsub("\\(|\\)|-", "", ftr_sel_char)

# Select data columns for train and test data frames
dfm_trn <- data.frame(set_trn[, mean_std_ind])
dfm_tst <- data.frame(set_tst[, mean_std_ind])

# Add names to data frame columns
names(dfm_trn) <- ftr_sel_char
names(dfm_tst) <- ftr_sel_char

# Data frame with subject and activity identifiers
dfm_trn_ids <- data.frame(subject = sbj_trn_fac, activity = lbl_trn_fac)
dfm_tst_ids <- data.frame(subject = sbj_tst_fac, activity = lbl_tst_fac)

# Add subject and activity identifiers as left-most columns
dfm_trn <- cbind(dfm_trn_ids, dfm_trn)
dfm_tst <- cbind(dfm_tst_ids, dfm_tst)

# Combine train and test data frames into one
dfm <- rbind(dfm_trn, dfm_tst)

# Melt data frame by subject and activity
dfm_mel <- melt(dfm, id.vars = c("subject", "activity"))

# Group melted data by subject, activity and variable
dfm_grp <- group_by(dfm_mel, subject, activity, variable)

# Summarize mean and standard deviation for each group
dfm_smr <- summarize(dfm_grp, mean = mean(value), sd = sd(value))

# Write summary data to file
write.table(dfm_smr, "UCI_HAR_combined_summary.txt", row.names = FALSE)

