makeCacheMatrix creates a special "matrix" object that can cache its inverse.
cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix. 

Creating Matrix to Cache the Inverse of a Matrix
#> mat <- makeCacheMatrix(matrix(2:5,2,2))
#> mat$get()
#     [,1] [,2]
# [1,]    2    4
# [2,]    3    5
 
#> cacheSolve(mat)
#     [,1] [,2]
#[1,] -2.5    2
#[2,]  1.5   -1

Calculated Inverse on same matrix (Cached Data will be returned)
#> cacheSolve(mat)
#getting cached data
#     [,1] [,2]
#[1,] -2.5    2
#[2,]  1.5   -1

cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix. 
You can see the inverse of the matrix calculated by cacheSolve as below:-

CacheSolve Function calculates the inverse of the matrix ,if matrix already in cache then cached data is returned as below
