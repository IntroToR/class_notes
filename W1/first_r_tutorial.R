#----------------------------------------------
#   Scripts used in the first week of CPSC441
#   Samuel Fernandes

#   Last update - Aug 27, 2020
#----------------------------------------------

#------- basic arithmetic operations -------
#+ addition
# - subtraction
# * multiplication
# / division
# ^ exponent (** also works)
# %% modulo (remainder after division)
# %/% integer division
#-----------------------------------------
1 + 1
2 - 1
5 * 2
10 / 2
3 ^ 4
10 %% 3
10 %/% 3
(1+3)^2/8*10-6
16^(1/2)
16^0.5
27^(1/3)

#----- numeric values --------
2.3
10

#---- character values ---------
"a"
"A"
"CPSC"
"2.3"
"10"

#---- logic values (aka bolean) ----
TRUE # or simply T or 1
FALSE # or simply F or 0
#---- object and vectors -----------
#assignment:  "<-" or "=" (not recommended)
#object names can't start with numbers
#For instance, 1st_object <- 10 will result in error
#-------------------------------------
first_object <- 10
second_object <- "test"
third_object <- c(10, 3, 4, 5)
first_object <- 20
forth_object <- first_object + first_object

# --- operators for logical tests ----
# == : equals
# != : does not equal
# > : greater than
# < : less than
# >= : greater than or equal to
# <= : less than or equal to
# %in% : value is found within a vector
#--------------------------------------
forth_object == third_object
first_object == second_object
first_object != second_object
10 > 30
! 10 %in% forth_object
b <- 45
B <- 55
b == B

#-------------------------------------
# Some words are reserved, you can't use them.
# TRUE <- 10 will not work
# true <- 10 does work!
# see ?reserved for other examples
#-------------------------------------
true <- FALSE
false <- TRUE

#----   basic R functions  -----------
sum(third_object)
s <- sum(third_object)
l <- length(third_object)
# multiple ways, same answer
s/l
mean(third_object)
mean(1,2,3,4,5) # not recommended
var(1,2,3,4,5)
mean(c(1,2,3,4,5))
# check each function's arguments 
var(third_object)
sqrt(third_object)
sqrt(var(third_object))==sd(third_object)
round(1:6/3,0)
x=c(-Inf,0,1,Inf)
exp(x)
seq(from = 1, to = 5)
1:5
#----   Variable Types  -----------
class(sqrt(3))
class("A")
class(T)
class(3+4i)
class(1L)

is.
is.numeric(2)
is.numeric("2")
is.character("A")
is.logical(F)

as.
as.numeric("2")
as.character(2)
# if 0: FALSE, otherwise TRUE
as.logical(0)

ls()
rm(list=ls(pattern="ea"))
rm(list=ls()) #Use with extreme caution! It removes EVERYTHING!
