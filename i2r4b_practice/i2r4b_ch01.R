#i2r4b_ch01:

# working with scalars:
myst = "Hello world!";
mybol = FALSE;
myfloat = 5.2;
myint = 6;
mystr = "MDR1";
name = "Sheri";

# Functions in R, e.g., print to screen using print or cat functions in print statement:
print (myst);
print (mybol);
print (myfloat);
print (myint);
print (mystr);
print (name);

cat (myst) 
cat (mybol);
cat (myfloat);
cat (myint);
cat (mystr);
cat (name);

name1 = "Alan";
print(name1);
print("Hi", name1, "\n");
cat(name1);
cat("Hi", name1, "\n");

# to know what is permissible with each funtion (i.e., help)
?cat

# for quit R or RStudio;
q()

# Creation of Vectors:
mydna = "ATCGCCCTG"
cat(mydna)

# We define a vector:
myprimer = c("A","C","T","G","C","C","C","T","G");
myprimer
mydna
print(myprimer)
print(mydna)
cat(myprimer)
cat(mydna)

# create your own ordered vector of numbers using the seq function, for example;
seq(start, end, increment); # this the syntax of making vector using seq function
seq(1, 10, 1); # prints "1 2 3 4 5 6 7 8 9 10"

# read a vector in from a file:
scan("/Users/abdulkarimshwani/Desktop/R_Exploring/data_examples/vect.txt");
vect = scan("vect.txt")
print(vect); # ERROR

# manipulating vectors:
myprimer[1]; #prints A
myprimer[2]; #prints C
myprimer[4:7]

# Subset a vector, by giving a range:
myprimer[1:4]; #print "A" "C" "T" "G"

# Functions of Vectors:

# Find length of your vector:
length(myprimer); #gives you the length of your vector.

# Function summary is an important function:
summary(myprimer)
summary

# You can also combine functions together, such as using length and seq together:
seq(1, length(myprimer), 1); #prints "1 2 3 4 5 6 7 8 9"

#seq function to print sequences between a range based on requirements, e.g., 2 by 2 or 1 by 1, 
seq(1,8, 2) # here it prints 2 by 2, so we expect 1 3 5 7

# Lists:
# Lists are very similar to vectors, but more flexible, i.e., they include various variables of different data types together. For example, if we have:

char_vector = c("sample1", "sample2", "sample3");
bool_vector = c(TRUE, TRUE, FALSE);
float_vector = c(4.23,6.53,7.899);
single_string = "Red River Valley";
single_number = "SRR2194855";
list = list(char_vector, bool_vector, float_vector, single_string, single_number);
print(list);

# You can also do this all in one step:
list = list(c("sample1", "sample2", "sample3"), bool_vector = c(TRUE, TRUE, FALSE), c(4.23,6.53,7.899), "Red River Valley", "SRR2194855");
list

# We can also name the indices in a list:
seqs=c("AGTGAGGGA","AGTGAGGCA","AGTGAGGCA","AGTGAGGCC","AGTGAGGCT");
seqs
names(seqs)= c("Dmel_AX39", "Dmel_AX43", "Dmel_CC09", "Dmel_CC83", "Dmel_LM20");
names(seqs)

# Notice that names of lists are vectors! This allows the output to make more sense:
print(seqs);

# Q/ Notice that the names all start with $ now? 
# It is R’s way of designating a subset of a list. This allows for the more logical grabbing of an individual item:
print(seqs["Dmel_AX39"]);

# You can also pull them by numerical index, just like a vector:
print(seqs[3]);

# But it doesn’t require you to know what the order is (which is helpful in large lists!). In fact, lists act a lot like vectors:
# Add an element:
seqs[6]="AGTGAGGCA";
names(seqs)[6] = "Dmel_TG40"; #remember names is a vector
#or
seqs["Dmel_TG40"]="AGTGAGGCA";
seqs
names(seqs)


# Matrix in R:

# Anatomy of a Matrix:


      [,1] [,2] [,3] [,4]
[1,]    1    6   11   16
[2,]    2    7   12   17
[3,]    3    8   13   18
[4,]    4    9   14   19
[5,]    5   10   15   20

matrix[1,1] is 1
matrix[1,] is all of row 1
matrix[,1] is all of col 1

# Creation or generating of matrix:
# Let’s first generate the matrix above:
y = matrix(1:20, nrow=5, ncol=4);
print(y);

y[1,1]
y[1,]
y[,1]

y[3:4,3]

# We can also fill a matrix by rows instead of columns, using an option called by row:
a = matrix(c(1,2,3,4), nrow=2, ncol=2, byrow=TRUE);
print(a);
a
y
cat(print(y));


# Tknow more (help) about matrix, use:
?matrix

# Read it in from different files:
a = as.matrix(read.table("matrix.dat")); 
print(a);
a = as.matrix(read.table("matrixheader.data", header = TRUE, row.names = 1)); print(a);


# We can also read it in from different files:
a = as.matrix(read.table("matrix.dat")); 
print(a);

a = as.matrix(read.table("matrixheader.data", header = TRUE, row.names = 1)); 
print(a);

# Tknow more (help) about read.table, use:
?read.table

# csv file reading
b = as.matrix(read.table("matrix.csv"));
print(b);

# Since you are reading in files, it is ALWAYS a good idea to check the data. You can get:
nrow(a) #number of rows in a
ncol(a) #number of cols in a
summary(a) #summary of data


# Manipulating matrix:
# Subset matrices just like vectors:

# Get the following from matrix a:
# Print the 3rd row? 
# 4th column? 
# Element at row 3, col 4? 
# Grab just rows 1-4 and col 2-5?
  
y[3,] # 3rd row
y[,4] # 4th column
y[3,4] # element at row 3, col 4
y[1:3,2:4] # submatrix of rows 1-4 and cols 2-5


# 1.8.1 Reading a Data Frame from a File:
# The most basic import of a Data Frame is the following:
mydata = read.table("BlastResults.txt"); 

# but this will lack column names and row names! If there is no header line and you want to name columns at import, you can:
# mydata = read.table("BlastResults.txt", col.names = c("Strain", "MaxScore",...));
mydata = read.table("BlastResults.txt", col.names = seq(1,8,1));
mydata

# We can also set colnames and rownames after the fact, using:
#colnames(mydata) = c("Strain", "MaxScore"...);
rownames(mydata) = mydata[,1];
rownames(mydata)

mydata1 = read.table("BlastResults.txt", header=TRUE, row.names=1);
mydata1

# You can also check the file with:
summary(mydata); # gives you a summary of the data
names(mydata); # outputs column names
row.names(mydata); # outputs row names
head(mydata); # prints the top couple lines


# 1.8.2 Subsetting Data Frames:
# Extracting columns:
strain = mydata["strain"];
strain
strain_query = mydata[c("strain", "query")];
strain_query
strain_evag = mydata[c("strain", "evalue", "accession", "geneid")];
strain_evag

# Extracting rows:
goodhits = subset(mydata, evalue < 1e-35); #evalue cannot have ""s
goodhits
nrow(mydata);
nrow(goodhits);

# Extracting matches:
#Define a set of genes:
gene_names = rownames(mydata)[7:8];
gene_names

# Grab the hits of interest:
hitsofinterest = subset(mydata, rownames(mydata) %in% gene_names);
hitsofinterest

#Print the results:
print(hitsofinterest);

#Print the bitscore of the results:
hitsofinterest[c("maxscore","perident")];

# 1.9 Quiz! Reading R Syntax:
# Q/ What does the following mean?
print(nrow(subset(mydata, rownames(mydata) %in% gene_names)));
subset(mydata, rownames(mydata) %in% gene_names 

# What about REALLY complex data types?
# If you run into something, someone made a package for it!
# Q/ What are Packages?
# Packages are things you can download that add functionality to R. They contain functions written by other people, and packaged up all nicely so you can just load them, and then call the functions within. 

# To download a package:
# format: install.packages("packagename");
install.packages(c("maptools","mapdata")); # We will need these for Day 3!

# Load a package:
#library(packagename);
library(rprojroot);

install.packages ("ggplot2", lib="/N/u/ss93/R/library/"); 
library(ggplot2, lib.loc="/N/u/ss93/R/library/");

# Another way of help type function with no parentheses () give you info about the function:
cat;

# Methods(function); - will print all the versions of that function
# methods(print);

# Another option is to look at vignettes. These are built in examples that come with many packages and are required by bioconductor. To pull up the list of vignettes available in a package:
# vignette(package="name of package");
# vignette(package="annotate"); # This will bring up a list of all the vignettes in "annotate"

# You can then pull the actual vignette by name:
# vignette("name of vignette");
vignette("GOusage"); # This will bring up the documentation on how to use this feature!

# ............................................................END............................................

  



