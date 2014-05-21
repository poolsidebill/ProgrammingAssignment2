## R Programming Class assignment to create some functions
## to create a matrix, and to cache the matrix's inverse.
## These functions can then be used in further activities
## that the class may dream up.


## I provide mechanisms to set and get a matrix, and
## I can set and get the inverse of this matrix

makeCacheMatrix <- function(storedMatrix = matrix()) {
  inverseMatrix <- NULL

  set <- function(newMatrix) {
    storedMatrix <<- newMatrix   # set the matrix value
    inverseMatrix <<- NULL       # clear the parent's value
  }

  get <- function() storedMatrix  # return the matrix
  setInverse <- function(newInverse) inverseMatrix <<- newInverse
  getInverse <- function() inverseMatrix
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)

} # end of makeCacheMatrix


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
