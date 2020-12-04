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




# Low complexity static circles -----------------------------------------------

circle_low_complexity_static <- function(color = 1) {

  static_circle_data <- tibble(
    x = c(0, 0, 0), 
    y = c(0, 0, 0), 
    size = c(120, 20, 120), 
    color = c(c_picker(color)[1], c_picker(color)[2], c_picker(color)[2]),
    shape = c(16, 21, 21))
  
  p_static_circle <- static_circle_data %>% 
  ggplot(., aes(x = x, y = y)) + 
    geom_point(aes(size = size, color = color, shape = shape), 
      show.legend = F, stroke = 30) +
    scale_size_identity() + 
    scale_color_identity() + 
    scale_shape_identity() + 
    coord_cartesian(xlim = c(-0.4, 0.4), ylim = c(-0.4, 0.4), expand = F) + 
    theme_clear()

  return(p_static_circle)
}

circle_low_complexity_static_c1 <- circle_low_complexity_static(color = 1)
circle_low_complexity_static_c2 <- circle_low_complexity_static(color = 2)
circle_low_complexity_static_c3 <- circle_low_complexity_static(color = 3)
circle_low_complexity_static_c4 <- circle_low_complexity_static(color = 4)

# Save as .png
ggsave("circle_low_complexity_static_c1.png", circle_low_complexity_static_c1, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_low_complexity_static_c2.png", circle_low_complexity_static_c2, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_low_complexity_static_c3.png", circle_low_complexity_static_c3, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_low_complexity_static_c4.png", circle_low_complexity_static_c4, 
  path = here("stim"), units = "in", height = 5, width = 5)

# -----------------------------------------------------------------------------




# Low complexity mobile circles -----------------------------------------------

circle_low_complexity_movement <- function(color = 1) {

  movement_circle_data <- tribble(
  ~"x", ~"y", ~"size", ~"color", ~"shape", ~"stroke", ~"s", 
    0, 0,   0, c_picker(color)[1], 21,  0, 1, 
    0, 0,   0, c_picker(color)[2], 21,  0, 1, 
    0, 0,   0, c_picker(color)[1], 21, 30, 1, 
    0, 0,  20, c_picker(color)[2], 21, 30, 1, 
    0, 0,  60, c_picker(color)[1], 21, 45, 1, 
    0, 0, 120, c_picker(color)[2], 21, 30, 1, 
    0, 0,   0, c_picker(color)[1], 21,  0, 2, 
    0, 0,   0, c_picker(color)[2], 21, 30, 2, 
    0, 0,  20, c_picker(color)[1], 21, 30, 2, 
    0, 0,  60, c_picker(color)[2], 21, 45, 2, 
    0, 0, 120, c_picker(color)[1], 21, 30, 2, 
    0, 0, 160, c_picker(color)[2], 21,  0, 2, 
    0, 0,   0, c_picker(color)[1], 21, 30, 3, 
    0, 0,  20, c_picker(color)[2], 21, 30, 3, 
    0, 0,  60, c_picker(color)[1], 21, 45, 3, 
    0, 0, 120, c_picker(color)[2], 21, 30, 3, 
    0, 0, 160, c_picker(color)[1], 21,  0, 3, 
    0, 0, 160, c_picker(color)[2], 21,  0, 3, 
  ) 

  p_movement_circle <- movement_circle_data %>% 
  ggplot() + 
    geom_point(aes(x = x, y = y, size = size, color = color, shape = shape, 
      stroke = stroke), 
      show.legend = F) +
    scale_size_identity() + 
    scale_color_identity() + 
    scale_shape_identity() + 
    coord_cartesian(xlim = c(-0.4, 0.4), ylim = c(-0.4, 0.4), expand = F) + 
    theme_clear() 
  
  return(p_movement_circle)
}

low_complexity_movement_circle_c1 <- circle_low_complexity_movement(color = 1) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 
low_complexity_movement_circle_c2 <- circle_low_complexity_movement(color = 2) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 
low_complexity_movement_circle_c3 <- circle_low_complexity_movement(color = 3) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 
low_complexity_movement_circle_c4 <- circle_low_complexity_movement(color = 4) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 

# Animate
low_complexity_movement_circle_c1_p <- 
  animate(low_complexity_movement_circle_c1, fps = 100, duration = 1.5, device = "png")
low_complexity_movement_circle_c2_p <- 
  animate(low_complexity_movement_circle_c2, fps = 100, duration = 1.5, device = "png")
low_complexity_movement_circle_c3_p <- 
  animate(low_complexity_movement_circle_c3, fps = 100, duration = 1.5, device = "png")
low_complexity_movement_circle_c4_p <- 
  animate(low_complexity_movement_circle_c4, fps = 100, duration = 1.5, device = "png")

# Save as .gif
anim_save(here("stim", "circle_low_complexity_movement_c1.gif"), 
  low_complexity_movement_circle_c1_p)
anim_save(here("stim", "circle_low_complexity_movement_c2.gif"), 
  low_complexity_movement_circle_c2_p)
anim_save(here("stim", "circle_low_complexity_movement_c3.gif"), 
  low_complexity_movement_circle_c3_p)
anim_save(here("stim", "circle_low_complexity_movement_c4.gif"), 
  low_complexity_movement_circle_c4_p)

# -----------------------------------------------------------------------------

















# High complexity static circles ----------------------------------------------

circle_high_complexity_static <- function(color = 1) {

  static_circle_data <- tibble(
    x = c(0, 0, 0, 0, 0), 
    y = c(0, 0, 0, 0, 0), 
    size = c(140, seq(20, 140, length.out = 4)), 
    shape = c(16, rep(21, 4)), 
    color = c(c_picker(pair = color)[1], c_picker(pair = color)[2], 
              c_picker(pair = color)[2], c_picker(pair = color)[2], 
              c_picker(pair = color)[2])) 

  p_static_circle <- static_circle_data %>% 
  ggplot(., aes(x = x, y = y)) + 
    geom_point(aes(size = size, shape = shape, color = color), 
      show.legend = F, stroke = 15) + 
    scale_shape_identity() + 
    scale_size_identity() + 
    scale_color_identity() + 
    coord_cartesian(xlim = c(-0.4, 0.4), ylim = c(-0.4, 0.4), expand = F) + 
    theme_clear()

  return(p_static_circle)

}

circle_high_complexity_static_c1 <- circle_high_complexity_static(color = 1)
circle_high_complexity_static_c2 <- circle_high_complexity_static(color = 2)
circle_high_complexity_static_c3 <- circle_high_complexity_static(color = 3)
circle_high_complexity_static_c4 <- circle_high_complexity_static(color = 4)

# Save as .png
ggsave("circle_high_complexity_static_c1.png", circle_high_complexity_static_c1, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_high_complexity_static_c2.png", circle_high_complexity_static_c2, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_high_complexity_static_c3.png", circle_high_complexity_static_c3, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_high_complexity_static_c4.png", circle_high_complexity_static_c4, 
  path = here("stim"), units = "in", height = 5, width = 5)

# -----------------------------------------------------------------------------




# High complexity mobile circles ----------------------------------------------

circle_high_complexity_movement <- function(color = 1) {

  movement_circle_data <- tribble(
  ~"x", ~"y", ~"size", ~"color", ~"shape", ~"stroke", ~"s", 
    0, 0,   0, c_picker(color)[1], 21, 15, 1, 
    0, 0,   0, c_picker(color)[2], 21, 15, 1, 
    0, 0,   0, c_picker(color)[1], 21, 15, 1, 
    0, 0,  20, c_picker(color)[2], 21, 15, 1, 
    0, 0,  40, c_picker(color)[1], 21, 15, 1, 
    0, 0,  60, c_picker(color)[2], 21, 15, 1, 
    0, 0,  80, c_picker(color)[1], 21, 15, 1, 
    0, 0, 100, c_picker(color)[2], 21, 15, 1, 
    0, 0, 120, c_picker(color)[1], 21, 15, 1, 
    0, 0, 140, c_picker(color)[2], 21, 15, 1, 

    0, 0,   0, c_picker(color)[1], 21, 15, 2, 
    0, 0,   0, c_picker(color)[2], 21, 15, 2, 
    0, 0,  20, c_picker(color)[1], 21, 15, 2, 
    0, 0,  40, c_picker(color)[2], 21, 15, 2, 
    0, 0,  60, c_picker(color)[1], 21, 15, 2, 
    0, 0,  80, c_picker(color)[2], 21, 15, 2, 
    0, 0, 100, c_picker(color)[1], 21, 15, 2, 
    0, 0, 120, c_picker(color)[2], 21, 15, 2, 
    0, 0, 140, c_picker(color)[1], 21, 15, 2, 
    0, 0, 160, c_picker(color)[2], 21,  0, 2, 

    0, 0,   0, c_picker(color)[1], 21, 15, 3, 
    0, 0,  20, c_picker(color)[2], 21, 15, 3, 
    0, 0,  40, c_picker(color)[1], 21, 15, 3, 
    0, 0,  60, c_picker(color)[2], 21, 15, 3, 
    0, 0,  80, c_picker(color)[1], 21, 15, 3, 
    0, 0, 100, c_picker(color)[2], 21, 15, 3, 
    0, 0, 120, c_picker(color)[1], 21, 15, 3, 
    0, 0, 140, c_picker(color)[2], 21, 15, 3, 
    0, 0, 160, c_picker(color)[1], 21,  0, 3, 
    0, 0, 160, c_picker(color)[2], 21,  0, 3, ) 

  p_movement_circle <- movement_circle_data %>% 
  ggplot() + 
    geom_point(aes(x = x, y = y, size = size, color = color, shape = shape, 
      stroke = stroke), show.legend = F) +
    scale_size_identity() + 
    scale_color_identity() + 
    scale_shape_identity() + 
    coord_cartesian(xlim = c(-0.4, 0.4), ylim = c(-0.4, 0.4), expand = F) + 
    theme_clear() 
  
  return(p_movement_circle)
}

high_complexity_movement_circle_c1 <- circle_high_complexity_movement(color = 1) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 
high_complexity_movement_circle_c2 <- circle_high_complexity_movement(color = 2) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 
high_complexity_movement_circle_c3 <- circle_high_complexity_movement(color = 3) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 
high_complexity_movement_circle_c4 <- circle_high_complexity_movement(color = 4) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 

# Animate
high_complexity_movement_circle_c1_p <- 
  animate(high_complexity_movement_circle_c1, fps = 100, duration = 1.5, device = "png")
high_complexity_movement_circle_c2_p <- 
  animate(high_complexity_movement_circle_c2, fps = 100, duration = 1.5, device = "png")
high_complexity_movement_circle_c3_p <- 
  animate(high_complexity_movement_circle_c3, fps = 100, duration = 1.5, device = "png")
high_complexity_movement_circle_c4_p <- 
  animate(high_complexity_movement_circle_c4, fps = 100, duration = 1.5, device = "png")

# Save as .gif
anim_save(here("stim", "circle_high_complexity_movement_c1.gif"), 
  high_complexity_movement_circle_c1_p)
anim_save(here("stim", "circle_high_complexity_movement_c2.gif"), 
  high_complexity_movement_circle_c2_p)
anim_save(here("stim", "circle_high_complexity_movement_c3.gif"), 
  high_complexity_movement_circle_c3_p)
anim_save(here("stim", "circle_high_complexity_movement_c4.gif"), 
  high_complexity_movement_circle_c4_p)

# -----------------------------------------------------------------------------
