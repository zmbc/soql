\name{soql_queries}
\alias{soql_queries}
\alias{soql_select}
\alias{soql_where}
\alias{soql_order}
\alias{soql_group}
\alias{soql_q}
\title{
SoQL Queries
}
\description{
Wrapper functions around the SODA API's queries: \code{select}, \code{where}, \code{order}, \code{group}, and \code{q}.
}
\usage{
soql_select(soql_list, select_clause)
soql_where(soql_list, where_clause)
soql_order(soql_list, column, desc = FALSE)
soql_group(soql_list, group_clause)
soql_q(soql_list, q_clause)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{soql_list}{
  The \code{soql} object. If you don't have one yet, use the \code{soql()} function first. This can be piped in.
  }
  \item{select_clause, where_clause, group_clause, q_clause}{
  String to be used as the given clause in the query.
  }
  \item{column}{
  Column name to be ordered by.
  }
  \item{desc}{
  Whether to order descending.
  }
}
\value{
Returns a new \code{soql} object, with parameters added, for use in other functions.
}
\references{
\href{https://dev.socrata.com/docs/queries/}{Documentation about these queries on the SODA website}
}
\seealso{
\code{\link{soql_simple_filter}} for an easier method of doing \code{where} with equality.
}
\examples{
# Without pipes
soql_chain <- soql()
soql_chain <- soql_select(soql_chain, "height,weight")
soql_chain <- soql_where(soql_chain, "height > 30")
soql_chain <- soql_order(soql_chain, "height", desc=TRUE)
soql_chain <- soql_group(soql_chain, "type")
soql_chain <- soql_q(soql_chain, "a")
my_url <- as.character(soql_chain)

# With pipes
my_url <- soql() \%>\%
  soql_select("height,weight") \%>\%
  soql_where("height > 30") \%>\%
  soql_order("height", desc=TRUE) \%>\%
  soql_group("type") \%>\%
  soql_q("a") \%>\%
  as.character()
}
