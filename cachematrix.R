## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# this function create a list of function with the values of a square matrix,
# and allow to set the inverse of the matrix in cache.

makeCacheMatrix <- function(mat = matrix()) {
  inverse <- NULL
  
  get <- function() mat
  setInv <- function(inv) inverse <<- inv
  getInv <- function() inverse
  
  list(get = get,
       setInverse = setInv,
       getInverse = getInv)

}


## Write a short comment describing this function

# this function search the inverse solution of a square matrix seted in x
# if doesn't found it in the cache, then it is calculated

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInv()
  
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  x$setInv(solve(x$get()))
  solve(x$get())
}
