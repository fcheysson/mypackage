test_that("matrix multiplication works", {
  A = matrix(1:4, 2, 2)
  B = matrix(4:1, 2, 2)
  C = matrix(c(13, 20, 5, 8), 2, 2, byrow = FALSE)
  expect_equal(matrix_mult(A, B), C)
})

test_that("is a matrix", {
  A = matrix(1:4, 2, 2)
  B = matrix(4:1, 2, 2)
  expect_that(matrix_mult(A, B), is_a("matrix"))
})

test_that("cpp matrix multiplication works", {
  A = matrix(1:4, 2, 2)
  B = matrix(4:1, 2, 2)
  C = matrix(c(13, 20, 5, 8), 2, 2, byrow = FALSE)
  expect_equal(matrix_mult_cpp(A, B), C)
})

test_that("is a matrix", {
  A = matrix(1:4, 2, 2)
  B = matrix(4:1, 2, 2)
  expect_that(matrix_mult_cpp(A, B), is_a("matrix"))
})
