## Created functions to answer Week 3 assignment
## functions do

## This function creates the matrix I need to inverse

makeCacheMatrix <- function(x = matrix()) { 
    inv <- NULL                              
    set <- function(y) {                   
        x <<- y                             
        inv <<- NULL                       
    }
    get <- function() x                    

    setinverse <- function(inverse) inv <<- inverse 
    getinverse <- function() inv                     
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) 
}


## This function creates the inverse of the matrix
cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
        }
