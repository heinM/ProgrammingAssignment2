## The following two functions create a cached matrix, from a matrix passed to a function
## called makeCacheMatrix, then uses solve(data) to return the inverse of the given cached 
## matrix

## create a cached matrix, from a matrix passed to this function

makeCacheMatrix <- function(x = matrix()) {
    inverseM <- NULL ##initialize inverseM
    set <- function(y) {
        x <<- y
        inverseM <<- NULL
    } ## Setter function
    get <- function() x ##Getter Funtction
    setInverse <- function(inverse) inverseM <<- inverse
    getInverse <- function() inverseM
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Return a matrix that is the inverse of 'x, but first check if this inverse matrix
## does not already exist

cacheSolve <- function(x, ...) {
<<<<<<< Updated upstream
    matrixM <- x$getInverse()
    if(!is.null(matrixM)) {
        message("getting cached data")
        return(matrixM)
    }
    data <- x$get()
    matrixM <- solve(data)
    x$setInverse(matrixM)
    matrixM
=======
    matrixM <- x$getInverse() ##set matrixM using getFunction in makeCacheMatric
    if(!is.null(matrixM)) {
        message("getting cached data")
        return(matrixM)
    } ## check to see if it is already calculated
    data <- x$get()
    matrixM <- solve(data) ## create new invesematrix if it was NULL
    x$setInverse(matrixM)
    matrixM ##Return inverse matrix
>>>>>>> Stashed changes
}
