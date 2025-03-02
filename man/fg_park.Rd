% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fg_park.R
\name{fg_park}
\alias{fg_park}
\alias{fg_park_hand}
\title{\strong{Scrape Park Factors from FanGraphs}}
\usage{
fg_park(yr)

fg_park_hand(yr)
}
\arguments{
\item{yr}{Season for which you want to scrape the park factors.}
}
\value{
Returns a data frame of park factors.
|col_name  |types     |
|:---------|:---------|
|season    |integer   |
|home_team |character |
|basic_5yr |integer   |
|3yr       |integer   |
|1yr       |integer   |
|single    |integer   |
|double    |integer   |
|triple    |integer   |
|hr        |integer   |
|so        |integer   |
|UIBB      |integer   |
|GB        |integer   |
|FB        |integer   |
|LD        |integer   |
|IFFB      |integer   |
|FIP       |integer   |

Returns a data frame of park factors by handedness.
|col_name      |types     |
|:-------------|:---------|
|season        |integer   |
|home_team     |character |
|single_as_LHH |integer   |
|single_as_RHH |integer   |
|double_as_LHH |integer   |
|double_as_RHH |integer   |
|triple_as_LHH |integer   |
|triple_as_RHH |integer   |
|hr_as_LHH     |integer   |
|hr_as_RHH     |integer   |
}
\description{
This function allows you to scrape park factors for a given season from FanGraphs.com.

This function allows you to scrape park factors by handedness from FanGraphs.com for a given single year.
}
\examples{
\donttest{
  fg_park(2013)
}
\donttest{
  fg_park_hand(2013)
}
}
