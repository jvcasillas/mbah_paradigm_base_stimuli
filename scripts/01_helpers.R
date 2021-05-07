# Helper functions ------------------------------------------------------------


# -----------------------------------------------------------------------------




# Source packages -------------------------------------------------------------

source(here::here("scripts", "00_libs.R"))

# -----------------------------------------------------------------------------




# helpers ---------------------------------------------------------------------

# Download colors
if (F) {
  file_url <- "https://raw.githubusercontent.com/jvcasillas/MBAH_ColorSwatches/master/MBAH_colors.csv"
  download.file(file_url, destfile = here("data", "colors.csv"), method = "curl")
}

# Read in csv of colors
the_colors <- read_delim(here("data", "colors.csv"), delim = ";")

# Color picker function
c_picker <- function(pair = 1) {
  out <- c(the_colors[the_colors$X1 == pair, 2] %>% pull, 
  the_colors[the_colors$X1 == pair, 3] %>% pull)
  return(out)
}


# Circle maker 
make_circle <- function(center = c(0, 0), diameter = 1, npoints = 100){

  r = diameter / 2
  tt <- seq(0, 2 * pi, length.out = npoints)
  xx <- center[1] + r * cos(tt)
  yy <- center[2] + r * sin(tt)
  return(data.frame(x = xx, y = yy))

}

# ggplot2 theme
theme_clear <- function(bg_color = the_colors[9, 2] %>% pull) {
  list(
    theme_void(), 
    theme(panel.background = element_rect(fill = bg_color, colour = bg_color))
  )
}
