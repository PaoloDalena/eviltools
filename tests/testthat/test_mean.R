context("Testing mean ")
test_that("mean gives an error if type is not 1 to 5", {
  expect_error(mean(1:5, type = 7), "joke")
  expect_error(mean(1:5, type = "a"))
  expect_error(mean(1:5, type = F))
  expect_error(mean(1:5, type = NULL), "argument")
})
test_that("mean gives a message when type == 1", {
  expect_message(mean(1:5, type = 1), "chosen")
})
test_that("mean gives the actual mean when type == 1", {
  expect_equal(mean(1:5, type = 1), base::mean(1:5))
  expect_equal(mean(1234:4321, type = 1), base::mean(1234:4321))
  expect_equal(mean(NA, type = 1), base::mean(NA))
})
test_that("mean works as I want when type == 2", {
  expect_error(mean(1:5, type = 2))
})
test_that("mean gives a message when type == 3", {
  expect_message(mean(1:5, type = 3), "Python")
})
test_that("mean gives a message when type == 4", {
  expect_message(mean(1:5, type = 4), "Music")
})
test_that("mean gives a message when type == 5", {
  expect_message(mean(1:5, type = 5), "want")
})
