##I used to this program the functions that the assignment give us, changing some variables and some codes.

## Creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x<<- y
    m<<- NULL
  }
  get1 <- function() x
  set1 <- function(mean) m <<- inverse ##Asigns value of inverse in parent m
  get1 <- function() m                 ##Get1 gets the value of m when called
  list(set = set, get = get,
       set1 = set1,
       get1 = get1)
}


## Compute inverse of the 'matrix' returned by makeCache Matrix
## Again i used the code that the assigment give us changing some variables acording what i'm doing...
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

