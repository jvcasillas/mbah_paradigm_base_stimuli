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

# Create 2x2 low complexity dataframe
low_complexity_square_df <- tribble(
  ~'x',  ~'y', ~'color', ~'phase',
  0.25, -0.75,  "black",        1,
  0.25, -0.25,  "black",        2,
  0.25,  0.25,  "black",        3,
  0.25, -0.25,  "white",        1,
  0.25,  0.25,  "white",        2,
  0.25,  0.75,  "white",        3,
  0.25,  0.25,  "black",        1,
  0.25,  0.75,  "black",        2,
  0.25,  1.25,  "black",        3,
  0.25,  0.75,  "white",        1,
  0.25,  1.25,  "white",        2,
  0.25,  1.75,  "white",        3,
  0.75, -0.75,  "white",        1,
  0.75, -0.25,  "white",        2,
  0.75,  0.25,  "white",        3,
  0.75, -0.25,  "black",        1,
  0.75,  0.25,  "black",        2,
  0.75,  0.75,  "black",        3,
  0.75,  0.25,  "white",        1,
  0.75,  0.75,  "white",        2,
  0.75,  1.25,  "white",        3,
  0.75,  0.75,  "black",        1,
  0.75,  1.25,  "black",        2,
  0.75,  1.75,  "black",        3,
 -0.32, -0.75,  "white",        1,
 -0.32, -0.25,  "white",        2,
 -0.32,  0.25,  "white",        3,
 -0.32, -0.25,  "black",        1,
 -0.32,  0.25,  "black",        2,
 -0.32,  0.75,  "black",        3,
 -0.32,  0.25,  "white",        1,
 -0.32,  0.75,  "white",        2,
 -0.32,  1.25,  "white",        3,
 -0.32,  0.75,  "black",        1,
 -0.32,  1.25,  "black",        2,
 -0.32,  1.75,  "black",        3,
  1.25, -0.75,  "black",        1,
  1.25, -0.25,  "black",        2,
  1.25,  0.25,  "black",        3,
  1.25, -0.25,  "white",        1,
  1.25,  0.25,  "white",        2,
  1.25,  0.75,  "white",        3,
  1.25,  0.25,  "black",        1,
  1.25,  0.75,  "black",        2,
  1.25,  1.25,  "black",        3,
  1.25,  0.75,  "white",        1,
  1.25,  1.25,  "white",        2,
  1.25,  1.75,  "white",        3)

# Simple static plot
low_complexity_static_square <- low_complexity_square_df %>% 
  ggplot(., aes(x = x, y = y, color = color)) + 
    geom_point(pch = 15, size = 85, show.legend = F) + 
    scale_color_manual(values = c("black", "white")) + 
    coord_cartesian(xlim = c(-0.11, 1.05), ylim = c(0, 1), expand = F) + 
    theme_clear(bg_color = "grey") 

# Save as .png
ggsave("low_complexity_static_square.png", low_complexity_static_square, 
  path = here("stim"), units = "in", height = 5, width = 5)

# Add circular movement
low_complexity_movement_square <- low_complexity_square_df %>% 
  ggplot(., aes(x = x, y = y, color = color)) + 
    geom_point(pch = 15, size = 85, show.legend = F) + 
    scale_color_manual(values = c("black", "white")) + 
    coord_cartesian(xlim = c(-0.11, 1.05), ylim = c(0, 1), expand = F) + 
    theme_clear(bg_color = "transparent") + 
    transition_states(phase, transition_length = 1, state_length = 0, wrap = F)

# Animate
low_complexity_movement_square_p <- animate(
  low_complexity_movement_square, fps = 100, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150)

# Save as gif
anim_save(here("stim", "low_complexity_movement_square.gif"), 
  low_complexity_movement_square_p)

# -----------------------------------------------------------------------------




# High complexity squares -----------------------------------------------------

# Generate high complexticy grid
high_complexity_square_df_1 <- 
  expand.grid(
    x = seq(0, 1, length.out = 9), 
    y = seq(0, 1, length.out = 8)
  ) %>% 
  mutate(color = rep(c("black", "white"), times = 36), 
         phase = 1) 

# Add phase 2 with opposite colors to simulate vertical movement
high_complexity_square_df_2 <- high_complexity_square_df_1 %>% 
  mutate(color = if_else(color == "black", "white", "black"), 
         phase = 2)

# Generate static plot
high_complexity_static_square <- high_complexity_square_df_1 %>% 
  ggplot(., aes(x = x, y = y, color = color)) + 
    geom_point(pch = 15, size = 24, show.legend = F) + 
    scale_color_manual(values = c("black", "white")) + 
    coord_cartesian(xlim = c(0, 1), ylim = c(0, 1), expand = F) + 
    theme_clear(bg_color = "white") 

# Save as .png
ggsave("high_complexity_static_square.png", high_complexity_static_square, 
  path = here("stim"), units = "in", height = 5, width = 5)

# Load high complexity movement data
high_complexity_movement_square <- 
  read_csv(here("data", "high_complexity_movement_square.csv")) %>% 
  ggplot(., aes(x = x, y = y, color = color)) + 
    geom_point(pch = 15, size = 24, show.legend = F) + 
    scale_color_manual(values = c("black", "white")) + 
    coord_cartesian(xlim = c(0, 1), ylim = c(-0.07, 0.93), expand = F) + 
    theme_clear(bg_color = "white") + 
    transition_states(phase, transition_length = 1, state_length = 0, wrap = F)

# Animate
high_complexity_movement_square_p <- animate(
  high_complexity_movement_square, fps = 100, duration = 2.0, device = "png", 
  units = "in", height = 5, width = 5, res = 150)

# Save as .gif
anim_save(here("stim", "high_complexity_movement_square.gif"), 
  high_complexity_movement_square_p)

# -----------------------------------------------------------------------------
