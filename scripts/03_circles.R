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
    size = c(120, 35, 120), 
    color = c(c_picker(color)[1], c_picker(color)[2], c_picker(color)[2]),
    shape = c(16, 21, 21), 
    stroke = c(30, 20, 25.55))
  
  p_static_circle <- static_circle_data %>% 
  ggplot(., aes(x = x, y = y)) + 
    geom_point(aes(size = size, color = color, shape = shape, stroke = stroke), 
      show.legend = F) +
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
circle_low_complexity_static_c5 <- circle_low_complexity_static(color = 5)
circle_low_complexity_static_c6 <- circle_low_complexity_static(color = 6)
circle_low_complexity_static_c8 <- circle_low_complexity_static(color = 8)


# Save as .png
ggsave("circle_low_complexity_static_c1.png", circle_low_complexity_static_c1, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_low_complexity_static_c2.png", circle_low_complexity_static_c2, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_low_complexity_static_c3.png", circle_low_complexity_static_c3, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_low_complexity_static_c4.png", circle_low_complexity_static_c4, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_low_complexity_static_c5.png", circle_low_complexity_static_c5, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_low_complexity_static_c6.png", circle_low_complexity_static_c6, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_low_complexity_static_c8.png", circle_low_complexity_static_c8, 
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
low_complexity_movement_circle_c5 <- circle_low_complexity_movement(color = 5) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 
low_complexity_movement_circle_c6 <- circle_low_complexity_movement(color = 6) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 
low_complexity_movement_circle_c8 <- circle_low_complexity_movement(color = 8) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 


# Animate
low_complexity_movement_circle_c1_p <- 
  animate(low_complexity_movement_circle_c1, fps = 100, duration = 2.0,
    height = 5, width = 5, units = "in", res = 150)
low_complexity_movement_circle_c2_p <- 
  animate(low_complexity_movement_circle_c2, fps = 100, duration = 2.0,
    height = 5, width = 5, units = "in", res = 150)
low_complexity_movement_circle_c3_p <- 
  animate(low_complexity_movement_circle_c3, fps = 100, duration = 2.0,
    height = 5, width = 5, units = "in", res = 150)
low_complexity_movement_circle_c4_p <- 
  animate(low_complexity_movement_circle_c4, fps = 100, duration = 2.0,
    height = 5, width = 5, units = "in", res = 150)
low_complexity_movement_circle_c5_p <- 
  animate(low_complexity_movement_circle_c5, fps = 100, duration = 2.0,
    height = 5, width = 5, units = "in", res = 150)
low_complexity_movement_circle_c6_p <- 
  animate(low_complexity_movement_circle_c6, fps = 100, duration = 2.0,
    height = 5, width = 5, units = "in", res = 150)
low_complexity_movement_circle_c8_p <- 
  animate(low_complexity_movement_circle_c8, fps = 100, duration = 2.0,
    height = 5, width = 5, units = "in", res = 150)


# Save as .gif
anim_save(here("stim", "circle_low_complexity_movement_c1.gif"), 
  low_complexity_movement_circle_c1_p)
anim_save(here("stim", "circle_low_complexity_movement_c2.gif"), 
  low_complexity_movement_circle_c2_p)
anim_save(here("stim", "circle_low_complexity_movement_c3.gif"), 
  low_complexity_movement_circle_c3_p)
anim_save(here("stim", "circle_low_complexity_movement_c4.gif"), 
  low_complexity_movement_circle_c4_p)
anim_save(here("stim", "circle_low_complexity_movement_c5.gif"), 
  low_complexity_movement_circle_c5_p)
anim_save(here("stim", "circle_low_complexity_movement_c6.gif"), 
  low_complexity_movement_circle_c6_p)
anim_save(here("stim", "circle_low_complexity_movement_c8.gif"), 
  low_complexity_movement_circle_c8_p)


#p <- ggplot(airquality, aes(Day, Temp)) + 
#    geom_line(size = 2, colour = 'steelblue') + 
#    transition_states(Month, 4, 1) + 
#    shadow_mark(size = 1, colour = 'grey')

#b <- animate(p, duration = 20, fps = 20, renderer = av_renderer())
#anim_save("output.mp4", b)




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
circle_high_complexity_static_c5 <- circle_high_complexity_static(color = 5)
circle_high_complexity_static_c6 <- circle_high_complexity_static(color = 6)
circle_high_complexity_static_c8 <- circle_high_complexity_static(color = 8)

# Save as .png
ggsave("circle_high_complexity_static_c1.png", circle_high_complexity_static_c1, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_high_complexity_static_c2.png", circle_high_complexity_static_c2, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_high_complexity_static_c3.png", circle_high_complexity_static_c3, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_high_complexity_static_c4.png", circle_high_complexity_static_c4, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_high_complexity_static_c5.png", circle_high_complexity_static_c5, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_high_complexity_static_c6.png", circle_high_complexity_static_c6, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("circle_high_complexity_static_c8.png", circle_high_complexity_static_c8, 
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
high_complexity_movement_circle_c5 <- circle_high_complexity_movement(color = 5) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 
high_complexity_movement_circle_c6 <- circle_high_complexity_movement(color = 6) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 
high_complexity_movement_circle_c8 <- circle_high_complexity_movement(color = 8) + 
    transition_states(s, transition_length = 0.5, state_length = 0, wrap = F) 

# Animate
high_complexity_movement_circle_c1_p <- 
  animate(high_complexity_movement_circle_c1, fps = 100, duration = 2.0, 
    height = 5, width = 5, units = "in", res = 150)
high_complexity_movement_circle_c2_p <- 
  animate(high_complexity_movement_circle_c2, fps = 100, duration = 2.0, 
    height = 5, width = 5, units = "in", res = 150)
high_complexity_movement_circle_c3_p <- 
  animate(high_complexity_movement_circle_c3, fps = 100, duration = 2.0, 
    height = 5, width = 5, units = "in", res = 150)
high_complexity_movement_circle_c4_p <- 
  animate(high_complexity_movement_circle_c4, fps = 100, duration = 2.0, 
    height = 5, width = 5, units = "in", res = 150)
high_complexity_movement_circle_c5_p <- 
  animate(high_complexity_movement_circle_c5, fps = 100, duration = 2.0, 
    height = 5, width = 5, units = "in", res = 150)
high_complexity_movement_circle_c6_p <- 
  animate(high_complexity_movement_circle_c6, fps = 100, duration = 2.0, 
    height = 5, width = 5, units = "in", res = 150)
high_complexity_movement_circle_c8_p <- 
  animate(high_complexity_movement_circle_c8, fps = 100, duration = 2.0, 
    height = 5, width = 5, units = "in", res = 150)

# Save as .gif
anim_save(here("stim", "circle_high_complexity_movement_c1.gif"), 
  high_complexity_movement_circle_c1_p)
anim_save(here("stim", "circle_high_complexity_movement_c2.gif"), 
  high_complexity_movement_circle_c2_p)
anim_save(here("stim", "circle_high_complexity_movement_c3.gif"), 
  high_complexity_movement_circle_c3_p)
anim_save(here("stim", "circle_high_complexity_movement_c4.gif"), 
  high_complexity_movement_circle_c4_p)
anim_save(here("stim", "circle_high_complexity_movement_c5.gif"), 
  high_complexity_movement_circle_c5_p)
anim_save(here("stim", "circle_high_complexity_movement_c6.gif"), 
  high_complexity_movement_circle_c6_p)
anim_save(here("stim", "circle_high_complexity_movement_c8.gif"), 
  high_complexity_movement_circle_c8_p)

# -----------------------------------------------------------------------------






# Area calculations

# Low complex
red1 <- 75570
red2 <- 656343

blue1 <- 158025
blue2 <- 573821

total <- (red1 + red2) + (blue1 + blue2)
diff <- (red1 + red2) - (blue1 + blue2)

# high complex
red1  <- 24528
red2  <- 123145
red3  <- 221700
red4  <- 320387

blue1 <- 
blue2 <- 
blue3 <- 
blue4 <- 
