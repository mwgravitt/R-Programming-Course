## https://class.coursera.org/rprog-012/human_grading/view/courses/973493/assessments/3/submissions

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  inverted <- NULL
  
  set <- function(y) {
    x <<- y
    inverted <<- NULL
  }
  get <- function() x
  setinverted <- function(inverted_matrix) inverted <<- inverted_matrix
  getinverted <- function() inverted
  list(set = set, get = get,
       setinverted = setinverted,
       getinverted = getinverted)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve 
## should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  inverted <- x$getinverted()
  if(!is.null(inverted)) {
    message("getting cached data")
    return(inverted)
  }
  
  x$setinverted(solve(x$get()))
  x$getinverted()
}
