## Two functions, one, which creates a matrix that can be cached. 
## Second a fucntion that computes the inverse of the cached matrix.

## Function which creates a matrix that can be cached.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmatrix <- function(solve) m <<- solve
    getmatrix <- function() m
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)    
}


## computes the inverse of a cached matrix.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
        }
        matrix <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m
}
