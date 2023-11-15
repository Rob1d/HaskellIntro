# Basics of the haskell

## Use the Haskell

### download the haskell

```bash
./build.sh
```

### Run your code :

```bash
runhaskell main.hs
```

## Steps


### First step : Hello world !

From the sample main given, write a function that displays hello world !

### Second step : Array sum

Write a function that calculates the sum of an int array

### Third step : Array Size

Write a function that calculates the sum of an array (generic function !)

### Fourth step : Average list

Write a function that calculates the average of a list of int by using your two precedent writed functions

### Fifth step : Parse Line

Write a function that parses the line global variable into a string tuple like this ("minishell" , "B")

### Sixth step : Parse Lines

Do the same but now with the content of the global variable grades

### Seventh step : Filter Lines

Now filter this array of tuple by keeping only the variable that got as grades values A B C or D


### Eighth step : Inverse array

Take an array and inverse his members

### Last step : GPA Calculator

Calculate a gpa according to an initialCredits, initialGPA, newCredits and newGrade.

ex : I got 120 credits, a 2.5 GPA, by getting an A grade on a 4 credits project my new GPA will be : 2.54

formula : (initialCredits * initialGPA + newCredits * newGrade) / (initialCredits + newCredits)

newGrade : A = 4, B = 3, C = 2, D = 1, E = 0