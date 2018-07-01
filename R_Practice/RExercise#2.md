# R Exercise #2

## Section 1 Questions

1. What does the REPLACE= argument of the sample( ) function do? You may want to look at the help page using ?sample.

  It allows the function to pick numbers more than one time by replacing them after they are picked.

2. Using as(MyMatrix,"numeric") will not convert MyMatrix to numeric data! Can you think of a property of logicals that you can use to convert the logicals to 0's and 1's other than the as( ) function?

  A way to do this is to do this: "MyMatrix*1" so TRUE and FALSE answers turn into 0s and 1s.

3. If you wanted to check if all of the elements in each row are true, how would you do this?

  I would use this: "all(MyMatrix[1:8,]) == TRUE" to check this-the answer is no.

## Section 2 Questions

1. How many times does the number 7 occur in MyMatrix?

  It occurs 16 times.

2. How do you find the sum of each column?

  I use "apply(MyMatrix,2,sum)" to do this.

3. How do you find the product of each column?

  I use "apply(MyMatrix, 2, prod)" to do such.

4. How would you change every instance of the number 10 to 12?

  I use " MyMatrix[which(MyMatrix == 10)]<-12 to do such.

5. How many values in MyMatrix are greater than 3 and less than 8?

  33 values fulfill this rule.

6. How do you change the elements of column 12 into character data, while keeping columns 1- 11 as numeric data??

  I would first turn it into a data frame then use "<- as.character(MyDataFrame[,12])" to modify it to the character data type.

7. Find which rows of MyMatrix have a sum >70. Make a new version of MyMatrix where the 13th column is a set of TRUE and FALSE values denoting which rows have a sum >70. (Hint: What type of object allows you to store both logical and numeric data at once?)

  I would first use "rowSums" to find the answer to the first part of the question, then would use "MyDataFrame$V13 <- MySums > 70" to create the 13th row. 
