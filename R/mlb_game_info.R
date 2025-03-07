#' @rdname mlb_game_info
#' @title **Retrieve additional game information for major and minor league games**
#' @param game_pk The unique game_pk identifier for the game
#' @importFrom jsonlite fromJSON
#' @importFrom tidyr spread
#' @importFrom tibble tibble
#' @importFrom stringr str_sub
#' @return Returns a data frame that includes supplemental information, such as
#' weather, official scorer, attendance, etc., for the game_pk provided
#'  |col_name        |types     |
#'  |:---------------|:---------|
#'  |game_date       |character |
#'  |game_pk         |numeric   |
#'  |venue_name      |character |
#'  |venue_id        |integer   |
#'  |temperature     |character |
#'  |other_weather   |character |
#'  |wind            |character |
#'  |attendance      |character |
#'  |start_time      |character |
#'  |elapsed_time    |character |
#'  |game_id         |character |
#'  |game_type       |character |
#'  |home_sport_code |character |
#'  |official_scorer |character |
#'  |date            |character |
#'  |status_ind      |character |
#'  |home_league_id  |integer   |
#'  |gameday_sw      |character |
#' @export
#' @examples \donttest{
#'  mlb_game_info(game_pk = 566001)
#' }

mlb_game_info <- function(game_pk) {

  api_call <- paste0("http://statsapi.mlb.com/api/v1.1/game/", game_pk,"/feed/live")

  payload <- jsonlite::fromJSON(api_call)

  lookup_table <- payload$liveData$boxscore$info %>%
    as.data.frame() %>%
    tidyr::spread(.data$label, .data$value)

  year <- stringr::str_sub(payload$gameData$game$calendarEventID, -10, -7)


  game_table <- tibble(game_date = stringr::str_sub(payload$gameData$game$calendarEventID,
                                                    -10, -1),
                       game_pk = game_pk,
                       venue_name = payload$gameData$venue$name,
                       venue_id = payload$gameData$venue$id,
                       temperature = payload$gameData$weather$temp,
                       other_weather = payload$gameData$weather$condition,
                       wind = payload$gameData$weather$wind,
                       attendance = ifelse("Att" %in% names(lookup_table) == TRUE,
                                           as.character(lookup_table$Att) %>% 
                                             stringr::str_remove_all('\\.'),
                                           NA),
                       start_time = as.character(lookup_table$`First pitch`) %>%
                         stringr::str_remove_all('\\.'),
                       elapsed_time = as.character(lookup_table$T) %>% 
                         stringr::str_remove_all('\\.'),
                       game_id = payload$gameData$game$id,
                       game_type = payload$gameData$game$type,
                       home_sport_code = "mlb",
                       official_scorer = payload$gameData$officialScorer$fullName,
                       date = names(lookup_table)[1],
                       status_ind = payload$gameData$status$statusCode,
                       home_league_id = payload$gameData$teams$home$league$id,
                       gameday_sw = payload$gameData$game$gamedayType)

  return(game_table)

}

#' @rdname get_game_info_mlb 
#' @title **(legacy) Retrieve additional game information for major and minor league games**
#' @inheritParams mlb_game_info
#' @return Returns a data frame that includes supplemental information, such as
#' weather, official scorer, attendance, etc., for the game_pk provided
#' @keywords legacy
#' @export
get_game_info_mlb <- mlb_game_info