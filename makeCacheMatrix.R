makeCacheMatrix <- function(x = matrix()) {
    inv_m <- NULL ## creates the empty varaible inv_m
    Set <- function(y) {  ## creates a function that allows a matrix to be "set" once makeCacheMatrix has been run once
        x <<- y ## the selected matrix is moved to the parent environment
        inv_m <<- NULL ## inv_m is set to NULL in case it was assigned perviously
    }
    SetInv <- function(inv) ## pulls the inverted matrix created using cacheSolve
        inv_m <<- inv ## assigns the contents of the cached inverted matrix to inv_m in the parent environment
    Get <- function() ## function that allows x to be pulled into cacheSolve 
        x
    GetInv <- function() ## function that holds the inverted matrix in cache
        inv_m
    list (set = Set, ## attaches the functions to the variable associated with makeCacheMatrix
          get = Get,
          setinv = SetInv,
          getinv = GetInv)
}