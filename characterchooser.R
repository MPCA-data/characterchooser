#' characterchooser
#'
#' This is a function that randomly selects Star Wars characters from the dplyr database and then states that they are the users favorite character.
#' @param my_fave Your favorite StarWars character. Default = sampled from dplyr::starwars name column.
#' @keywords Star Wars
#' @export
#' @examples
#' characterchooser()


characterchooser <- function(my_fave = character) {
  library(data.table)
  # Pet message
  starwars <- data.table(starwars)

  character <- sample_n(starwars, 1)

  favorite_char <- character$name

  favorite_char <- toupper(favorite_char)

  msg <- paste0("The best character in the whole wide world of Star Wars is ", favorite_char, "!!! No contest. At all.")

  print(msg)

}
