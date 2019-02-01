
<!-- README.md is generated from README.Rmd. Please edit that file -->
eviltools: an R package for driving someone crazy. <img src="man/figures/logo_edited.png" align="right" width="200" />
----------------------------------------------------------------------------------------------------------------------

Overview
--------

A very dangerous package that overwrites base functions like '/' or 'sum()' in order to drive the user crazy. It can destroy your mental health and (maybe) your work. **DON'T USE IT!**

Installation
------------

You can install the development version from [GitHub](https://github.com/) with the following procedure:

``` r
# install.packages("devtools")
devtools::install_github("PaoloDalena/eviltools")
```

Example
-------

What is special about using `eviltools` instead of just `base` functions?

``` r
library( eviltools )
#> You will regret doing this!
#> 
#> Attaching package: 'eviltools'
#> The following objects are masked from 'package:base':
#> 
#>     /, mean, sum
x <- 1:21
mean( x , type = 3 )
#> It can be wrong, but I can't do better. Ask Python to do it for you if I'm not enough!
#> [1] 67679
```

You can also give a love message, for example:

``` r
x <- sample(100, 1)
y <- sample(100, 1)
x / y
#> Warning in x/y: As long as I'm the boss here, division is not allowed! We
#> have to stay together!
#> [1] "21 and 99 love each other. Try doing the same."
```

Feature request
---------------

If you need some more features, please open an issue on [github](https://github.com/PaoloDalena/eviltools/issues).

Bug reports
-----------

If you encounter a bug, please file a [reprex](https://github.com/tidyverse/reprex) (minimal reproducible example) on [github](https://github.com/PaoloDalena/eviltools/issues).
