#' Sum of Vector Elements (?).
#'
#'\code{sum} should return the sum of all the values present in its arguments, but will it work?
#'
#' @param x A number.
#' @param n An elephant.
#' @param ... Whatever else you want, my friend!
#' @return The sum of \code{x} and \code{y}, or maybe something stupid.
#' @examples
#' sum(24,90:261)
#' sum("ssaym","backwards")
#' @aliases somma
#' @export
sum <- function (x,
                 n = as.logical (if(interactive()) readline("Are you sure? Enter TRUE o FALSE: ") else T)){
  if(n == T){
    readline("Are you extremely sure?\nEnter whatever you want, I will decide for you anyways: ")
    plot(sample(1000,100),type="h",main = "Here you are!",col.main="red",col=rainbow(100))
    warning("You asked me to sum, I know, but look at that rainbow!")
  }
  else if(n == F) {
    message("Good idea!")
  } else {
    warning ("Of course, nothing happened. Just choose between TRUE or FALSE!")
  }
}
