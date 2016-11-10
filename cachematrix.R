## First function takes a matrix and creates a list with 
## 4 local functions to operate on the matrix object.

## set function used to initialze the local varible, get function to return the originl matrix
## setinv to store inv into cache and getinv to get the inverse stored.

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function (y) {
      x<<-y
      inv<<-NULL
  }
  get<-function() x
  setinv<-function(t) inv<<-t
  getinv<-function()inv
  list(set=set,get=get,setinv=setinv,getinv=getinv)
  
}


## Function checks if the cache has the stored value
## if not then it calculates the inverse and stores it in the cache variables using the previous function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinv()
  if(!is.null(inv)){
      message("Getting from Cache")
      return(m)
  }
  data<-x$get()
  inv<-solve(data,...)
  x$setinv(inv)
  inv
}
