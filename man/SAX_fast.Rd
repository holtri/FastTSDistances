% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{SAX_fast}
\alias{SAX_fast}
\title{Symbolic Aggregate Aproximation}
\usage{
SAX_fast(x, limits)
}
\arguments{
\item{x}{Numeric vector/time series.}

\item{limits}{The interval boundaries which determine the mapping to symbols.
A time series value in the i-th interval will be mapped to the value i. Your
limits should be a monotonically increasing vector, starting from negative
infinity and ending with positive infinity (length = number of symbols + 1).}
}
\value{
The series converted to integer values.
}
\description{
Converts a numeric time series to a series of discrete values (here: integers,
but could also be letters or other symbols), depending on where would they be
placed in the series of intervals called \code{limits}. Inspired by the pure R
implementation in \code{TSclust::convert.to.SAX.symbol()}, but faster because
C++ code.
}
\section{References}{


Lin, J., Keogh, E., Lonardi, S. & Chiu, B. (2003). A symbolic representation
of time series, with implications for streaming algorithms. In \emph{Proceedings
of the 8th acm sigmod workshop on research issues in data mining and knowledge
discovery} (pp. 2-11). ACM.
}

\seealso{
Other SAX functions: \code{\link{SAXLimitsDataAdaptive}},
  \code{\link{SAXLimitsOriginal}}
}
