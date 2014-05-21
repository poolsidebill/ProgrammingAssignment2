## R Programming Class assignment to create some functions
## to create a matrix, and to cache the matrix's inverse.
## These functions can then be used in further activities
## that the class may dream up.


## I provide mechanisms to set and get a matrix, and
## I can set and get the inverse of this matrix

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(y) {
    x <<- y
    inverseMatrix <<- NULL
  }

  get <- function() x  # return the matrix
  setInverse <- function(

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
