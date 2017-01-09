# Coursera R Programming assignmet-Week 3 (V1.0 9/1/17)


makeCacheMatrix <- function(x = matrix()) {
  # function to create a "special"matrix that can cache its inverse
  
    inv <- NULL  #holds inverse value of matrix; initialized as NULL
  
    set <- function(y) {   # set function assigns new value of matrix
                           # in the parent environment
          x<<-y
        inv<<-NULL         # in case of new matrix, resetting inv to NULL
        }
  
    get <- function() x    # function to return the value of the matrix
  
    setinverse <- funtion(inverse) inv<<-inverse
    # assigns value of inverse of matrix
    # in parent environment
  
    getinverse <- function() inv 
    # gets value of inverse stored in 'inv'
  
    list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)

}

# cacheSolve computes the inverse of the special matrix returned by 
# makeCachemareix. 

# In case of a pre-calculated inverse for a matrix, the value is obtained from cache
# and computation of inverse is skipped

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
    inv<-x$getinverse()
  
    if(!is.null(inv)) {   # to check if a previous inverse has been calculated
    
        message("getting cached data for the matrix")
        return(inv)
        }
  
    data<- x$get()
    
    inv<- solve(data,...)
  
    x$setinverse(inv)
  
    inv
  
}
