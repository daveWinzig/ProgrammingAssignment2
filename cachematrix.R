## Put comments here that give an overall description of what your
## functions do

## This function will create the special matrix and provide functions
## set and get both the matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {

    #will hold the inverse
    inverse <- NULL
    
    #matrix setter
    setMatrix <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    
    #matrix getter
    getMatrix <- function() x
    
    #inverse setter
    setInverse <- function(z) inverse <<-z 
    
    #inverse getter
    getInverse <- function() inverse
    
    #list of functions is returned
    list(setMatrix = setMatrix, getMatrix = getMatrix, 
         setInverse = setInverse, getInverse = getInverse)
}


## Find the inverse of a given function, unless already solved.

cacheSolve <- function(x, ...) {
    
    #get the stored inverse, if exists
    inverse <- x$getInverse()
    
    #is the inverse stored?
    if(!is.null(a)) {
        message("returning cached data")
        return(inverse)
    }
    
    #get the matrix
    temptrix <- x$getMatrix()
    
    #solve for inverse
    inverse <- solve(temptrix, ...)
    
    #store the inverse
    x$setInverse(inverse)
    
    #return the solution
    inverse
    
}
