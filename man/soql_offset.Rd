\name{soql_offset}
\alias{soql_offset}
\title{
Control which records you receive from a SODA API
}
\description{
This function adds a parameter to a \code{soql} object that controls what index the returned records start at. For more information, view the SODA documentation linked in the References section below.
}
\usage{
soql_offset(soql_list, offset)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{soql_list}{
  The \code{soql} object. If you don't have one yet, use the \code{soql()} function first. This can be piped in.
  }
  \item{offset}{
  Desired starting index of responses.
  }
}
\value{
Returns a new \code{soql} object, with an offset parameter added, for use in other functions.
}
\references{
\href{https://dev.socrata.com/docs/queries/offset.html}{Documentation on the SODA website}
}
\seealso{
\code{\link{soql_limit}}
}
\examples{
if (require(magrittr)) \{
  # With pipes
  my_url <- soql() \%>\%
    soql_offset(50) \%>\%
    as.character()
\} else \{
  # Without pipes
  soql_chain <- soql()
  soql_chain <- soql_offset(soql_chain, 50)
  my_url <- as.character(soql_chain)
\}
}
