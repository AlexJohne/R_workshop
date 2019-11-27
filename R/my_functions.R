# functions for ESA_function_suggestions.R


# standardisation for all predictors
# x: input variables = precipitation, temp, cover, flowering

rescale <- function(x, na.rm = TRUE) {
  (x-mean(x, na.rm = na.rm)/sd(x, na.rm = na.rm) 
}
# when using it: rescale(c(5, 2, 1, NA, 3, 4), na.rm = TRUE)


# model as function??
# x = input variable species 
# variable name should be a strong (character vector)

glm_function <- function(variable_name, dataset, family = binomial()) {
  response_variable <- data_set[[variable_name]]
  model <- glm(
    response_variable ~ temperature_std + 
        precipitation_std + 
        tree_cover_std + 
        flowering_std,
      data = dataset,
      family = family)
  model
}
# not necessary to make it into a function 
# -> often it would be better to be able to see all the variables 
# also, the glm function is already a well established function 

# how could one make the plot specifications shorter?
# example plot
plot(plot_values ~ temp_actual,
     type = "l",
     bty = "l",
     las = 1,
     lwd = 2.5,
     ylim = c(0, 1),
     xlab = "Temperature (C)",
     ylab = "Probabiliy of occurrence")

# creating a function for plotting 
plot_my_model <- function(dependent_var, output_var, xlabel, ylabel) {
  plot(output_var ~ dependent_var,
       type = "l",
       bty = "l",
       las = 1,
       lwd = 2.5,
       ylim = c(0, 1),
       xlab = xlabel,
       ylab = ylabel)
}
# using 3 dots in the function description allows you to change the arguments 

# calling the function
plot_my_model(precip_actual, plot_values, "precipitation (mm)", "probability of occurrence")


# maybe this one works for git??
