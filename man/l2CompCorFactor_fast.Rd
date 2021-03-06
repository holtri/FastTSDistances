% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{l2CompCorFactor_fast}
\alias{l2CompCorFactor_fast}
\title{L2 Complexity Correction Factor for a Time Series Distance}
\usage{
l2CompCorFactor_fast(x, y)
}
\arguments{
\item{x}{1st numeric vector/time series.}

\item{y}{2nd numeric vector/time series.}
}
\value{
The complexity correction factor as double. Is infinity if one series
is constant and the other one not.
}
\description{
Calculates the complexity correction factor for the distance between two time
series, using the L2 norm of each time series' diff vector as complexity
estimate. Can be combined with any distance as a scaling factor (distances
between vectors of different complexity become more prominent). Does not obey
the triangular equality if its combined with the Euclidean distance, but a
relaxed version (see reference).
}
\details{
This factor is currently integrated as a parameter into the L2 distance and
dynamic time warping distance of this package.
}
\section{References}{

Batista, G. E., Keogh, E. J., Tataw, O. M. & De Souza, V. M. (2014). Cid: An
efficient complexity-invariant distance for time series. \emph{Data Mining and
Knowledge Discovery, 28}(3), 634-669.
}

\seealso{
\code{\link{l2Dist_fast}}, \code{\link{DTWDist_fast}}
}
