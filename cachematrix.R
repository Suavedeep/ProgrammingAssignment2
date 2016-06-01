## makeCacheMatrix creates a special "matrix" object that can cache its inverse. 
## cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix. 

## The first function, makeCacheMatrix creates a special "Matric", which is really a list containing a function to
# 1.set the value of the Matrix
# 2.get the value of the Matrix
# 3.set the value of the Matrix Inverse
# 4.get the value of the Matrix Inverse


makeCacheMatrix <- function(x=matrix()){
  invrs <- NULL
  set <- function(y) {
    x <<- y
    invrs <<- NULL
  }
  get <- function() x
  setInvrs <- function(inverse) invrs <<- inverse
  getInvrs <- function() invrs
  list(set = set, get = get,
       setInvrs = setInvrs,
       getInvrs = getInvrs)
 }



## cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix.
## If the inverse has already been calculated (and the matrix has not changed),then the cacheSolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invrs <- x$getInvrs()
  if(!is.null(invrs)) {
    message("getting cached data")
    return(invrs)
  }
  data <- x$get()
  invrs <- solve(data, ...)
  x$setInvrs(invrs)
  invrs
  
}
