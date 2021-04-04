## Theses functions create and caches the inverse of a matrix to ease computation

## makeCacheMatrix creates a list with 4 functions to set and get a matrix and
## its inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
      x <<- y
      m <<- null
    }
    get <- function() x
    setinverse <- function(inverse) inv <- inverse
    getinverse <- function() inv
    list(set = set, get = get, setinverse=setinverse, getinverse=getinverse)
}


## cacheSolve verifies if the inverse of a matrix has already been calculated and 
## returns it if its the case or calculates it and caches it

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)){
    message('getting cached data')
    return(inv)
  }
  data <- x$get()
  inv <- mean(data,...)
  x$setinverse(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
