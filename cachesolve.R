
## This function returns a matrix that is the inverse of 'x', but uses cached values as
## appropriate.

cacheSolve <- function(x=matrix(), ...) {
  m<<-x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix,...)
  x$setmatrix(m)
  m
}
