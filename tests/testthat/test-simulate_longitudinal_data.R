test_that("can generate longitudinal data", {
  tbl <- simulate_longitudinal_data(
    slope = -1, intercept = 10,
    random_effects_vcov = matrix(c(
      .25^2, .1,
      .1, 2^2
    ), byrow = TRUE, nrow = 2),
    residual_sd = 0.5,
    observation_times = c(2, 6, 12, 36, 52),
    n_individuals = 10L,
    seed = 42L
  )
  # check for correct column names, for instance
  # expect_true(all(names(tbl) == c("subject_id", "t", "value")))
  # check correct number of rows
  # expect_true(nrow(tbl) == 50)
})

test_that("seed is respected", {
  tbl1 <- simulate_longitudinal_data(
    slope = -1, intercept = 10,
    random_effects_vcov = matrix(c(
      .25^2, .1,
      .1, 2^2
    ), byrow = TRUE, nrow = 2),
    residual_sd = 0.5,
    observation_times = c(2, 6, 12, 36, 52),
    n_individuals = 10L,
    seed = 42L
  )
  tbl1 <- simulate_longitudinal_data(
    slope = -1, intercept = 10,
    random_effects_vcov = matrix(c(
      .25^2, .1,
      .1, 2^2
    ), byrow = TRUE, nrow = 2),
    residual_sd = 0.5,
    observation_times = c(2, 6, 12, 36, 52),
    n_individuals = 10L,
    seed = 42L
  )
  # should return the exact same data
  #expect_true(all(tbl1 == tbl2))
})

test_that("test that marginal parameters can be recovered from data", {
  # TODO: write a test that checks whether the observed population average
  # intercept is close to the specified one
})
