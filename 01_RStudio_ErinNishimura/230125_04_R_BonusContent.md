# Packages

When it comes to graphics, the base R plot is going to start to feel very limiting fairly quickly. For example, it is a real pain to change the numeric formatting of the population from scientific notation to plain ol' 100,000 notation. This gets frustrating. Packages specifically designed to make plotting easy, organized, and beautiful will keep you from going crazy. 

<img src="webContent/Screen Shot 2022-01-26 at 9.31.59 AM.png" width="300">

The most popular package for plotting is **ggplot2**. It is part of a larger suite of R packages called the [**tidyverse**](https://www.tidyverse.org/). You will learn more about tidyverse in later modules of this course.

To check out what is possible in ggplot2, look at this [handy ggplot2 plotting guide](https://www.cedricscherer.com/2019/08/05/a-ggplot2-tutorial-for-beautiful-plotting-in-r/).

❓ **How do we install new packages?**

  * Step 1 - Install the package. This happens once. It will download the package from the internet and save it on your local computer. You can do from within R using the `install.packages()` function OR, you can do it in RStudio through the menu **Tools** and then **Install Packages...*
  * Step 2 - Each time you start RStudio, you'll need to load the package from the library. This makes it available for use. Think of this like checking out a book from the library. It uses the function `library()`.

**INSTALLING TIDYVERSE**

*just an example. You may have already done this. Or you should do it later. It may take some time.*

```r
# Do this once:
install.packages("tidyverse")

# Do this each time you want to use a tidyverse package:
library(tidyverse)
```