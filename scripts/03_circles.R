# Circles ---------------------------------------------------------------------
#
#
#
# -----------------------------------------------------------------------------


# Source packages and helpers -------------------------------------------------

source(here::here("scripts", "01_helpers.R"))

# -----------------------------------------------------------------------------




# expanding_circle ------------------------------------------------------------

expanding_circle <- bind_rows(
  make_circle(diameter = 0.01, npoints = 200) %>% mutate(s = 1), 
  make_circle(diameter = 0.25, npoints = 200) %>% mutate(s = 1),
  make_circle(diameter = 0.50, npoints = 200) %>% mutate(s = 1), 
  make_circle(diameter = 0.75, npoints = 200) %>% mutate(s = 1), 
  make_circle(diameter = 0.25, npoints = 200) %>% mutate(s = 2), 
  make_circle(diameter = 0.50, npoints = 200) %>% mutate(s = 2), 
  make_circle(diameter = 0.75, npoints = 200) %>% mutate(s = 2), 
  make_circle(diameter = 1.00, npoints = 200) %>% mutate(s = 2)) %>% 
  ggplot(., aes(x = x, y = y)) + 
    geom_point(show.legend = F) + 
    coord_cartesian(xlim = c(-0.4, 0.4), ylim = c(-0.4, 0.4), expand = F) + 
    theme_clear() + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) + 
    enter_fade() +
    exit_fade()

expanding_circle_p <- animate(expanding_circle, 
                              fps = 100, duration = 2.25, 
                              device = "png")

anim_save("expanding_circle.gif", expanding_circle_p)

# -----------------------------------------------------------------------------
