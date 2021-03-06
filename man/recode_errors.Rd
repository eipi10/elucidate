% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/miscellaneous.R
\name{recode_errors}
\alias{recode_errors}
\title{Recode a vector of erroneous values in a vector or data frame column(s).}
\usage{
recode_errors(
  data,
  errors,
  replacement = NA,
  rows = c(1:nrow(data)),
  cols = c(1:ncol(data)),
  ind = c(1:length(data))
)
}
\arguments{
\item{data}{A vector, data frame, tibble, or matrix.}

\item{errors}{A vector of erroneous values to be recoded.}

\item{replacement}{The value you wish to replace all errors with. Default =
NA.}

\item{rows}{A vector specifying the rows of the data object for which to
replace erroneous values. Default is all rows in data. Use "ind"
instead if data is a vector.}

\item{cols}{A vector specifying the columns of the data object for which to
replace erroneous values. Default is all columns in data. Use "ind"
instead if data is a vector.}

\item{ind}{If data is a vector, this accepts a vector specifying the indices
the data object for which to replace erroneous values. Default is all
indices in data. Use "rows" &/or "cols" to specify indices to operate upon
if data is not a vector.}
}
\description{
Recode a vector of erroneous values for a vector or column(s) in a dataframe
by replacing those values with NA or another common indicator value. Similar
to \code{\link[dplyr]{na_if}} but is more flexible, e.g. it can operate on
multiple columns/rows (for data frames), or value indices (for vectors).
}
\examples{

#if (hypothetically) values of 0 & 8 were actually data entry errors in the
#mtcars dataset these can easily be recoded as NAs

data(mtcars)

recode_errors(mtcars,
  cols = c(8:11), #specify a column number range
  errors = c(0, 8))

}
\author{
Craig P. Hutton, \email{Craig.Hutton@bov.bc.ca}
}
