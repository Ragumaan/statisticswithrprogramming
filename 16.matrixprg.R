matrixA <- matrix(data = 1:20, nrow = 5, ncol = 4, byrow = TRUE)
matrixA
matrixB <- matrix(data = c("a", "b", "c", "d", "e", "f", "g", "h", "i"), nrow = 3, ncol = 3, byrow = TRUE,
                  dimnames = list(c("row1", "row2", "row3"), c("col1", "col2", "col3")))
matrixB
matrixC <- matrix(data = c("x", "y", "z", "w"), nrow = 2, ncol = 2, byrow = FALSE,
                  dimnames = list(c("r1", "r2"), c("c1", "c2")))
matrixC