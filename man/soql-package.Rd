\name{soql-package}
\alias{soql-package}
\docType{package}
\title{
\packageTitle{soql}
}
\description{
\packageDescription{soql}
}
\details{
To create a SoQL URL, or just parameters for one, start with \code{soql()}. Then chain the result into other functions, such as \code{soql_where()} or \code{soql_order()}. When you're done, use \code{as.character()} to retrieve the finished URL, for use with any networking package.
}
\author{
\packageAuthor{soql}

Maintainer: \packageMaintainer{soql}
}
\references{
\href{https://dev.socrata.com/}{Documentation for the SODA API}
}
\keyword{ package }
\examples{
# Without pipes
soql_chain <- soql()
soql_chain <- soql_where(soql_chain, "height > 30")
soql_chain <- soql_limit(20)
my_url <- as.character(soql_chain)

# With pipes
my_url <- soql() \%>\%
  soql_where("height > 30") \%>\%
  soql_limit(20) \%>\%
  as.character()
}
