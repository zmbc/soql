\name{soql_simple_filter}
\alias{soql_simple_filter}
\title{
Create a simple equality filter
}
\description{
This function adds a parameter to the URL to filter records in a simple way, using equality only. For more advanced filters, see \code{\link{soql_where}}.
}
\usage{
soql_simple_filter(soql_list, column, value)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{soql_list}{
  The \code{soql} object. If you don't have one yet, use the \code{soql()} function first. This can be piped in.
  }
  \item{column}{
  The column name to filter by.
  }
  \item{value}{
  The value the column must be equal to.
  }
}
\value{
Returns a new \code{soql} object, with a filter parameter added, for use in other functions.
}
\references{
\href{https://dev.socrata.com/docs/filtering.html}{Documentation on the SODA website}
}

\seealso{
\code{\link{soql_where}}
}
\examples{
# Without pipes
soql_chain <- soql()
soql_chain <- soql_simple_filter(soql_chain, "height", 50)
my_url <- as.character(soql_chain)

# With pipes
my_url <- soql() \%>\%
  soql_simple_filter("height", 50) \%>\%
  as.character()
}
