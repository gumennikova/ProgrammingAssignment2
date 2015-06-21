## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    } #set the value of the matrix
    get <- function() x #get the value of the matrix 
    setinverse <- function(inverse) m <<- inverse #set the value of the inverse
    getinverse <- function() m #get the value of the inverse
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse) #return 4 function
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()#get the value of the inverse
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    } 
    data <- x$get()#get the value of the matrix
    m <- solve(data, ...) #inverse of matrix
    x$setinverse(m) #set the value of the inverse
    m
}
