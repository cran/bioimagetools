#'L-function cross-type in 3d
#' 
#' @description Calculates an estimate of the cross-type L-function for a multitype point pattern.
#'
#' @param X X coordinate of first observed point pattern in microns.
#' @param Y Y coordinate
#' @param Z Z coordinate
#' @param X2 X coordinate of second observed point pattern
#' @param Y2 Y coordinate
#' @param Z2 Z coordinate
#' @param psz pointsize used for discretization. Smaller values are more precise, but need more computation time.
#' @param width maximum distance
#' @param intensity intensity of first pattern. Only if \deqn{\lambda(s)!=\lambda}.
#' @param intensity2 intensity of second pattern
#' @param parallel Logical. Can we use parallel computing?
#' @param verbose Plot verbose information
#'
#' @return a list of breaks and counts.
#' @export
L.cross.3D<-function(X,Y,Z,X2,Y2,Z2,psz=25,width=1,intensity=NULL,intensity2=NULL,parallel=FALSE,verbose=FALSE)
{
K<-K.cross.3D(X,Y,Z,X2,Y2,Z2,25,1,intensity,intensity2,parallel,verbose=verbose)
breaks<-K$x
counts<-K$y
counts<-(counts*gamma(2.5)/(pi^(3/2)))^(1/3) # See Cressie, Wikle, page 211.
counts<-counts-breaks
return(list("x"=breaks,"y"=counts))
}
