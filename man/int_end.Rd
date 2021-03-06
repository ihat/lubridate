\name{int_end}
\alias{int_end}
\alias{int_end<-}
\title{Access and change the end date of an interval}
\usage{
  int_end(int)
}
\arguments{
  \item{int}{An interval object}
}
\value{
  A POSIXct date object when used as an accessor. Nothing
  when used as a settor
}
\description{
  Note that changing the end date of an interval will
  change the length of the interval, since the start date
  will remain the same.
}
\examples{
int <- new_interval(ymd("2001-01-01"), ymd("2002-01-01"))
# 2001-01-01 UTC--2002-01-01 UTC
int_end(int)
# "2002-01-01 UTC"
int_end(int) <- ymd("2002-06-01")
int
# 2001-01-01 UTC--2002-06-01 UTC
}
\seealso{
  \code{\link{int_start}}, \code{\link{int_shift}},
  \code{\link{int_flip}}, \code{\link{int_length}}
}

