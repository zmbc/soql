\name{soql_limit}
\alias{soql_limit}
\title{
Limit the number of results from a SODA response
}
\description{
Adds a parameter to the SODA URL that limits how many responses the API will send back.
}
\usage{
soql_limit(soql_list, limit)
}
\arguments{
  \item{soql_list}{
  The \code{soql} object. If you don't have one yet, use the \code{soql()} function first. This can be piped in.
  }
  \item{limit}{
  Number of records desired.
  }
}
\value{
Returns a new \code{soql} object, with a limit parameter added, for use in other functions.
}
\references{
\href{https://dev.socrata.com/docs/queries/limit.html}{Documentation on the SODA website}
}
\seealso{
\code{\link{soql_offset}}
}
\examples{
# Without pipes
soql_chain <- soql()
soql_chain <- soql_limit(soql_chain, 5)
my_url <- as.character(soql_chain)

# With pipes
my_url <- soql() \%>\%
  soql_limit(5) \%>\%
  as.character()
}
