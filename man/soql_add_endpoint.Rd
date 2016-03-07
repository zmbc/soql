\name{soql_add_endpoint}
\alias{soql_add_endpoint}
\title{
Add SODA API endpoint
}
\description{
Add an endpoint to an already-existing \code{soql} object.
}
\usage{
soql_add_endpoint(soql_list, endpoint)
}
\arguments{
  \item{soql_list}{
  The \code{soql} object. If you don't have one yet, use the \code{soql()} function first. This can be piped in.
  }
  \item{endpoint}{
  The endpoint should be the URL of the data, without any parameters.
  }
}
\value{
Returns a new \code{soql} object, with the endpoint added, for use in other functions.
}
\references{
\href{https://dev.socrata.com/docs/endpoints.html}{Socrata's documentation on what an endpoint is}
}
\seealso{
\code{\link{soql}}
}
\examples{
# Without pipes
soql_chain <- soql()
soql_chain <- soql_add_endpoint(soql_chain, "https://fake.soda.api/resource.json")
my_url <- as.character(soql_chain)

# With pipes
my_url <- soql() \%>\%
  soql_add_endpoint("https://fake.soda.api/resource.json") \%>\%
  as.character()
}
