
#Writing a pair of functions that cache the inverse of a matrix.

## This function creates a special "matrix" object that can cache its own inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL #Setting the inverse to a null value, yet to be computed
  s <- function(z) {
    x <<- z ##Storing the x matrix outside of the current environment
    inv <<- NULL #everytime there's a change, inv becomes null
  }
  g <- function() {x} ##Returns the x matrix
  setsolve <- function(solve) {inv <<- solve} ##Storing the inverse outside of the current environment
  getsolve <- function() {inv} ##Returns the inv that has been computed
  list(s = s, g = g,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
