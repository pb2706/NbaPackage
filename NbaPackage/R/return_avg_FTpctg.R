#' Return Average FT Percentage
#'
#' This function returns the average FT percentage for a given player across
#' all the NBA seasons played by the player.
#' @param player_in Player to be evaluated.
#' @keywords player, FT
#' @export
#' @examples
#' player_in("Robert Parish")

return_avg_FTpctg <- function(player_in){
  out <- nba_data %>% dplyr::filter(Player==player_in) %>% dplyr::select('FT%')
  return(mean(out$'FT%'))
}
