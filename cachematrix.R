## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
