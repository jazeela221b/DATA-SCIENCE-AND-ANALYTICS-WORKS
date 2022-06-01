data(package = .packages(all.available = TRUE))
# Select some columns from mtcars.
input <- mtcars[,c("am","cyl","hp","wt")]
print(head(input))
#Create Regression Model
am_data = glm(formula=am ~ cyl + hp + wt ,data=input,family=binomial)
print(summary(am_data))
