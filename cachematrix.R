## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##inv_ is used to store the inverse matrix
##data is the refrence matrix
#assume that the matrix x is always square and hence, invertible

makeCacheMatrix <- function(x = matrix()) {
	inv_<-NULL


	set<- function(y){
		data<<-y	
		inv_<<-NULL	
	
	}
	
	get<- function(){
		data
	}


	set_inv<-function(inv2_)
	{
		inv_<<-inv2_
	}

	get_inv<-function(){
		inv_
	}
## returns a list as the output	

	list(set=set,get=get,set_inv=set_inv,get_inv=get_inv)

}


## Write a short comment describing this function
##invertible matrices must have a non zero determinant

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$get_inv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
	#get the inverse of the matrix
	if (det(data) != 0){

		m<-solve(data)
        	x$set_inv(m)
        	return(m)
	}else{

		stop('Matrix cannot be inverted')
	}
	

}
