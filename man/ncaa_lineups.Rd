% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ncaa_lineups.R
\name{ncaa_lineups}
\alias{ncaa_lineups}
\title{\strong{Retrieve lineups for a given NCAA game via its \code{game_info_url}}}
\usage{
ncaa_lineups(game_info_url, year)
}
\arguments{
\item{game_info_url}{The unique game info url}

\item{year}{The year the game was played in}
}
\value{
Returns a data frame of each school's starting lineup and starting pitcher
|col_name      |types     |
|:-------------|:---------|
|year          |numeric   |
|playerName    |character |
|position      |character |
|batting_order |character |
|school        |character |
}
\description{
\strong{Retrieve lineups for a given NCAA game via its \code{game_info_url}}
}
\examples{
\donttest{
  ncaa_lineups(game_info_url="https://stats.ncaa.org/game/index/4587474?org_id=528",year=2018)
}
}
