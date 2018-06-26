# R Beginner Test
**By Christopher Noll**

1. What class of object is mtcars? What function did you use to find out?

  The class of mtcars is a list. I used the "typeof" function to determine this.

2. Is precip defined as a 1-dimensional array or a vector? How did you find out?

  It is. I used the "is(xxx, "something")" to ask if it is a vector, and it gave back a "TRUE" answer.

3. How would you convert the data.frame trees into a matrix?

  I would use the "as" function like so: trees<-as(trees,"matrix"). I can also use the "is" function to verify.

4. What is the name of the 14th city in the precip dataset?

  The name of the 14th city, using this code: precip[14], is Atlanta, Georgia.

5. What function would you use if you wanted to combine all three data sets into a single object?

  I would use the function "data.frame" function to combine all three data sets.

6. Does precip consist of numeric data? How did you find out?
  Yes, precip consists of numeric data. I did so through the "typeof" function. Although the "typeof" function spits out the result "double," double is synonymous with "numeric."

7. Code four different ways to subscript the 2nd row and 7th column of mtcars using bracket notation - i.e., 17.02.
  The four different ways are: mtcars[2,7], mtcars[2,"qsec"], mtcars[ ,"qsec"][2], and mtcars[2, ]["qsec"].

8. How would you change the precipitation values of "Juneau", "Phoenix", and "Sacramento" to 23, 46, and 12 in the precip dataset?

 I would do so by finding the index of each of the locations and using this sequence "precip[index of desired local]<-desired number".

9. Are there any trees in the trees dataset with more girth than volume? How did you find out?

  There are none. The quick inequality "trees[1:31]>=trees[63:93]" quickly confirmed this, along with visual confirmation.

10. Take the sum of all elements in column height of the trees dataset, call this value A. Take the sum of all elements in row Valiant of the mtcars dataset, call this value B. Take the sum of the first 8 elements of the precip dataset, call this value C. Divide C by B and add A. What is your final answer?

  First:  A<-sum(trees[32:62]). Then:  B<-sum(mtcars[6, ]). After that:  C<-sum(precip[1:8]). Finally: (C/B)+A = 2356.546.
