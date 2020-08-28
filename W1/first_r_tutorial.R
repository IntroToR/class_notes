#----------------------------------------------
#   Scripts used in the first week of CPSC441
#   Samuel Fernandes
#   Aug 28, 2020
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
1 + 1 # 2
2 - 1
5 * 2
10 / 2
3 ^ 4
10 %% 3
10 %/% 3

#----- numeric values --------
2
10
4

#---- character values ---------
"a"
"A"
"CPSC"

#---- logic values (aka bolean) ----
TRUE
FALSE

#---- object and vectors -----------
first_object <- 10
second_object <- "test"

third_object <- c(10, 3, 4, 5)

first_object <- 20
first_object + first_object

# --- operators for logic tests ----
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


  
