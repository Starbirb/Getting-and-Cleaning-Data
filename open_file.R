setwd("C:\\Users\\user\\Dropbox\\Coursera\\assignment")

if(!file.exists("C:\\Users\\user\\Dropbox\\Coursera\\assignment\\data")){dir.create("C:\\Users\\user\\Dropbox\\Coursera\\assignment\\data")}
url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,destfile="C:\\Users\\user\\Dropbox\\Coursera\\assignment\\data\\Dataset.zip",method="curl")

unzip(zipfile="C:\\Users\\user\\Dropbox\\Coursera\\assignment\\data\\Dataset.zip",exdir="C:\\Users\\user\\Dropbox\\Coursera\\assignment\\data")