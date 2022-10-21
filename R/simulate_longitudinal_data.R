#' Simulate Longitudinal Data
#'
#' This function generates a data frame according to a simple linear
#' model with subject-specific
#' [random effects](https://en.wikipedia.org/wiki/Random_effects_model).
#' The random slope and intercept are allowed to be correlated.
#'
#'
#' @param slope numeric, population average slope
#' @param intercept numeric, population average intercept
#' @param random_effects_vcov 2-by-2 numeric matrix of the variance-covariance
#'   matrix of the individual level random effects corresponds to
#'   c(slope, intercept)
#' @param residual_sd numeric, residual error standard deviation
#' @param observation_times numeric vector, observation time points
#' @param n_individuals integer, number of individuals to generate
#' @param seed random seed
#'
#' @return a data frame with columns subject_id (character), t (numeric) the
#'   observation time point relative to recruitment, value (numeric) the
#'   observed outcome of the subject at time point t according to the model.
#'
#' @export
simulate_longitudinal_data <- function(
  slope, intercept, random_effects_vcov, residual_sd,
  observation_times, n_individuals, seed = NULL)
{
  if (!is.null(seed)) { # set seed if specified
    set.seed(seed)
  }
  warning("TODO: implement ;)")
}
