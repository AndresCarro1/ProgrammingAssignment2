## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  ## Initialing the inverse
  i <- NULL
  
  ## Setting the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ## Getting the matrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  ## Setting the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## Getting the inverse of the matrix
  getInverse <- function() {
    ## Return the inverse property
    i
  }
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

  m <- x$getInverse()
  
  
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  ## Getting the matrix from our object
  data <- x$get()
  
  ## Getting the inverse using matrix multiplication
  m <- solve(data) %*% data
  
  ## Setting the inverse to the object
  x$setInverse(m)
  
  ## Returning the matrix
  m
}
