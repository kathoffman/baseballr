% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chadwick_player_lu.R
\name{chadwick_player_lu}
\alias{chadwick_player_lu}
\alias{get_chadwick_lu}
\title{\strong{Download the Chadwick Bureau's public register of baseball players}}
\usage{
chadwick_player_lu()

get_chadwick_lu()
}
\value{
A data frame of baseball players and the various IDs associated with them in different systems of record.
|col_name          |types     |
|:-----------------|:---------|
|key_person        |character |
|key_uuid          |character |
|key_mlbam         |integer   |
|key_retro         |character |
|key_bbref         |character |
|key_bbref_minors  |character |
|key_fangraphs     |integer   |
|key_npb           |integer   |
|key_sr_nfl        |character |
|key_sr_nba        |character |
|key_sr_nhl        |character |
|key_findagrave    |integer   |
|name_last         |character |
|name_first        |character |
|name_given        |character |
|name_suffix       |character |
|name_matrilineal  |character |
|name_nick         |character |
|birth_year        |integer   |
|birth_month       |integer   |
|birth_day         |integer   |
|death_year        |integer   |
|death_month       |integer   |
|death_day         |integer   |
|pro_played_first  |integer   |
|pro_played_last   |integer   |
|mlb_played_first  |integer   |
|mlb_played_last   |integer   |
|col_played_first  |integer   |
|col_played_last   |integer   |
|pro_managed_first |integer   |
|pro_managed_last  |integer   |
|mlb_managed_first |integer   |
|mlb_managed_last  |integer   |
|col_managed_first |integer   |
|col_managed_last  |integer   |
|pro_umpired_first |integer   |
|pro_umpired_last  |integer   |
|mlb_umpired_first |integer   |
|mlb_umpired_last  |integer   |

A data frame of baseball players and the various IDs associated with them in different systems of record.
}
\description{
\strong{Download the Chadwick Bureau's public register of baseball players}
}
\examples{
\donttest{
  chadwick_player_lu()
}
}
