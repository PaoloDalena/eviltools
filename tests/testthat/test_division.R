test_that("division is not allowed",{
  expect_error(7/1, "division is not allowed")
  expect_error("a"/1, "division is not allowed")
  expect_error(sample(1:199,3)/8, "division is not allowed")
          })
