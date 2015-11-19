---
title       : Pitch My App
subtitle    : A coursera course project
author      : Tracy Shen
job         : Analyst
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Why we need apps to present research findings?

Research findings often times refer to plots, tables and summaries. They are usually scattered all over on a paper. Using apps have the following advantages to deliver a better viewing experience.

1. Apps can put all the research results in one place for easier reference. 

2. Apps can display the research findings in a more interactive way.

3. Interacting with readers via app makes the research findings more memorable.

--- .class #id 

## What this app can do?

1. This app shows you some of the most frequently used statistical outputs in one place. This way, readers don't need to cross reference when they read a report. 

2. This app allows users to select different datasets to compare results, which normally can't be done in one spot.

3. This app allows users to select their preferred number of observations to display a subset of a full dataset, which is nice to have and saves memory for the system. 

--- .class #id

## More features will be added in the future

In order to develop the app into a more complex presenting tool, we can consider below:

1. load a larger real-world data set from local drive

2. we can add more function buttons on ui.R.e.g, using checkbox to allow outlier and using sliderbar to semi-auto display the observation number. 

3. we can also plot fancier and more complex graphs to compare the different datasets.

--- .class #id


## How this app is made

Below is some code to render the plot when dataset "cars" is selected and the number of observations is 20:


```r
library(ggplot2)
    par(mai=c(4,2,1,1))
    plot(cars[,ncol(cars)]~cars[,1],xlab="First column variable",ylab="Last column variable")
```

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png) 







