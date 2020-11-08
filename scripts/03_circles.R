# Circles ---------------------------------------------------------------------
#
# Last update: 20201108
# - Generate circle stimuli with the following characteristics:
#    - Low complexity (1 circle with expanding ring)
#      - static
#      - mobile
#    - High complexity (many smaller expanding rings)
#      - static
#      - mobile
#
# -----------------------------------------------------------------------------




# Source packages and helpers -------------------------------------------------

source(here::here("scripts", "01_helpers.R"))

# -----------------------------------------------------------------------------




# Low complexity circle ------------------------------------------------------

# Static
low_complexity_static_circle <- make_circle(diameter = 0.75, npoints = 200) %>% 
  mutate(position = "outer") %>% 
  add_row(x = 0, y = 0, position = "inner") %>% 
  ggplot(., aes(x = x, y = y, size = position)) + 
    geom_point(show.legend = F) + 
    scale_size_manual(values = c(50, 10)) + 
    coord_cartesian(xlim = c(-0.4, 0.4), ylim = c(-0.4, 0.4), expand = F) + 
    theme_clear()

# Save as .png
ggsave("low_complexity_static_circle.png", low_complexity_static_circle, 
  path = here("stim"), units = "in", height = 5, width = 5)

# Expanding movement
low_complexity_movement_circle <- bind_rows(
    make_circle(diameter = 0.15, npoints = 200) %>% mutate(s = 1), 
    make_circle(diameter = 0.75, npoints = 200) %>% mutate(s = 2)) %>% 
  mutate(position = "outer")  %>% 
  add_row(x = 0, y = 0, s = 1, position = "inner") %>% 
  add_row(x = 0, y = 0, s = 2, position = "inner") %>% 
  ggplot(., aes(x = x, y = y, size = position)) + 
    geom_point(show.legend = F) + 
    scale_size_manual(values = c(50, 10)) + 
    coord_cartesian(xlim = c(-0.4, 0.4), ylim = c(-0.4, 0.4), expand = F) + 
    theme_clear() + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) + 
    enter_fade() +
    exit_fade()

# Animate
low_complexity_movement_circle_p <- animate(low_complexity_movement_circle, 
                              fps = 100, duration = 1.5, 
                              device = "png")

# Save as .gif
anim_save(here("stim", "low_complexity_movement_circle.gif"), 
  low_complexity_movement_circle_p)

# -----------------------------------------------------------------------------




# High complexity circle -----------------------------------------------------

# Static
high_complexity_static_circle <- bind_rows(
  make_circle(diameter = 0.01, npoints = 200) %>% mutate(s = 1), 
  make_circle(diameter = 0.25, npoints = 200) %>% mutate(s = 1),
  make_circle(diameter = 0.50, npoints = 200) %>% mutate(s = 1), 
  make_circle(diameter = 0.25, npoints = 200) %>% mutate(s = 2), 
  make_circle(diameter = 0.50, npoints = 200) %>% mutate(s = 2), 
  make_circle(diameter = 0.75, npoints = 200) %>% mutate(s = 2)) %>% 
  mutate(position = "outer") %>% 
  add_row(x = 0, y = 0, s = 1, position = "inner") %>% 
  add_row(x = 0, y = 0, s = 2, position = "inner") %>% 
  ggplot(., aes(x = x, y = y, size = position)) + 
    geom_point(show.legend = F) + 
    scale_size_manual(values = c(10, 3)) + 
    coord_cartesian(xlim = c(-0.4, 0.4), ylim = c(-0.4, 0.4), expand = F) + 
    theme_clear()

# Save as .png
ggsave("high_complexity_static_circle.png", high_complexity_static_circle, 
  path = here("stim"), units = "in", height = 5, width = 5)

# Expanding movement
high_complexity_movement_circle <- bind_rows(
  make_circle(diameter = 0.01, npoints = 200) %>% mutate(s = 1), 
  make_circle(diameter = 0.25, npoints = 200) %>% mutate(s = 1),
  make_circle(diameter = 0.50, npoints = 200) %>% mutate(s = 1), 
  make_circle(diameter = 0.25, npoints = 200) %>% mutate(s = 2), 
  make_circle(diameter = 0.50, npoints = 200) %>% mutate(s = 2), 
  make_circle(diameter = 0.75, npoints = 200) %>% mutate(s = 2)) %>% 
  mutate(position = "outer") %>% 
  add_row(x = 0, y = 0, s = 1, position = "inner") %>% 
  add_row(x = 0, y = 0, s = 2, position = "inner") %>% 
  ggplot(., aes(x = x, y = y, size = position)) + 
    geom_point(
      aes(alpha = if_else(abs(x) >= 0.252 & position == "outer" | 
                          abs(y) >= 0.255 & position == "outer" , 0.0, 1)), 
      show.legend = F) + 
    scale_size_manual(values = c(10, 3)) + 
    coord_cartesian(xlim = c(-0.4, 0.4), ylim = c(-0.4, 0.4), expand = F) + 
    theme_clear() + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) + 
    exit_fade(alpha = 0.2)

# Animate
high_complexity_movement_circle_p <- animate(high_complexity_movement_circle, 
                              fps = 100, duration = 1.5, 
                              device = "png")

# Save as .gif
anim_save(here("stim", "high_complexity_movement_circle.gif"), 
  high_complexity_movement_circle_p)

# -----------------------------------------------------------------------------
