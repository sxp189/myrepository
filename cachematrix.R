## create a cache for the matrix

## This function will create a matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function(x)
        setmean <- function(mean)
                m <<- mean
        getmean <- function(m)
        list(set= set, get= get,
                setmean= setmean,
                getmean= getmean)
}


## Solve for the inverse of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmean(m)
        m
}
