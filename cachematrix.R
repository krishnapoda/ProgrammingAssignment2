## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function has 4 functions in it to set and get matrices and to set and get inverse of the matrix
#
#
#
makeCacheMatrix <- function(x = matrix()) {
  m <-NULL
  set<-function(y)
  {
    x<<-y
    m<<-NULL
  }
  get<-function() 
  {
    x
  }
  # This function using the solve funtion to calculate the inverse of the matrix
  setinvmatrix<-function(inv_mat) 
  {
    m<<- inv_mat
  }  
  getinvmatrix<-function() 
  {
    m
  }
  list(set=set, 
       get=get,
       setinvmatrix=setinvmatrix,
       getinvmatrix=getinvmatrix
  )
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   m<-x$getinvmatrix()
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  matrix<-solve(matrix)
  x$setinvmatrix(matrix)
  matrix
		}
