z=scan()
g=z[z<5]

A=matrix(c(4301,1662,652,5362,2071,895,6593,2952,113),3,3,byrow = TRUE)
A
colnames(A)=c("Allopathy","Ayrveduc","Siddha")
rownames(A)=c("2005","2010","2015")
barplot(t(A),xlab = "Year",ylab = "Treatments",main = "'No.of patients with treatments")


B=matrix(c(4301,1662,652,5362,2071,895,6593,2952,113),3,3)
B
colnames(B)=c("Allopathy","Ayrveduc","Siddha")
rownames(B)=c("2005","2010","2015")
barplot(t(B),xlab = "Year",ylab = "Treatments",main = "'No.of patients with treatments")




