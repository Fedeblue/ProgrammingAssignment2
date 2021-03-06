## My assignment is to write a pair of functions that cache the inverse of a matrix.
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	m_inv <- NULL
	set <- function(y){
		x <<- y
		m_inv <<- NULL
	}
	get <- function() x
	setInverse <- function(set_inv)m_inv<<- set_inv
	getInverse <- function() m_inv
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve 
## the inverse from the cache.

cacheSolve <- function(x, ...) {
	inv <- x$getInverse()
	if(!is.null(m_inv)){
		message("getting cached data")
		return(m_inv)
	}
	data <- x$get()
	m_inv <- solve(data)
	x$setInverse(m_inv)
	m_inv  
}
