#Calculate the maximaL value of z = 5x + 3y for the following constraints.
#x + 2y ??? 14
#3x - y ??? 0
#x - y ??? 2
# Import lpSolve package
library(lpSolve)

# Set coefficients of the objective function
f.obj <- c(5, 3)

# Set matrix corresponding to coefficients of constraints by rows
# Do not consider the non-negative constraint; it is automatically assumed
f.con <- matrix(c(1, 2,3,-1,1,-1), nrow = 3, byrow = TRUE)

# Set unequality signs
f.dir <- c("<=",">=","<=")

# Set right hand side coefficients
f.rhs <- c(14,0,2)

# Final value (z)
optimum <- lp(direction="max", f.obj, f.con, f.dir, f.rhs)
optimum$objval

# Variables final values
best_sol <-optimum$solution
best_sol
