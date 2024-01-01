#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @import Quandl
#' @import dplyr
#' @import ggplot2
#' @import tidyr
#' @import timetk
#' @import forcats
#' @noRd
app_server <- function(input, output, session) {
  r <- reactiveValues()

  mod_data_import_server("data_import", r=r)
  mod_CoT_server('CoT_1', r=r)
}
