## Two functions to cache the inverse of a square matrix
## Created for JHU "R Programming" Coursera class

## Creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function(){
                x        
        }
        setinv <- function(inv){
                i <<- inv
        }
        getinv <- function(){
                i        
        }
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Computes the inverse of a "matrix" object created in makeCacheMatrix

cacheSolve <- function(x, ...) {
        i <- x$getinv()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinv(i)
        i
}
