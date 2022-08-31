#' A function that illustrates bar plot of tw o variables
#'
#' The function below will show us the bar plot of tw ovariables and how they depend on each other
#'
#' @author Islam and Leyla
#' @param data the data selected
#' @param x numeric. numeric vector
#' @param y numeric. numeric vector
#' @param color color of the barplot
#' @return barplot a bar plot is returned with selected color
#' @import ggplot2 dplyr
#' @examples
#' alcohol_consumption <- drugs %>%  effect_drugs(drugs$country, drugs$consumption_alcohol, color = "blue")
#' cit.acid_effect <- wine %>% effect(wine$quality, wine$citric.acid, color = "orange")
#' @export

effect <- function (data, x, y, color) {
  data %>%
    ggplot() +
    geom_bar(aes(x=x,y=y),
             stat = "summary",
             fun ="mean",fill=color)
}

