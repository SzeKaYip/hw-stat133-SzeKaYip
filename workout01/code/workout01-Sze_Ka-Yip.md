workout01-Sze Ka-Yip.Rmd
================
Sze Ka Yip
3/9/2019

<img src="gsw-shot-charts.png" width="80%" style="display: block; margin: auto;" />

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
dat <- read.csv(file='../data/shots-data.csv')
pt2t <- as.data.frame(table(dat$name, dat$shot_type=="2PT Field Goal"))
names(pt2t)[1] <-"name"
names(pt2t)[3] <-"total"
pt2t <- pt2t[pt2t[2] == TRUE, c(1,3)]
a<- ((dat$shot_made_flag=="shot_yes")  & (dat$shot_type=="2PT Field Goal") )
pt2m <- as.data.frame(table(dat$name, a))
pt2m <- pt2m[pt2m[2] == TRUE, 3]
table_pt2 <- data.frame(
  pt2t,
  made=pt2m)
table_pt2$perc_made <- table_pt2$made/table_pt2$total
table_pt2 <- arrange(table_pt2, desc(perc_made))
table_pt2_effective_shooting_by_player <- table_pt2
table_pt2_effective_shooting_by_player 
```

    ##             name total made perc_made
    ## 1 Andre Iguodala   210  134 0.6380952
    ## 2   Kevin Durant   643  390 0.6065319
    ## 3  Stephen Curry   563  304 0.5399645
    ## 4  Klay Thompson   640  329 0.5140625
    ## 5 Graymond Green   346  171 0.4942197

``` r
pt3t <- as.data.frame(table(dat$name, dat$shot_type=="3PT Field Goal"))
names(pt3t)[1] <-"name"
names(pt3t)[3] <-"total"
pt3t <- pt3t[pt3t[2] == TRUE, c(1,3)]
a<- ((dat$shot_made_flag=="shot_yes")  & (dat$shot_type=="3PT Field Goal") )
pt3m <- as.data.frame(table(dat$name, a))
pt3m <- pt3m[pt3m[2] == TRUE, 3]
table_pt3 <- data.frame(
  pt3t,
  made=pt3m)
table_pt3$perc_made <- table_pt3$made/table_pt3$total
table_pt3 <- arrange(table_pt3, desc(perc_made))
table_pt3_effective_shooting_by_player <- table_pt3
table_pt3_effective_shooting_by_player
```

    ##             name total made perc_made
    ## 1  Klay Thompson   580  246 0.4241379
    ## 2  Stephen Curry   687  280 0.4075691
    ## 3   Kevin Durant   272  105 0.3860294
    ## 4 Andre Iguodala   161   58 0.3602484
    ## 5 Graymond Green   232   74 0.3189655

``` r
tab<- (dat$shot_type=="3PT Field Goal") |  (dat$shot_type=="2PT Field Goal")
tab <-as.data.frame(table(dat$name, tab))
names(tab)[1] <-"name"
names(tab)[3] <-"total"
tab <-tab[ , c(1,3)]



made <- (dat$shot_made_flag=="shot_yes") & ((dat$shot_type=="3PT Field Goal") |  (dat$shot_type=="2PT Field Goal"))
made <-data.frame(table(dat$name, made))
made<-made[made[2]==TRUE, 3]


table23<-data.frame(
      tab,
      made)

table23$perc_made <- table23$made/ table23$total
table23 <- arrange(table23, desc(perc_made))
table23
```

    ##             name total made perc_made
    ## 1   Kevin Durant   915  495 0.5409836
    ## 2 Andre Iguodala   371  192 0.5175202
    ## 3  Klay Thompson  1220  575 0.4713115
    ## 4  Stephen Curry  1250  584 0.4672000
    ## 5 Graymond Green   578  245 0.4238754
