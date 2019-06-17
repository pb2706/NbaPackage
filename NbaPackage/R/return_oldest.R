#' Return Oldest NBA Player
#'
#' This function returns the oldest NBA player in a given season.
#' @param year_in Season to be evaluated.
#' @keywords player, season
#' @export
#' @examples
#' return_oldest(1991)

return_oldest <- function(year_in){
  nba_data %>% dplyr::filter(Year==year_in) %>%
    dplyr::arrange(desc(Age)) %>% dplyr::select(Player) %>% head(1)
}
