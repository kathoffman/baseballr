% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mlb_batting_orders.R
\name{mlb_batting_orders}
\alias{mlb_batting_orders}
\title{\strong{Retrieve batting orders for a given MLB game}}
\usage{
mlb_batting_orders(game_pk, type = "starting")
}
\arguments{
\item{game_pk}{The unique game_pk identifier for the game}

\item{type}{Whether to just return the starting lineup ('starting') or all
batters that appeared ('all')}
}
\value{
Returns a data frame that includes probable starting pitchers and
the home plate umpire for the \code{game_pk} requested
|col_name             |types     |
|:--------------------|:---------|
|id                   |integer   |
|fullName             |character |
|abbreviation         |character |
|batting_order        |character |
|batting_position_num |character |
|team                 |character |
|teamName             |character |
|teamID               |integer   |
}
\description{
\strong{Retrieve batting orders for a given MLB game}
}
\examples{
\donttest{
  mlb_batting_orders(game_pk=566001)
}
}
