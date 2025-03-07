% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chadwick_playername_lookup.R
\name{playername_lookup}
\alias{playername_lookup}
\title{\strong{Look up Baseball Player Name by ID}}
\usage{
playername_lookup(id)
}
\arguments{
\item{id}{An integer or character string representing a player ID in a baseball database, cross-referenced through the Chadwick Bureau's public register of baseball players.}
}
\value{
A data frame of baseball players and the various IDs associated with them in different systems of record.
|col_name         |types     |
|:----------------|:---------|
|name_first       |character |
|name_last        |character |
|name_given       |character |
|name_suffix      |character |
|name_nick        |character |
|birth_year       |integer   |
|mlb_played_first |integer   |
|key_mlbam        |integer   |
|key_retro        |character |
|key_bbref        |character |
|key_fangraphs    |integer   |
}
\description{
This function allows you to query the Chadwick Bureau's public register of baseball players and the various IDs associated with them in different systems of record.
}
\examples{
\donttest{
  playername_lookup(4885)
  playername_lookup("kaaihki01")
}
}
