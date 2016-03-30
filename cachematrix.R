## The main idea is that the inverse of a Matrix is solve()
## After following the example of the mean and changing the specific things to adapt to a inverse matrix - that's what I got.
## I must say that it would be almos impossible to get to this function by myself with only the 
## Knowladge from the classes. I would like to know more to the point I could figure this out by myself


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- mean
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get
  inv <- solve(data)
  X$setinverse(inv)
  inv
}