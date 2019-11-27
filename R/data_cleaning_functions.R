# simulate some data
n_sites <- 200
our_data <- data.frame(
  temperature_c <- rnorm(n_sites, mean =25, sd=3),
  precipitation_mm <- rnorm(n_sites, mean = 300, sd = 25),
  possums_num <- rpois(n_sites, lambda=1)
)

# standardise variables
our_data$temperature_std <- 
  (our_data$temperature_c - mean(our_data$temperature_c))/
  sd(our_data$temperature_c)    #do this for all variables --> error prone 

# What is this snippet of code doing?
# convert the variable into general terms = BODY OF OUR FUNCTION

# (x-mean(x))/sd(x) 

# give it a name
rescale <- function(x) {
  (x-mean(x))/sd(x) 
}

# how you might find functions: including a return function 
# (the other one is suggested good practice)

rescale <- function(x) {
  x_std <- (x-mean(x))/sd(x) 
  return(x_std)
}

# use our new function
rescale(our_data$precipitation_mm)
rescale(our_data$temperature_c)

# using functions from another package
# base::scale()


# how to comment around functions
# - name
# - what's the function doing
# - what is the input variable
# - what and where does it return
