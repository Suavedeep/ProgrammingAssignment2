### Introduction

 makeCacheMatrix creates a special "matrix" object that can cache its inverse.
 cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix. 

### Example: Caching the Matrix Inverse

<!-- -->

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

cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix. 
You can see the inverse of the matrix calculated by cacheSolve as below:-

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

### Assignment: Code Running Example

> mat <- makeCacheMatrix(matrix(2:5,2,2))
> mat$get()
     [,1] [,2]
[1,]    2    4
[2,]    3    5
> cacheSolve(mat)
     [,1] [,2]
[1,] -2.5    2
[2,]  1.5   -1
> cacheSolve(mat)
getting cached data
     [,1] [,2]
[1,] -2.5    2
[2,]  1.5   -1
