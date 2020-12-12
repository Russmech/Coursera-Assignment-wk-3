## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
}
#set the value of the vector
#get the value of the vector
#set the value of the mean
#get the value of the mean

## Write a short comment describing this function
inv = NULL 
set = function(y) {
  #"<<_" assigns value to object in environment
  x<<-y
  inv<<- NULL
}
get = function() x
setinv = function(inverse) inv <<- inverse
getinv = function() inv
list(set=set, get=get, setinv=setinv, getinv=getinv)

#this function below computes the inverse of the matrix returned from the above function 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv = x$getinv()
  # if inv is calculated 
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  #calculate inv
  mat.data = x$get()
  inv = solve(mat.data, ...)
  #set val of inverse in cache via setinv 
  x$setinv(inv)
  
  return(inv)
}
