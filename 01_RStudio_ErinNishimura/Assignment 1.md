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

Heather has written some code to create a data frame with columns for "languages", "greetings", and "partings". Each line of her code except the last line has a bug, or error. Can you de-bug Heather's code? Submit the re-written code.


```
# Heather's code:
languages <- ("English", "Spanish", "Japanese", "French")
_greetings_ <- c("hello", "hola", "ohio", "bonjour")
partings < c("bye", "adios", "mata", "salut")
dictionary <- DataFrame(languages, _greetings_, partings)
dimens(dictionary)
dictionary

```

*Hint: The final line of code should give you the following output:*

```
  languages greetings partings
1   English     hello      bye
2   Spanish      hola    adios
3  Japanese      ohio     mata
4    French   bonjour    salut
```

-----

## QUESTION 4 (5 pts) 
:white_check_mark: Students will become familiar with a few basic R objects - data frames

:white_check_mark: Students will execute a few basic R functions

Write a set of expressions that would allow you to construct the following data frame called "CSU_stats" below. 

```
> CSU_stats
           Category Population
1        Undergrads      23943
2             Grads       4503
3            Online       3538
4 Faculty and Staff       7491
5              Town     164000

> str(CSU_stats)
'data.frame':	5 obs. of  2 variables:
 $ Category  : chr  "Undergrads" "Grads" "Online" "Faculty and Staff" ...
 $ Population: num  23943 4503 3538 7491 164000
```

Turn in your code including lines with comments. 

-----


## QUESTION 5 (5 pts)

Let's practice importing some data. Here is a real supplementary dataset that my lab recently published for a manuscript. 

[Table_S4_Signal_to_noise_quantification_table.csv](https://drive.google.com/file/d/1bJy_ELikr5F264xRe-ASNI4iXBVYuxIP/view?usp=sharing)

  * Download the file to your computer.
  * Ensure your working directory is set properly
  * Import the dataset into R using `read.csv()` and save it as an object called `signal_to_noise`
  * Note - .csv stands for "comma separated value"
  * What is the output of `str(signal_to_noise)`? **Copy and paste it here as the answer to this question.**
  * If you were NOT able to get this to work, please explain what you tried, what is going wrong, and any output or error messages you are getting.

-----

## BONUS QUESTION - 0 PTS - OPTIONAL

:white_check_mark: Students will become familiar with a few basic R objects - data frames

:white_check_mark: Students will execute a few basic R functions

:white_check_mark: Students will gain experience in basic plotting

There is a base plotting function called  **barplot**. 

Use help(barplot) to explore the instructions for barplot

```r
help(barplot)
 ```
 
Here is a little script to make a nice barplot of the US state and territory vaccination data

```r

# Make a new data frame that is sorted by the number of people fully vaccinated
ordered_Data_Frame <- VaxByState[order(VaxByState$people_fully_vaccinated_per_hundred,decreasing = FALSE),]

# Change the plotting region so there is a wide left hand margin
par(mar = c(5, 15, 4, 2))

# Make a barplot
barplot(ordered_Data_Frame$people_fully_vaccinated_per_hundred, 
        names.arg=row.names(ordered_Data_Frame),
        horiz = TRUE, 
        las=2,
        col = "cadetblue")
```

A. Using the help pages for barplot, learn about the option `horiz`. What does it do? Hack the above code and make horiz = FALSE. What happens?

D. Change the values for the option `las` to `0,1,or 3`. Explain what changes in your plot as a result.

D. What options would add an axis label in one direction that says "Share of people fully vaccinated" and in the other that says "State or Territory"? How would you add a main title?

E. Try saving your plot as a .pdf




-----
-----

## Bonus content

:white_check_mark: Students are encouraged to cultivate their own personal curiosity in R, data science, and programming

  1. Go to the [R Graph Gallery](https://www.r-graph-gallery.com/index.html). Choose a category of R plots that you would like to learn more about. Using the R Graph Gallery pages, wikipedia, and other internet resources, learn how these plots generate their data. Think about which plots you might use in your own research. 
  
  Next, read through some of the R code in the Gallery associated with each plot. Even if you don't understand the R code, just give it a try. Notice the difference between reading the comments versus the code.

  3. Some of the data for this course, I downloaded from [Our World In Data](https://ourworldindata.org/). Explore that resource. Click on **Articles By Topic** to activate a pull down menu to explore. You can download any dataset you want. 

For example, if you go to [Internet access per country over time](https://ourworldindata.org/internet#internet-access), you can see different plots like so...

<img src="webContent/Screen Shot 2023-01-23 at 6.00.02 AM.png" width="600">


You can select the **Download** menu tab at the bottom, and download the full dataset as a .csv file. Try it! Explore the data you've obtained!

<img src="webContent/Screen Shot 2023-01-23 at 6.00.16 AM.png" width="600">

  3. Think of other places where you encounter text-based data arranged in tables? Start to notice these resources. They are all around us (wikipedia, supplemental materials). Start to strategize how you could download and access the data. 


