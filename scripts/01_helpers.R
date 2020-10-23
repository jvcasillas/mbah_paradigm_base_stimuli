# Helper functions ------------------------------------------------------------


# -----------------------------------------------------------------------------




# Source packages -------------------------------------------------------------

source(here::here("scripts", "00_libs.R"))

# -----------------------------------------------------------------------------



# Circle maker 
make_circle <- function(center = c(0, 0), diameter = 1, npoints = 100){

  r = diameter / 2
  tt <- seq(0, 2 * pi, length.out = npoints)
  xx <- center[1] + r * cos(tt)
  yy <- center[2] + r * sin(tt)
  return(data.frame(x = xx, y = yy))

}

# ggplot2 theme
theme_clear <- function(bg_color = NULL) {
  list(
    theme_void(), 
    theme(panel.background = element_rect(fill = bg_color, colour = bg_color))
  )
}
