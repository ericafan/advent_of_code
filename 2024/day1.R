data <- read.table("input1.txt")
head(data)
dim(data)

# Part 1
list1 <- sort(data[,1])
list2 <- sort(data[,2])

differences <- abs(list1 - list2)

sum(differences)


# Part 2
counts <- cbind(unique(list1), 0) # this part is much easier in R than in Python

for (item in list2)
{
  if (item %in% counts[,1])
  {
    ind <- which(counts[,1]==item)
    counts[ind, 2] = counts[ind, 2] + 1
  }
}

simscore <- sum(counts[,1]*counts[,2])
simscore
