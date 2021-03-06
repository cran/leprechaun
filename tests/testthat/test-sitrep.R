source("../fns.R")

test_that("sitrep", {
  wd <- getwd()
  pkg <- create_tmp_package()
  setwd(pkg)
  on.exit({
    setwd(wd)
    delete_tmp_package(pkg)
  })

  expect_message(sitrep())
  scaffold()
  expect_message(sitrep())
  expect_false(sitrep())
})
