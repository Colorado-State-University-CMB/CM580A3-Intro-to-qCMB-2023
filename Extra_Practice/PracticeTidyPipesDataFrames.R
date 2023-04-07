## ----setup, include=FALSE-----------------------------------------------------------------------
## knitr::opts_chunk$set(echo = TRUE, eval=FALSE)
## library(tidyverse)


## ----fib-mean-diff, eval=TRUE-------------------------------------------------------------------
c(1,2,3,8,11) %>% diff() %>% mean()

# The order of operations is left-to-right, whereas the conventional form of the expression is nested:

mean(diff(c(1,2,3,8,11)))



## ---- eval=TRUE---------------------------------------------------------------------------------
# step 1
diffs = diff(c(1,2,3,8,11))
diffs

# step 2
mean_of_diffs = mean(diffs)
mean_of_diffs


## ----practice-pipe-sum--------------------------------------------------------------------------
## # write the pipe version of the following command:
## sum(1,2) # 3
## 
## # pipe version: replace each '___' to make a valid statement.
## #___ %>% ___(___)
## 
## 
## # To try your answer, delete the comment character in front of your pipe, and press the play button to execute this chunk. It should output '[1] 3' two times, once for each form of the statement.


## ----practice-pipe-prod-------------------------------------------------------------------------
## # pipe version: replace each '___' to make a valid statement.
## 5 %>% prod(10) # 50
## 
## # write the standard version of the previous command:
## #___(___,___)
## 
## 
## #  To try your answer, delete the comment character in front of your new command, and press the play button to execute this chunk. It should output '[1] 50' two times, once for each form of the statement.


## ----practice-pipe-vector-variables-------------------------------------------------------------
## x = c(1,1,2,3,5,8)
## 
## # Take the mean of x: replace each '___' to make a valid statement.
## #___ %>% ___(___)
## 
## # write the non-pipe version of the previous command:
## #___(___)
## 
## 
## # Take the standard deviation of x using the sd() function: replace each '___' to make a valid statement.
## #___(___)
## 
## # Write the pipe version of the previous command:
## #___ %>% ___()
## 
## 
## # Delete the comment character in front of your new commands and press the play button to execute this whole chunk.


## ----from-scratch-------------------------------------------------------------------------------
## # make some data as done above
## #x = ___
## 
## # write the pipe form of the summary functions
## 


## ----variable-assignment------------------------------------------------------------------------
## 
## x <- c(1,2,3,5,7,11,13,17) # some prime numbers
## x
## ##### data %>% function() -> output
## 
## x %>% diff() -> diff_x
## diff_x
## 
## ##### data %>% step1() %>% step2() -> output
## 
## x %>% diff() %>% prod() -> product_of_prime_diffs
## product_of_prime_diffs


## -----------------------------------------------------------------------------------------------
## NA


## -----------------------------------------------------------------------------------------------
## NA


## -----------------------------------------------------------------------------------------------
## NA


## -----------------------------------------------------------------------------------------------
## NA


## ----prostate-data------------------------------------------------------------------------------
## prostate = read.csv(url('https://www.openintro.org/book/statdata/exercise_prostate_cancer.csv'))
## 
## prostate
## 
## ggplot(prostate, aes(x=growth, fill=serum)) + geom_boxplot() + facet_wrap(~cell)


## ----summarize-prostate-columns-----------------------------------------------------------------
## # group and summarize by categorical columns
## 
## prostate_summary <- prostate %>%
##   group_by(cell,serum) %>%
##   summarize(mean_growth=mean(growth), median_growth=median(growth))
## 
## prostate_summary
## 


## ----pivot-prostate-wider-----------------------------------------------------------------------
## prostate_summary %>%
##   spread(mean_growth)

