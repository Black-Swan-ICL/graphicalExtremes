% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transformation_functions.R
\name{Sigma2Gamma}
\alias{Sigma2Gamma}
\title{Transformation of \eqn{\Sigma^{(k)}}{\Sigma^(k)} matrix to \eqn{\Gamma} matrix}
\usage{
Sigma2Gamma(S, k = 1, full = FALSE)
}
\arguments{
\item{S}{Numeric \eqn{(d - 1) \times (d - 1)}{(d - 1) x (d - 1)} covariance matrix \eqn{\Sigma^{(k)}}{\Sigma^(k)}
from the definition of a Huesler--Reiss distribution.
Numeric \eqn{d \times d}{d x d} covariance matrix if \code{full = TRUE}, see \code{full}
parameter.}

\item{k}{Integer between \code{1} (the default value) and \code{d}.
Indicates which matrix \eqn{\Sigma^{(k)}}{\Sigma^(k)} is represented by \code{S}.}

\item{full}{Logical. If true, then the \code{k}th row and column in \eqn{\Sigma^{(k)}}{\Sigma^(k)}
are included and the function returns a \eqn{d \times d}{d x d} matrix.
By default, \code{full = FALSE}.}
}
\value{
Numeric \eqn{d \times d}{d x d} \eqn{\Gamma} matrix.
}
\description{
Transforms the \eqn{\Sigma^{(k)}}{\Sigma^(k)} matrix from the definition of a
Huesler--Reiss distribution to the corresponding \eqn{\Gamma} matrix.
}
\details{
For any \code{k} from \code{1} to \code{d},
the \eqn{\Sigma^{(k)}}{\Sigma^(k)} matrix of size \eqn{(d - 1) \times (d - 1)}{(d - 1) x (d - 1)}
in the definition of a
Huesler--Reiss distribution can be transformed into a the
corresponding \eqn{d \times d}{d x d} \eqn{\Gamma} matrix.
If \code{full = TRUE}, then \eqn{\Sigma^{(k)}}{\Sigma^(k)} must be a \eqn{d \times d}{d x d}
matrix with \code{k}th row and column
containing zeros. For details see \insertCite{eng2019;textual}{graphicalExtremes}.
This is the inverse of function of \code{\link{Gamma2Sigma}}.
}
\examples{
Sigma1 <-  rbind(c(1.5, 0.5, 1),
                 c(0.5, 1.5, 1),
                 c(1, 1, 2))
Sigma2Gamma(Sigma1, k = 1, full = FALSE)

}
\references{
\insertAllCited{}
}
