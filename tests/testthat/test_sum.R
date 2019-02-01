test_that("sum gives a warning when n is not logical",{
  expect_warning(sum( n = "" ))
})
test_that("sum gives a message when n = F",{
  expect_message(sum(n = F),"idea")
})
test_that("sum gives a warning when n = T",{
  expect_warning(sum(n = T), "rainbow")
})
