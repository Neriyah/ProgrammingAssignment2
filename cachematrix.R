## The main idea is that the inverse of a Matrix is solve()
## After following the example of the mean and changing the specific things to adapt to a inverse matrix - that's what I got.
## I must say that it would be almos impossible to get to this function by myself with only the 
## Knowladge from the classes. I would like to know more to the point I could figure this out by myself
## Just wanted to point out that I have two names Neriyah and Flavio if you are confused


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Did some changes after comments from classmates

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  X$setinverse(inv)
  inv
}

## possible way to try my code
## cm <- makeCacheMatrix(rbind(c(1, -1/4), c(-1/4, 1))) cacheSolve(cm) cm$getinverse() cacheSolve(cm)