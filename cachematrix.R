##  Programming assignment 2  
## Two funcitons to cache the inverse of a matrix
## 

## This is a function to create the matrix cache 

makeCacheMatrix <- function(x = matrix()) {
        
        
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmean <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
        
}


## This solves the inverse of the matrix - or pulls it from the cace if already computed

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        
                m <- x$getmatrix()
                if(!is.null(m)) {
                        message("getting cached data")
                        return(m)
                }
                data <- x$get()
                m <- solve(data, ...)
                x$setmatrix(m)
                m
        }
        
        
        
        
        
        
        
        
        
        
