## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
##set your inverse to Null
	invs <- NULL
            set <- function(y) {
                    x <<- y
                    invs <<- NULL
            }
            get <- function() x
            setinvs <- function(solveMatrix) invs <<- solveMatrix
            getinvs <- function() invs
            list(set = set, get = get,
                 setInverse = setInverse,
                 getInverse = getInverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    invs <- x$getInverse()
        if(!is.null(invs)) {
                message("getting cached data...please wait")
                return(invs)
        }
        mat <- x$get()
        invs <- solve(mat, ...)
        x$setInverse(invs)
        inv
}
