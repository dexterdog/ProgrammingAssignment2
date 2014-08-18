## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Function
makeCacheMatrix <- function(x = matrix()) {
  
  s <- NULL
  
  # Function
  set <- function(y) {
    # assign a value to an object
    x <<- y
    s <<- NULL
  }
  
  # get the value
  get <- function() x
  
  #set the value
  setsolve <- function(solve) s <<- solve
  
  # get the value 
  getsolve <- function() s
  
  # List value
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}



## Write a short comment describing this function

# Function
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  # assign Matrix get solve column and return
  s <- x$getsolve()
  return(s)
}

# Set data variable
data <- x$get()

# solve the inverse of data variable return to s
s <- solve(data, ...)
x$setsolve(s)
s
}


# coursera examples 

#makeVector <- function(x = numeric()) {
#  m <- NULL
#  set <- function(y) {
#    x <<- y
#    m <<- NULL
#  }
#  get <- function() x
#  setmean <- function(mean) m <<- mean
#  getmean <- function() m
#  list(set = set, get = get,
#       setmean = setmean,
#       getmean = getmean)
#}
#

# cachemean <- function(x, ...) {
#  m <- x$getmean()
#  if(!is.null(m)) {
#    message("getting cached data")
#    return(m)
#  }
#  data <- x$get()
#  m <- mean(data, ...)
#  x$setmean(m)
#  m
#}
