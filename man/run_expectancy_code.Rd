% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metrics_run_expectancy_code.R
\name{run_expectancy_code}
\alias{run_expectancy_code}
\title{\strong{Generate run expectancy and related measures from Baseball Savant data}}
\usage{
run_expectancy_code(df, level = "plate appearance")
}
\arguments{
\item{df}{A data frame generated from Baseball Savant.}

\item{level}{Whether you want run expectancy calculated at the plate appearance or pitch level. Defaults to plate appearance.}
}
\value{
Returns a data frame with the following columns
|col_name                        |types     |
|:-------------------------------|:---------|
|pitch_type                      |character |
|game_date                       |Date      |
|release_speed                   |numeric   |
|release_pos_x                   |numeric   |
|release_pos_z                   |numeric   |
|player_name                     |character |
|batter                          |numeric   |
|pitcher                         |numeric   |
|events                          |character |
|description                     |character |
|spin_dir                        |logical   |
|spin_rate_deprecated            |logical   |
|break_angle_deprecated          |logical   |
|break_length_deprecated         |logical   |
|zone                            |numeric   |
|des                             |character |
|game_type                       |character |
|stand                           |character |
|p_throws                        |character |
|home_team                       |character |
|away_team                       |character |
|type                            |character |
|hit_location                    |integer   |
|bb_type                         |character |
|balls                           |integer   |
|strikes                         |integer   |
|game_year                       |integer   |
|pfx_x                           |numeric   |
|pfx_z                           |numeric   |
|plate_x                         |numeric   |
|plate_z                         |numeric   |
|on_3b                           |numeric   |
|on_2b                           |numeric   |
|on_1b                           |numeric   |
|outs_when_up                    |integer   |
|inning                          |numeric   |
|inning_topbot                   |character |
|hc_x                            |numeric   |
|hc_y                            |numeric   |
|tfs_deprecated                  |logical   |
|tfs_zulu_deprecated             |logical   |
|fielder_2                       |numeric   |
|umpire                          |logical   |
|sv_id                           |character |
|vx0                             |numeric   |
|vy0                             |numeric   |
|vz0                             |numeric   |
|ax                              |numeric   |
|ay                              |numeric   |
|az                              |numeric   |
|sz_top                          |numeric   |
|sz_bot                          |numeric   |
|hit_distance_sc                 |numeric   |
|launch_speed                    |numeric   |
|launch_angle                    |numeric   |
|effective_speed                 |numeric   |
|release_spin_rate               |numeric   |
|release_extension               |numeric   |
|game_pk                         |numeric   |
|pitcher_1                       |numeric   |
|fielder_2_1                     |numeric   |
|fielder_3                       |numeric   |
|fielder_4                       |numeric   |
|fielder_5                       |numeric   |
|fielder_6                       |numeric   |
|fielder_7                       |numeric   |
|fielder_8                       |numeric   |
|fielder_9                       |numeric   |
|release_pos_y                   |numeric   |
|estimated_ba_using_speedangle   |numeric   |
|estimated_woba_using_speedangle |numeric   |
|woba_value                      |numeric   |
|woba_denom                      |integer   |
|babip_value                     |integer   |
|iso_value                       |integer   |
|launch_speed_angle              |integer   |
|at_bat_number                   |numeric   |
|pitch_number                    |numeric   |
|pitch_name                      |character |
|home_score                      |numeric   |
|away_score                      |numeric   |
|bat_score                       |numeric   |
|fld_score                       |numeric   |
|post_away_score                 |numeric   |
|post_home_score                 |numeric   |
|post_bat_score                  |numeric   |
|post_fld_score                  |numeric   |
|if_fielding_alignment           |character |
|of_fielding_alignment           |character |
|spin_axis                       |numeric   |
|delta_home_win_exp              |numeric   |
|delta_run_exp                   |numeric   |
|final_pitch_game                |numeric   |
|final_pitch_at_bat              |numeric   |
|runs_scored_on_pitch            |numeric   |
|bat_score_after                 |numeric   |
|final_pitch_inning              |numeric   |
|bat_score_start_inning          |numeric   |
|bat_score_end_inning            |numeric   |
|cum_runs_in_inning              |numeric   |
|runs_to_end_inning              |numeric   |
|count_base_out_state            |character |
|avg_re                          |numeric   |
|next_count_base_out_state       |character |
|next_avg_re                     |numeric   |
|change_re                       |numeric   |
|re24                            |numeric   |
}
\description{
These functions allow a user to generate run expectancy and related measures and variables from Baseball Savant data. Measures and variables will be added to the data frame.
}
\examples{
\donttest{
  df <- statcast_search(start_date = "2016-04-06", end_date = "2016-04-15", 
                        playerid = 621043, player_type = 'batter') 
  run_expectancy_code(df, level = "plate appearances")
}
}
