# Assignment 1

**Due:** January 30, 2023

**Instructions:** 
  * Please turn in the answers to this assignment as a .txt document. To create a .txt document in R, go to **New File**, then select **Text file**. You can use any other text editor if you like. Please do not use Mac's Text Edit application, though.
  * DO NOT include the questions in the document you turn in. Answers only!
  * Answers will be graded for correctness, completeness, and how well the instructions are followed. 
  * TURN in your assignment on canvas
  
:white_check_mark: These are the learning objectives associated with each question

-----

## QUESTION 1 (5 pts) 

:white_check_mark: Students will learn how to interface with R and RStudio

*Let's explore R-studio a little bit by learning about shortcut keys. Try the following and report what happens: (answers in words, phrases, or short sentences)**

A. What happens when you press **Alt+Shift+K** on a PC/Linux or **Option+Shift+K** on a Mac?

B. What happens when you are working on the "Console" and you press the **up arrow**?

C. What happens when you are working on the "Console" and you press **CTRL+L**?

D. What shortcut key helps you escape out of an executed command on the "Console"? For example, try executing a sleep function. This puts R to sleep for 5 minutes. (in other words - What would you press to return to the prompt before 5 minutes is complete?)

```r
Sys.sleep(5)
```


-----


## QUESTION 2 (5 pts) 

:white_check_mark: Students will become familiar with a few basic R objects - vectors

:white_check_mark: Students will execute a few basic R functions

*We learned that vectors come in different classes depending on the data type they house. Answer the following in phrases or sentences.*

A. What are the classes of each of these vectors? 
```r
users <- c("alvin", "viet", "leila")
logins <- c(12, 5, 34)
```

B. If we merge these vectors together into super_vector by concatenating them together (below), what is the class of super\_vector? Why do you think this happened?

```r
super_vector <- c(users, logins)
```

C. How would you force super\_vector into a numeric sub-class? *write the line of code* What happens? *copy the output and write a sentence explanation*

-----

## QUESTION 3 (5 pts) 
:white_check_mark: Students will become familiar with a few basic R objects - data frames

:white_check_mark: Students will execute a few basic R functions

Heather has written some code to create a data frame with columns for "languages", "greetings", and "partings". Each line of her code except the last line has a bug, or error. Can you de-bug Heather's code? Re-write it so the final answer looks like so:

```
  languages greetings partings
1   English     hello      bye
2   Spanish      hola    adios
3  Japanese      ohio     mata
4    French   bonjour    salut
```


```
# Heather's code:
languages <- ("English", "Spanish", "Japanese", "French")
_greetings_ <- c("hello", "hola", "ohio", "bonjour")
partings < c("bye", "adios", "mata", "salut")
dictionary <- DataFrame(languages, _greetings_, partings)
dimens(dictionary)
dictionary

```

-----

## QUESTION 4 (5 pts) 
:white_check_mark: Students will become familiar with a few basic R objects - data frames

:white_check_mark: Students will execute a few basic R functions

:white_check_mark: Students will gain experience in basic plotting

The following code uses a base R plotting function called **barplot**. 

```r
 barplot(scottish_towns$Population[1:10], names.arg=row.names(scottish_towns)[1:10], las = 2)
 ```

A. Using the help pages for barplot, learn about the option `horiz`. Hack the line of code above to set horiz to "TRUE". What is the new line of code?

B. What does the option `horiz` control?

C. Change the values for the option `las` to `0,1, 2, or 3`. Explain what changes in your plot as a result.

D. What options would add a main title to your plot that says "Ten Most Populous Scottish Towns"? Write the full expression.

E. Save your plot as a .pdf and turn it in.




-----

## QUESTION 5 (5 pts)

Let's practice importing some data. Here is a real supplementary dataset that my lab recently published for a manuscript. 

[Table_S4_Signal_to_noise_quantification_table.csv](https://drive.google.com/file/d/1bJy_ELikr5F264xRe-ASNI4iXBVYuxIP/view?usp=sharing)

  * Download the file to your computer.
  * Ensure your working directory is set properly
  * Import the dataset into R using `read.csv()` and save it as an object called `signal_to_noise`
  * Note - .csv stands for "comma separated value"
  * What is the output of `str(signal_to_noise)`? Copy and paste it here as the answer to this question.

-----

## QUESTION 5 (5 pts)

A. Go to the [R Graph Gallery](https://www.r-graph-gallery.com/index.html). Choose a category of R plots that you would like to learn more about. Using the R Graph Gallery pages, wikipedia, and other internet resources, learn how these plots generate their data. In 2 - 3 sentences, describe the plots in the category you have chosen. Be sure to include what type of data work best in this plot, how the plot is generated (what is on which axis, how measurements are calculated, etc), and what the benefits are of this type of data visualization (for the reader/viewer). 

B. Next, read through some of the R code in the Gallery associated with each plot. You may not understand the R code itself, but just try. You will probably better understand the commenting codes. Answer the following: What functions are being used in this code? Are they part of the base R package or an add on package? If an add-on, what is the suggested add on package? You may need to google search some of this information.

