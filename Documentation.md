Know about your B.M.I.!!!
========================================================
author: Snehit Chadaram
date: February 11, 2016

Objective
========================================================

Build an application to demonstrate :
 - use of various widgets of 'shiny' tool
 - understanding of the process of publishing application in shiny
 - interface with R using embeded R code

Project Details
========================================================
B.M.I refers to Body Mass Index which plays a vital role in problems caused to the health condition of a person. 
<br/>A simple application has been built and published to generate B.M.I. depending on the input values which includes the height and weight of a person.given by a person.

Understading
========================================================
Depending upon the value you achieved, you can belong to the below category.
BMI Categories: 
- Underweight = <18.5
- Normal weight = 18.5-25.0 
- Overweight = 25.0-30.0 
- Obesity = BMI of 30 or greater

Calculation
========================================================
The BMI calculation is very simple. It is just the ratio of your weight(wt in kg's) and squared height(in m's) [or 1000*squared height(in cm's)].
For example, if a persons height and weight are entered as below, then the BMI of that person is given as:

```r
ht<- 178
wt<- 56
bmi<- wt*10000/ht^2
bmi
```

```
[1] 17.67454
```
Though a persons health depends on many other factors, this plays a major role in doing daily activities in one's life.
<br/> Stay healthy
<br/>
<br/> Click on [ui.R](https://github.com/SnehitChadaram/datasciencecoursera/blob/master/ui.R) and [server.R](https://github.com/SnehitChadaram/datasciencecoursera/blob/master/server.R) to access the codes.
