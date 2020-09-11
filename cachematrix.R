## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x<<- y
    m<<- NULL
  }
  get1 <- function() x
  set1 <- function(mean) m <<- inverse
  get1 <- function() m
  list(set = set, get = get,
       set1 = set1,
       get1 = get1)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$get1()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$set1(m)
  m
}

