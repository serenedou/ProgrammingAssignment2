

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  c<-NULL
  set<-function(y){
    x<<-y
    c<<-NULL
  }
  get<-function()x
  setcacheSolve<-function(cacheSolve) c<<-cachesolve
  getcacheSove<-function()c
  list(set=set,get=get,
       setchacheSolve=setcacheSolve,
       getcacheSolve=getcacheSolve)
}


## This function computes the inverse of "matrix" returned by makeCacheMatrix. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  c<-x$getcacheSolve()
  if(!is.null(c)){
    message("getting cached data")
    return(c)
  }
  data<-x$get()
  c<-cacheSolve(data,...)
  x$setcacheSolve(c)
  c
        ## Return a matrix that is the inverse of 'x'
}

###backup
source('C:/Users/serenawang/ProgrammingAssignment2/cachematrix.R')