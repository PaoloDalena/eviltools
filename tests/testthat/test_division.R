context("Testing division ")
test_that("division is not allowed", {
  expect_warning(7 / 1, "division is not allowed")
  expect_warning("a" / 1, "division is not allowed")
  expect_warning(sample(1:199, 3) / 8, "division is not allowed")
})
test_that("division gives a message of love and a warning", {
  expect_equal("a dog" / "a bone", "a dog and a bone love each other. Try doing the same.")
  expect_warning(2 / 8, "together")
})
