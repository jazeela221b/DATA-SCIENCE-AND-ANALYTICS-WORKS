count <-c(60,40,90,50,30) 
courses <-c("B.Tech", "M.Tech", "B.Sc","M.Sc","PhD")

barplot(count,names.arg=courses,xlab="Courses",ylab="Number of students",ylim = c(0,100),col=c("red", "green", "yellow", "blue","brown"),main="Total Students per courses in the department",border="black")
legend("topright",title="COURSES", legend=c("B.Tech", "M.Tech", "B.Sc","M.Sc","PhD"), fill = c("red", "green", "yellow", "blue","brown"))

library("ggplot2")
col=c("red", "green", "yellow", "blue","brown")
sample_data <- data.frame(count = c(60,40,90,50,30),courses <-c("B.Tech", "M.Tech", "B.Sc","M.Sc","PHD"))
plot<-ggplot(sample_data,aes(courses,count,colour = col)) +geom_bar(stat = "identity")+geom_text(aes(label = signif(count)), nudge_y = 3)
plot


count <-c(60,40,90,50,30) 
courses <-c("B.Tech", "M.Tech", "B.Sc","M.Sc","PhD")

barplot(count,names.arg=courses,xlab="Courses",ylab="Number of students",ylim = c(0,100),col=c("red", "green", "yellow", "blue","brown"),main="Total Students per courses in the department",border="black")
legend("topright",title="COURSES",legend=c("B.Tech","M.Tech","B.Sc","M.Sc","PhD"),fill = c("red", "green", "yellow", "blue","brown"))
