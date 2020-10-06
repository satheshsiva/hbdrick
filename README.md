
# October 6: Birth of Rick Day

<!-- badges: start -->
<!-- badges: end -->

The goal of hbdrick is to *fancily* deliver birthday messages to Rick from those who love him. 

## Installation

You can install the released version of hbdrick from [hbdrick](https://github/aseetharam/hbdrick) with:

``` r
devtools::install_github("aseetharam/hbdrick")
```

Load the package. 
``` r
library("hbdrick")
```

## Example
To start off, let's quiz your knowledge about your friends and colleagues!      
`guess_who()` will print a birthday wish from one of people, and give you one chance to guess who may have sent the message.   
``` r
hbdrick::guess_who()
```

Or, run `hbd_joel()` with a `from_who` argument. 
If you are feeling adventurous, run the function with "anyone". 
``` r
hbd_rick(from_who = "anyone")
```
This will randomly sample one birthday message, and make you feel super risk-taking. 

Do you have someone in mind, and wonder if they wished Joel happy birthday?   
Type their name!  
``` r
hbd_rick(who = "Arun")
```
Or, maybe you have multiple people in mind:
``` r
hbd_rick(who = c("Satheesh", "Maryam"))
```

Hey, if you need tons of love, try "everyone"
``` r
hbd_rick(who = "everyone")
```
