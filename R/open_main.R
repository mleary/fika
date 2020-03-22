#' @title Open the run script to execute code
#'
#' @description Open up the main script to execute the package intent (requires using RStudio)
#'
#' @return nothing.  Open the main script
#' @export

open_main <- function(){
  rstudioapi::navigateToFile("./run_script/main.R")
}
