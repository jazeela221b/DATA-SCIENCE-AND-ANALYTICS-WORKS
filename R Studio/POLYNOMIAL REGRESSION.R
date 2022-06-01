#Creation of Example Data
set.seed(756328)                        # Create example data
x <- rnorm(100)
y <- rnorm(100) + x
#Manually Specify Polynomial Regression Model
lm(y ~ x + I(x^2) + I(x^3) + I(x^4))    # Manually specify fourth order polynomial

#Applying poly() Function to Fit Polynomial Regression Model
lm(y ~ poly(x, 4, raw = TRUE))          # Using poly function