## Create a specific matrix that can cashe its inverse 
## 1. set the cashmatrix <- makeCasheMatrix
## 2. get the cashmatrix
## 3. set the value of inverse of the matrix
## 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  Inv <- NULL  
  set <- function (y) {
    x <<- y
    Inv <<- NULL
  }
  get <- function () x
  setInverse <- function (Inverse) Inv <<- Inverse
  getInverse <- function () Inv
  list (set = set, get = get, setInverse = setInverse, getInverse=getInverse)
}


## Compute the inverse of the specific matrix returned by "makeCashMatrix". 
## If the inverse has alreday been caculated, the "casheSolve" gets the result 
## from the cahces. If not, it compute the inverse. 

cacheSolve <- function(x, ...) {
  Inv <- X$getInverse()
  if (!is.null(Inv)) {
    message ("getting cached data")
    return(Inv)
  }
  data <- X$get()
  Inv <- solve(data) %*% data
  x$setInverse(Inv)
  Inv
        ## Return a matrix that is the inverse of 'x'
}
