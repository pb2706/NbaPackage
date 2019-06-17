#' Return Season Correlation Matrix NBA Dataset
#'
#' This function returns the correlation matrix for all the variables included in the
#' NBA dataset for a given NBA season.
#' @param year_in Season to be evaluated.
#' @keywords season, correlation matrix.
#' @export
#' @examples
#' corr_nba(1991)

corr_nba <- function(year_in){
  nba_data %>% dplyr::filter(Year==year_in) %>% purrr::keep(is.numeric) %>%
    select(-Year) %>% stats::cor()
}
