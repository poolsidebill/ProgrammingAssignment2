## R Programming Class assignment to create some functions:
## to create a matrix, and to cache the matrix's inverse.
## These functions can then be used in further activities
## that the class may dream up.


## I provide mechanisms to set and get a matrix, and
## I can set and get the inverse of this matrix
makeCacheMatrix <- function(storedMatrix = matrix()) {
  inverseMatrix <- NULL ## cached matrix inverse of this object

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


## I return the inverse matrix of the matrix passed in
## If a cached inverse matrix is in this object, return it
## Otherwise, create the inverse, cache it in object, and return it
## I expect the first arg in this function to be a special object
## created from the makeCacheMatrix function above.
cacheSolve <- function(x, ...) {
  matrixInverse <- x$getInverse()
  if(!is.null(matrixInverse) {
    ## I have found the cached inverse matrix of this object
    ## and will return it
    message("getting cached inverse matrix of this object")
    return(matrixInverse)
  }
  
  ## No previous cached matrix inverse detected
  ## Create a new CacheMatrix ann return its inverse
  newMatrix <- x$get()
  matrixInverse <- solve(x)

  ## save the inverse in the object so we don't need to
  ## recaculate it next time
  x$setInverse(matrixInverse)

  ## return the inverse to caller
  matrixInverse
}
