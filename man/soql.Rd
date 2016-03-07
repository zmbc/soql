\name{soql}
\alias{soql}
\title{
Create a \code{soql} object
}
\description{
This is the constructor for \code{soql} objects. It will most often be called with no parameters, and be used at the start of a chain of functions. It is necessary to use this function before any others in the soql package.
}
\usage{
soql(query = "")
}
\arguments{
  \item{query}{
  An optional string containing an already-formed URL. This URL is converted into a \code{soql} object.
  }
}
\value{
Returns a \code{soql} object.
}
\examples{
soql()

soql("a.socrata.endpoint?$select=*&$order=height")
}