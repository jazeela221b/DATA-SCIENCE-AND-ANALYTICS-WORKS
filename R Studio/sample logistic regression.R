#read the data directly into the workspace and assign it to a new dataframe object
install.packages('readr', dependencies = TRUE, repos='http://cran.rstudio.com/')
library(readr)
df_ULCA <-read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
head(df_ULCA)

#view summary of dataset
summary(df_ULCA)

str(df_ULCA)
# see that variable are either integer or number.
sum(is.na(df))

#check if the admits are distributed well enough in each category of rank.
xtabs(~admit +rank ,data=df_ULCA)

#convert rank variable from integer to factor
df_ULCA$rank <- as.factor(df_ULCA$rank)

#logit function
logit <- glm(admit ~ gre+gpa+rank,data=df_ULCA,family="binomial")

summary(logit)
#Prediction
#Let's say a student have a profile with 790 in GRE,3.8 GPA 
#and he studied from a rank-1 college.
#Now you want to predict the chances of that boy getting admit in future.

x <- data.frame(gre=790,gpa=3.8,rank=as.factor(1))
p<- predict(logit,x)
p

# 0.85426 ,there is 85% chance that this guy will get the admit.

