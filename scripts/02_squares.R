# Squares ---------------------------------------------------------------------
#
# Last update: 20201103
# - Generate square stimuli with the following characteristics:
#    - Low complexity (4 squares)
#      - static
#      - mobile
#    - High complexity (many smaller squares)
#      - static
#      - mobile
#
# -----------------------------------------------------------------------------




# Source packages and helpers -------------------------------------------------

source(here::here("scripts", "01_helpers.R"))

# -----------------------------------------------------------------------------




# Low complexity squares ------------------------------------------------------

square_low_complexity_static <- function(color = 1) {

  square_static_data <- tribble(
  ~'x',  ~'y', ~'color', ~'phase',
  0.25, -1.25,  c_picker(color)[2],        1,
  0.25, -0.75,  c_picker(color)[1],        1,
  0.25, -0.25,  c_picker(color)[2],        1,
  0.25,  0.25,  c_picker(color)[1],        1,
  0.25,  0.75,  c_picker(color)[2],        1,
  0.25,  1.25,  c_picker(color)[1],        1,
  0.75, -1.25,  c_picker(color)[1],        1,
  0.75, -0.75,  c_picker(color)[2],        1,
  0.75, -0.25,  c_picker(color)[1],        1,
  0.75,  0.25,  c_picker(color)[2],        1,
  0.75,  0.75,  c_picker(color)[1],        1,
  0.75,  1.25,  c_picker(color)[2],        1,
 -0.32, -1.25,  c_picker(color)[1],        1,
 -0.32, -0.75,  c_picker(color)[2],        1,
 -0.32, -0.25,  c_picker(color)[1],        1,
 -0.32,  0.25,  c_picker(color)[2],        1,
 -0.32,  0.75,  c_picker(color)[1],        1,
 -0.32,  1.25,  c_picker(color)[2],        1,
  1.25, -1.25,  c_picker(color)[2],        1,
  1.25, -0.75,  c_picker(color)[1],        1,
  1.25, -0.25,  c_picker(color)[2],        1,
  1.25,  0.25,  c_picker(color)[1],        1,
  1.25,  0.75,  c_picker(color)[2],        1,
  1.25,  1.25,  c_picker(color)[1],        1,
  0.25, -0.75,  c_picker(color)[2],        2,
  0.25, -0.25,  c_picker(color)[1],        2,
  0.25,  0.25,  c_picker(color)[2],        2,
  0.25,  0.75,  c_picker(color)[1],        2,
  0.25,  1.25,  c_picker(color)[2],        2,
  0.25,  1.75,  c_picker(color)[1],        2,
  0.75, -0.75,  c_picker(color)[1],        2,
  0.75, -0.25,  c_picker(color)[2],        2,
  0.75,  0.25,  c_picker(color)[1],        2,
  0.75,  0.75,  c_picker(color)[2],        2,
  0.75,  1.25,  c_picker(color)[1],        2,
  0.75,  1.75,  c_picker(color)[2],        2,
 -0.32, -0.75,  c_picker(color)[1],        2,
 -0.32, -0.25,  c_picker(color)[2],        2,
 -0.32,  0.25,  c_picker(color)[1],        2,
 -0.32,  0.75,  c_picker(color)[2],        2,
 -0.32,  1.25,  c_picker(color)[1],        2,
 -0.32,  1.75,  c_picker(color)[2],        2,
  1.25, -0.75,  c_picker(color)[2],        2,
  1.25, -0.25,  c_picker(color)[1],        2,
  1.25,  0.25,  c_picker(color)[2],        2,
  1.25,  0.75,  c_picker(color)[1],        2,
  1.25,  1.25,  c_picker(color)[2],        2,
  1.25,  1.75,  c_picker(color)[1],        2,
  0.25, -0.25,  c_picker(color)[2],        3,
  0.25,  0.25,  c_picker(color)[1],        3,
  0.25,  0.75,  c_picker(color)[2],        3,
  0.25,  1.25,  c_picker(color)[1],        3,
  0.25,  1.75,  c_picker(color)[2],        3,
  0.25,  2.25,  c_picker(color)[1],        3,
  0.75, -0.25,  c_picker(color)[1],        3,  
  0.75,  0.25,  c_picker(color)[2],        3,
  0.75,  0.75,  c_picker(color)[1],        3,
  0.75,  1.25,  c_picker(color)[2],        3,
  0.75,  1.75,  c_picker(color)[1],        3,
  0.75,  2.25,  c_picker(color)[2],        3,
 -0.32, -0.25,  c_picker(color)[1],        3,
 -0.32,  0.25,  c_picker(color)[2],        3,
 -0.32,  0.75,  c_picker(color)[1],        3,
 -0.32,  1.25,  c_picker(color)[2],        3,
 -0.32,  1.75,  c_picker(color)[1],        3,
 -0.32,  2.25,  c_picker(color)[2],        3,
  1.25, -0.25,  c_picker(color)[2],        3, 
  1.25,  0.25,  c_picker(color)[1],        3,
  1.25,  0.75,  c_picker(color)[2],        3,
  1.25,  1.25,  c_picker(color)[1],        3,
  1.25,  1.75,  c_picker(color)[2],        3,
  1.25,  2.25,  c_picker(color)[1],        3)

  p_static_square <- square_static_data %>% 
  ggplot(., aes(x = x, y = y, color = color)) + 
    geom_point(pch = 15, size = 85, show.legend = F) + 
    scale_color_identity() + 
    coord_cartesian(xlim = c(-0.11, 1.05), ylim = c(-0.15, 1.05), expand = F) + 
    theme_clear() 

  return(p_static_square)
}

square_low_complexity_static_c1 <- square_low_complexity_static(color = 1)
square_low_complexity_static_c2 <- square_low_complexity_static(color = 2)
square_low_complexity_static_c3 <- square_low_complexity_static(color = 3)
square_low_complexity_static_c4 <- square_low_complexity_static(color = 4)
square_low_complexity_static_c5 <- square_low_complexity_static(color = 5)
square_low_complexity_static_c6 <- square_low_complexity_static(color = 6)
square_low_complexity_static_c8 <- square_low_complexity_static(color = 8)

# Save as .png
ggsave("square_low_complexity_static_c1.png", square_low_complexity_static_c1, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("square_low_complexity_static_c2.png", square_low_complexity_static_c2, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("square_low_complexity_static_c3.png", square_low_complexity_static_c3, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("square_low_complexity_static_c4.png", square_low_complexity_static_c4, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("square_low_complexity_static_c5.png", square_low_complexity_static_c5, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("square_low_complexity_static_c6.png", square_low_complexity_static_c6, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("square_low_complexity_static_c8.png", square_low_complexity_static_c8, 
  path = here("stim"), units = "in", height = 5, width = 5)

# -----------------------------------------------------------------------------














square_low_complexity_movement <- function(color = 1) {

  movement_static_data <- tribble(
  ~'x',  ~'y', ~'color', ~'phase',
  0.25, -1.25,  c_picker(color)[2],        1,
  0.25, -0.75,  c_picker(color)[1],        1,
  0.25, -0.25,  c_picker(color)[2],        1,
  0.25,  0.25,  c_picker(color)[1],        1,
  0.25,  0.75,  c_picker(color)[2],        1,
  0.25,  1.25,  c_picker(color)[1],        1,
  0.75, -1.25,  c_picker(color)[1],        1,
  0.75, -0.75,  c_picker(color)[2],        1,
  0.75, -0.25,  c_picker(color)[1],        1,
  0.75,  0.25,  c_picker(color)[2],        1,
  0.75,  0.75,  c_picker(color)[1],        1,
  0.75,  1.25,  c_picker(color)[2],        1,
 -0.32, -1.25,  c_picker(color)[1],        1,
 -0.32, -0.75,  c_picker(color)[2],        1,
 -0.32, -0.25,  c_picker(color)[1],        1,
 -0.32,  0.25,  c_picker(color)[2],        1,
 -0.32,  0.75,  c_picker(color)[1],        1,
 -0.32,  1.25,  c_picker(color)[2],        1,
  1.25, -1.25,  c_picker(color)[2],        1,
  1.25, -0.75,  c_picker(color)[1],        1,
  1.25, -0.25,  c_picker(color)[2],        1,
  1.25,  0.25,  c_picker(color)[1],        1,
  1.25,  0.75,  c_picker(color)[2],        1,
  1.25,  1.25,  c_picker(color)[1],        1,
  0.25, -0.75,  c_picker(color)[2],        2,
  0.25, -0.25,  c_picker(color)[1],        2,
  0.25,  0.25,  c_picker(color)[2],        2,
  0.25,  0.75,  c_picker(color)[1],        2,
  0.25,  1.25,  c_picker(color)[2],        2,
  0.25,  1.75,  c_picker(color)[1],        2,
  0.75, -0.75,  c_picker(color)[1],        2,
  0.75, -0.25,  c_picker(color)[2],        2,
  0.75,  0.25,  c_picker(color)[1],        2,
  0.75,  0.75,  c_picker(color)[2],        2,
  0.75,  1.25,  c_picker(color)[1],        2,
  0.75,  1.75,  c_picker(color)[2],        2,
 -0.32, -0.75,  c_picker(color)[1],        2,
 -0.32, -0.25,  c_picker(color)[2],        2,
 -0.32,  0.25,  c_picker(color)[1],        2,
 -0.32,  0.75,  c_picker(color)[2],        2,
 -0.32,  1.25,  c_picker(color)[1],        2,
 -0.32,  1.75,  c_picker(color)[2],        2,
  1.25, -0.75,  c_picker(color)[2],        2,
  1.25, -0.25,  c_picker(color)[1],        2,
  1.25,  0.25,  c_picker(color)[2],        2,
  1.25,  0.75,  c_picker(color)[1],        2,
  1.25,  1.25,  c_picker(color)[2],        2,
  1.25,  1.75,  c_picker(color)[1],        2,
  0.25, -0.25,  c_picker(color)[2],        3,
  0.25,  0.25,  c_picker(color)[1],        3,
  0.25,  0.75,  c_picker(color)[2],        3,
  0.25,  1.25,  c_picker(color)[1],        3,
  0.25,  1.75,  c_picker(color)[2],        3,
  0.25,  2.25,  c_picker(color)[1],        3,
  0.75, -0.25,  c_picker(color)[1],        3,  
  0.75,  0.25,  c_picker(color)[2],        3,
  0.75,  0.75,  c_picker(color)[1],        3,
  0.75,  1.25,  c_picker(color)[2],        3,
  0.75,  1.75,  c_picker(color)[1],        3,
  0.75,  2.25,  c_picker(color)[2],        3,
 -0.32, -0.25,  c_picker(color)[1],        3,
 -0.32,  0.25,  c_picker(color)[2],        3,
 -0.32,  0.75,  c_picker(color)[1],        3,
 -0.32,  1.25,  c_picker(color)[2],        3,
 -0.32,  1.75,  c_picker(color)[1],        3,
 -0.32,  2.25,  c_picker(color)[2],        3,
  1.25, -0.25,  c_picker(color)[2],        3, 
  1.25,  0.25,  c_picker(color)[1],        3,
  1.25,  0.75,  c_picker(color)[2],        3,
  1.25,  1.25,  c_picker(color)[1],        3,
  1.25,  1.75,  c_picker(color)[2],        3,
  1.25,  2.25,  c_picker(color)[1],        3)

  p_square_movement <- movement_static_data %>% 
  ggplot(., aes(x = x, y = y, color = color)) + 
    geom_point(pch = 15, size = 85, show.legend = F) + 
    scale_color_identity() + 
    coord_cartesian(xlim = c(-0.11, 1.05), ylim = c(-0.15, 1.05), expand = F) + 
    theme_clear(bg_color = "transparent") 

  return(p_square_movement)
  
}

low_complexity_movement_square_c1 <- square_low_complexity_movement(color = 1) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)
low_complexity_movement_square_c2 <- square_low_complexity_movement(color = 2) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)
low_complexity_movement_square_c3 <- square_low_complexity_movement(color = 3) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)
low_complexity_movement_square_c4 <- square_low_complexity_movement(color = 4) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)
low_complexity_movement_square_c5 <- square_low_complexity_movement(color = 5) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)
low_complexity_movement_square_c6 <- square_low_complexity_movement(color = 6) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)
low_complexity_movement_square_c8 <- square_low_complexity_movement(color = 8) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)


# Animate
low_complexity_movement_square_c1_p <- animate(
  low_complexity_movement_square_c1, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())
low_complexity_movement_square_c2_p <- animate(
  low_complexity_movement_square_c2, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())
low_complexity_movement_square_c3_p <- animate(
  low_complexity_movement_square_c3, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())
low_complexity_movement_square_c4_p <- animate(
  low_complexity_movement_square_c4, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())
low_complexity_movement_square_c5_p <- animate(
  low_complexity_movement_square_c5, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())
low_complexity_movement_square_c6_p <- animate(
  low_complexity_movement_square_c6, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())
low_complexity_movement_square_c8_p <- animate(
  low_complexity_movement_square_c8, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())



# Save as gif
anim_save(here("stim", "square_low_complexity_movement_c1.gif"), 
  low_complexity_movement_square_c1_p)
anim_save(here("stim", "square_low_complexity_movement_c2.gif"), 
  low_complexity_movement_square_c2_p)
anim_save(here("stim", "square_low_complexity_movement_c3.gif"), 
  low_complexity_movement_square_c3_p)
anim_save(here("stim", "square_low_complexity_movement_c4.gif"), 
  low_complexity_movement_square_c4_p)
anim_save(here("stim", "square_low_complexity_movement_c5.gif"), 
  low_complexity_movement_square_c5_p)
anim_save(here("stim", "square_low_complexity_movement_c6.gif"), 
  low_complexity_movement_square_c6_p)
anim_save(here("stim", "square_low_complexity_movement_c8.gif"), 
  low_complexity_movement_square_c8_p)

# -----------------------------------------------------------------------------














# High complexity static squares ----------------------------------------------

square_high_complexity_static <- function(color = 1) {

  high_complexity_square_df_1 <- 
  expand.grid(
    x = seq(0, 1, length.out = 9), 
    y = seq(0, 1, length.out = 8)
  ) %>% 
  mutate(color = rep(c_picker(pair = color), times = 36), 
         phase = 1) 

  # Add phase 2 with opposite colors to simulate vertical movement
  high_complexity_square_df_2 <- high_complexity_square_df_1 %>% 
    mutate(color = rep(c(c_picker(pair = 1)[2], 
                         c_picker(pair = 1)[1]), times = 36), 
         phase = 2)

  # Generate static plot
  high_complexity_static_square <- high_complexity_square_df_1 %>% 
  ggplot(., aes(x = x, y = y, color = color)) + 
    geom_point(pch = 15, size = 24, show.legend = F) + 
    scale_color_identity() + 
    coord_cartesian(xlim = c(0, 1), ylim = c(0, 1), expand = F) + 
    theme_clear(bg_color = "white") 

  return(high_complexity_static_square)
}

high_complexity_static_square_c1 <- square_high_complexity_static(color = 1)
high_complexity_static_square_c2 <- square_high_complexity_static(color = 2)
high_complexity_static_square_c3 <- square_high_complexity_static(color = 3)
high_complexity_static_square_c4 <- square_high_complexity_static(color = 4)
high_complexity_static_square_c5 <- square_high_complexity_static(color = 5)
high_complexity_static_square_c6 <- square_high_complexity_static(color = 6)
high_complexity_static_square_c8 <- square_high_complexity_static(color = 8)


# Save as .png
ggsave("square_high_complexity_static_c1.png", high_complexity_static_square_c1, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("square_high_complexity_static_c2.png", high_complexity_static_square_c2, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("square_high_complexity_static_c3.png", high_complexity_static_square_c3, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("square_high_complexity_static_c4.png", high_complexity_static_square_c4, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("square_high_complexity_static_c5.png", high_complexity_static_square_c5, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("square_high_complexity_static_c6.png", high_complexity_static_square_c6, 
  path = here("stim"), units = "in", height = 5, width = 5)
ggsave("square_high_complexity_static_c8.png", high_complexity_static_square_c8, 
  path = here("stim"), units = "in", height = 5, width = 5)

# -----------------------------------------------------------------------------









# High complexity movement squares --------------------------------------------

square_high_complexity_movement <- function(the_color = 1) {
  
  movement_square_data <- 
    read_csv(here("data", "high_complexity_movement_square.csv")) %>% 
    mutate(color = if_else(color == "white", c_picker(pair = the_color)[1], 
                                             c_picker(pair = the_color)[2]))

  p_movement_square <- movement_square_data %>% 
  ggplot(., aes(x = x, y = y, color = color)) + 
    geom_point(pch = 15, size = 24, show.legend = F) + 
    scale_color_identity() + 
    coord_cartesian(xlim = c(0, 1), ylim = c(-0.07, 0.93), expand = F) + 
    theme_clear() 
  
  return(p_movement_square)
  
}

high_complexity_movement_square_c1 <- square_high_complexity_movement(the_color = 1) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)
high_complexity_movement_square_c2 <- square_high_complexity_movement(the_color = 2) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)
high_complexity_movement_square_c3 <- square_high_complexity_movement(the_color = 3) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)
high_complexity_movement_square_c4 <- square_high_complexity_movement(the_color = 4) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)
high_complexity_movement_square_c5 <- square_high_complexity_movement(the_color = 5) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)
high_complexity_movement_square_c6 <- square_high_complexity_movement(the_color = 6) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)
high_complexity_movement_square_c8 <- square_high_complexity_movement(the_color = 8) + 
  transition_states(phase, transition_length = 1, state_length = 0, wrap = F)


# Animate
high_complexity_movement_square_c1_p <- animate(
  high_complexity_movement_square_c1, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())
high_complexity_movement_square_c2_p <- animate(
  high_complexity_movement_square_c2, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())
high_complexity_movement_square_c3_p <- animate(
  high_complexity_movement_square_c3, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())
high_complexity_movement_square_c4_p <- animate(
  high_complexity_movement_square_c4, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())
high_complexity_movement_square_c5_p <- animate(
  high_complexity_movement_square_c5, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())
high_complexity_movement_square_c6_p <- animate(
  high_complexity_movement_square_c6, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())
high_complexity_movement_square_c8_p <- animate(
  high_complexity_movement_square_c8, fps = 50, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150, renderer = gifski_renderer())

# Save as .gif
anim_save(here("stim", "square_high_complexity_movement_c1.gif"), 
  high_complexity_movement_square_c1_p)
anim_save(here("stim", "square_high_complexity_movement_c2.gif"), 
  high_complexity_movement_square_c2_p)
anim_save(here("stim", "square_high_complexity_movement_c3.gif"), 
  high_complexity_movement_square_c3_p)
anim_save(here("stim", "square_high_complexity_movement_c4.gif"), 
  high_complexity_movement_square_c4_p)
anim_save(here("stim", "square_high_complexity_movement_c5.gif"), 
  high_complexity_movement_square_c5_p)
anim_save(here("stim", "square_high_complexity_movement_c6.gif"), 
  high_complexity_movement_square_c6_p)
anim_save(here("stim", "square_high_complexity_movement_c8.gif"), 
  high_complexity_movement_square_c8_p)

# -----------------------------------------------------------------------------



# save to mp4 attempts (not working)
# low_complexity_test <- animate(fps = 50, duration = 2.0, 
#   units = "in", height = 5, width = 5, res = 150, 
#   low_complexity_movement_square_c1, renderer = ffmpeg_renderer())
# anim_save(here("stim", "test.mp4"), low_complexity_test)


# Visual Angle = 2 x tan-1((Object Size / 2) / Object Distance)

visual_angle <- function(obj, dist) {
  va <- 2 * atan((obj / 2) / dist) *  (180 / pi)
  return(va)
}

visual_angle(obj = 2.5, dist = 18)

