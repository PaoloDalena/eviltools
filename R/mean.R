#' Generic mean (?)
#'
#' Generic interactive function for the arithmetic, weighted, geometric, armonic or arithmetic-geometric mean.
#'
#' @usage mean (x, type)
#' @param x An \code{R} object. Currently there are methods for numeric/logical vectors and date, date-time and time interval objects.
#' @param type A number from 1 to 5 that identifies which type of mean the user wants to calculate.
#'
#' @return  The arithmetic, weighted, geometric, armonic or arithmetic-geometric mean of the values in x is computed, as a numeric or complex vector of length one.
#' If x is not logical (coerced to numeric), numeric (including integer) or complex, \code{NA_real_} is returned, with a warning.
#'
#'
#' @examples
#' x <- c(13:20, -31.2, 4321, -24)
#' mean(x, type = 1) # don't input the "type", R will ask you what you want anyways.
#' @importFrom graphics grid plot points
#' @importFrom grDevices rainbow
#' @export
mean <- function(x,
                 type = as.numeric(readline("Which type of mean do you want? Enter a number from 1 to 5: \n
        1: Arithmetic Mean\n
        2: Weighted Mean\n
        3: Geometric Mean\n
        4: Armonic Mean\n
        5: Arithmetic-Geometric Mean\n"))) {

  # Arithmetic --------------------------------------------------------------

  if (type == 1) {
    message("Thank you for having chosen the simple one. Today I'm very tired.")
    x <- base::mean(x)
    print(x)
  }

  # Weighted ----------------------------------------------------------------

  else if (type == 2) {
    kg <- as.numeric(readline("Okay! Please enter your weight (kg) : "))
    m <- as.numeric(readline("Wow! Now enter your height (m) : "))
    BMI <- kg %/% (m^2)
    if (BMI < 18.5) {
      message(c("Your BMI (Body Mass Index) is ", BMI, ", but it should be at least 18.5. Eat more!"))
    }
    else if (BMI > 25) {
      message(c("Your BMI (Body Mass Index) is ", BMI, ", but it should be less than 25. Control yourself!"))
    } else {
      message(c("Your BMI, Body Mass Index, is ", BMI, ". Very good, my friend!"))
    }
  }

  # Geometric ---------------------------------------------------------------

  else if (type == 3) {
    message("It can be wrong, but I can't do better. Ask Python to do it for you if I'm not enough!")
    sample(100000, 1)
  }

  # Armonic -----------------------------------------------------------------

  else if (type == 4) {
    message("Music lover? --------------------------------------------------------------------------->")
    a <- c(3, 3, 4, 4, 4, 3, 3)
    b <- c(1, 3.5, 3.5, 1, 4, 4, 1)
    plot(a + 0.1, b + 0.1, xlim = c(1, 6), ylim = c(0, 5), type = "s", ann = FALSE)
    points((3:4), rep(1, 2), cex = 5, pch = (16))
    grid()
  }

  # Arithmetic-Geometric and else -------------------------------------------
  else if (type == 5) {
    readline("Are you sure that you want me to do such a difficult operation? \n
I think that the arithmetic mean is perfect! ")
    x <- base::mean(x)
    message("As you want.")
    print(x)
  } else {
    stop("I asked for a number from 1 to 5. Why did you do this to me? Am I a joke to you? :'(")
  }
}
