# soql

[![Travis-CI Build Status](https://travis-ci.org/zmbc/soql.svg?branch=master)](https://travis-ci.org/zmbc/soql)

R package that helps construct queries for the [Socrata Open Data API](https://dev.socrata.com) (SODA), using the Socrata Query Language (SoQL) format. Documentation for SoQL in general, apart from this package, can be found [here](https://dev.socrata.com/docs/queries/).

## Purpose

`soql` is **not** a package for parsing JSON/CSV/XML retrieved from SODA. It only exists to make constructing SODA request URLs easy. Once the URL is created, it can be used by anything: `read.socrata` from the [RSocrata](https://github.com/Chicago/RSocrata) package, `fromJSON` from [jsonlite](https://github.com/jeroenooms/jsonlite), or `getURL` from [RCurl](https://github.com/omegahat/RCurl) if you're really a minimalist. It's up to you.

## Usage

#### Step 1
Always start building your URL with a call to `soql()`. Optionally, you can pass a string parameter containing an already-created SODA URL you'd like to add to.

#### Step 2
Next, add to it. `soql` uses method chaining: each function outputs a new object that can be passed to more functions. Functions always accept this object as their first parameter, which means that `soql` works beautifully with pipes (%>%).

Functions used to add to a URL, and the documentation for their corresponding parameters, are listed below.

* `soql_select`: [$select](https://dev.socrata.com/docs/queries/select.html)
* `soql_where`: [$where](https://dev.socrata.com/docs/queries/where.html)
* `soql_order`: [$order](https://dev.socrata.com/docs/queries/order.html)
* `soql_group`: [$group](https://dev.socrata.com/docs/queries/group.html)
* `soql_limit`: [$limit](https://dev.socrata.com/docs/queries/limit.html)
* `soql_offset`: [$offset](https://dev.socrata.com/docs/queries/offset.html)
* `soql_q`: [$q](https://dev.socrata.com/docs/queries/q.html)
* `soql_simple_filter`: [simple filters](https://dev.socrata.com/docs/filtering.html)

For more information on any of these functions, simply run `?function_name_here` in the R console.

#### Step 3
When you're ready to use your URL, simply call `as.character` on it. You can pipe it into `as.character` as well. This will return your URL in string form.

#### Step 4
Use your URL!

## Example

```
# Using pipes
library(soql)
soql() %>%
	soql_add_endpoint('https://data.seattle.gov/resource/kzjm-xkqj.json') %>%
	soql_where('datetime IS NOT NULL') %>%
	soql_where('longitude > -122.5') %>%
	soql_q('St') %>%
	as.character()
	#=> [1] "https://data.seattle.gov/resource/kzjm-xkqj.json?$where=datetime%20IS%20NOT%20NULL%20AND%20longitude%20%3E%20-122.5&$q=St"
```
