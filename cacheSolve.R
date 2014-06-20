cacheSolve <- function(x, ...){
    inv <- x$getinv() ## retrieves the data in GetInv run in makeCacheMatrix
    if(!is.null(inv)) { ## determines if inv is NULL (empty), if an inverted matrix is in cache...
        message("Getting cached data") ## the message is printed...
        return(inv) ## the cached matrix is returned, and the function is closed
    }
    table <- x$get() ## pulls x (from Get in makeCacheMatrix) into the function  
    inv <- solve(table, ...) ## creates the inverted matrix
    x$setinv(inv) ## puts the inverted matrix into the makeCacheMatric function
    inv ## displays the inverted matrix
}
