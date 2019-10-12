DDP_Week4_CP_Reproducible_Pitch
========================================================
author: Thimmaraju Rudrappa
date: 10.12.2019
autosize: true
output:
  slidy_presentation: default
  html_document:
    number_sections: yes
    toc: yes
  ioslides_presentation: default
mode: selfcontained
job: Reproducible Pitch Presentation
subtitle: Variables and MPG
highlighter: highlight.js
widgets: bootstrap


========================================================

## Reproducible Pitch

### See Regression Models Course Proj  

- URL: *https://github.com/thimmaru/DDP_Week4_Proj*
- Find here all the data that have been use for this presentation and also for the first part of the data Science Project: "First, you will create a Shiny application and deploy it on Rstudio's servers.Second, you will use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about your application."

### Find all details here
URL: *https://www.coursera.org/learn/data-products/peer/tMYrn/course-project-shiny-application-and-reproducible-pitch*


========================================================
## mtcars Dataset

### Trend analysis of Motor Car Road Tests

> The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).
### Source
> Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.


```r
library(datasets)
head(mtcars, 3)
```

```
               mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4     21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710    22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
```

========================================================
![plot of chunk unnamed-chunk-2](DDP_Week4_CP_Reproducible_Pitch-figure/unnamed-chunk-2-1.png)

========================================================
## Analysis - Main Code


```

Call:
lm(formula = mpg ~ ., data = mtcars)

Residuals:
    Min      1Q  Median      3Q     Max 
-3.4506 -1.6044 -0.1196  1.2193  4.6271 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)  
(Intercept) 12.30337   18.71788   0.657   0.5181  
cyl         -0.11144    1.04502  -0.107   0.9161  
disp         0.01334    0.01786   0.747   0.4635  
hp          -0.02148    0.02177  -0.987   0.3350  
drat         0.78711    1.63537   0.481   0.6353  
wt          -3.71530    1.89441  -1.961   0.0633 .
qsec         0.82104    0.73084   1.123   0.2739  
vs           0.31776    2.10451   0.151   0.8814  
am           2.52023    2.05665   1.225   0.2340  
gear         0.65541    1.49326   0.439   0.6652  
carb        -0.19942    0.82875  -0.241   0.8122  
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 2.65 on 21 degrees of freedom
Multiple R-squared:  0.869,	Adjusted R-squared:  0.8066 
F-statistic: 13.93 on 10 and 21 DF,  p-value: 3.793e-07
```

```
               Estimate  Std. Error    t value   Pr(>|t|)
(Intercept) 12.30337416 18.71788443  0.6573058 0.51812440
cyl         -0.11144048  1.04502336 -0.1066392 0.91608738
disp         0.01333524  0.01785750  0.7467585 0.46348865
hp          -0.02148212  0.02176858 -0.9868407 0.33495531
drat         0.78711097  1.63537307  0.4813036 0.63527790
wt          -3.71530393  1.89441430 -1.9611887 0.06325215
qsec         0.82104075  0.73084480  1.1234133 0.27394127
vs           0.31776281  2.10450861  0.1509915 0.88142347
am           2.52022689  2.05665055  1.2254035 0.23398971
gear         0.65541302  1.49325996  0.4389142 0.66520643
carb        -0.19941925  0.82875250 -0.2406258 0.81217871
```
