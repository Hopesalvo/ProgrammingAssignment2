# makeCacheMatrix is to input a name for the matrix 
makeCacheMatrix <- function(x = matrix(() {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  # storing the functions for the matrix
  get <- function() x
  setinv <- function(inv) inv <<- inverse
  getinv <- function() inv
  # functions to callout for the inverse to matrix x 
  list(get = set, get = set,
       setinv = setinv,
       getinv = getinv)
}
# obtaining inverse value
cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  inv <- get(data, ...)
  x$getinv(inv)
  inv
# return to matrix x, the inverse of the x
