# Extras ----------------------------------------------------------------------
#
# Author: Joseph V. Casillas (joseph.casillas@rutgers.edu)
# Last update: 20201108
# - Generate crazy animations we didn't end up using
#
# -----------------------------------------------------------------------------




# Source packages and helpers -------------------------------------------------

source(here::here("scripts", "01_helpers.R"))

# -----------------------------------------------------------------------------




# diagonal_raise_squares ------------------------------------------------------
x1 <- 1:20
y1 <- 1:20

diagonal_raise_squares <- bind_rows(
  expand.grid(x = x1, y = y1), 
  expand.grid(y = y1 + 0.5, x = x1 + 0.5)) %>% 
  mutate(set = rep(1:4, times = nrow(.) / 4)) %>% 
  ggplot(., aes(x, y)) + 
  geom_point(pch = 22, size = 15, fill = "white", color = "white", 
             show.legend = F) + 
  coord_cartesian(expand = F) + 
  theme_clear(bg_color = "black") + 
  transition_states(set, transition_length = 1, state_length = 0, wrap = T)

diagonal_raise_squares_p <- animate(diagonal_raise_squares, 
                                    fps = 100, duration = 2.0, 
                                    device = "png")

anim_save(here("stim", "extras", "diagonal_raise_squares.gif"), 
  diagonal_raise_squares_p)

# -----------------------------------------------------------------------------




# zoomed_square ---------------------------------------------------------------
x2 <- 1:20
y2 <- 1:20

zoomed_square <- bind_rows(
  expand.grid(x = x2, y = y2), 
  expand.grid(y = y2 + 0.5, x = x2 + 0.5)) %>% 
  mutate(set = rep(1:20, times = nrow(.) / 20)) %>% 
  ggplot(., aes(x, y)) + 
  geom_point(pch = 22, size = 20, fill = "white", color = "white", 
             show.legend = F) + 
  coord_cartesian(expand = F) + 
  theme_clear(bg_color = "black") + 
  transition_states(set, transition_length = 2, state_length = 0, wrap = F)

zoomed_square_p <- animate(zoomed_square, 
                       fps = 100, duration = 2.25, 
                       device = "png")

anim_save(here("stim", "extras", "zoomed_square.gif"), 
  zoomed_square_p)

# -----------------------------------------------------------------------------




# slow_bars -------------------------------------------------------------------

horizontal_bars <- tibble(v = seq(0, 1, length.out = 20))

slow_bars <- tibble(
       x = seq(0.0, 1.0, length.out = 50), 
       y = rep(1, times = 50), 
       set = rep(c(1, 2, 3, 4, 5), times = 10)) %>% 
  ggplot(., aes(x, y)) + 
    geom_bar(stat = "identity", fill = "white", width = 0.005) + 
    geom_hline(data = horizontal_bars, aes(yintercept = v), 
               size = 1, color = "white") + 
    coord_cartesian(xlim = c(0.2, 0.801), expand = F) + 
    theme_clear(bg_color = "black") + 
  transition_states(set, transition_length = 1, state_length = 0, wrap = F)

slow_bars_p <- animate(slow_bars, 
                       fps = 100, duration = 2.25, 
                       device = "png")

anim_save(here("stim", "extras", "slow_bars.gif"), 
  slow_bars_p)

# -----------------------------------------------------------------------------




# raising_squares -------------------------------------------------------------
x <- 1:10
y <- 1:10

raising_squares <- bind_rows(
  expand.grid(x = x, y = y), 
  expand.grid(y = y + 0.5, x = x + 0.5)) %>% 
  mutate(set = rep(1:4, times = nrow(.) / 4)) %>% 
  ggplot(., aes(x, y)) + 
  geom_point(pch = 22, size = 25, fill = "white", show.legend = F) + 
  coord_cartesian(expand = F) + 
  theme_clear(bg_color = "black") + 
  transition_states(set, transition_length = 1, state_length = 0, wrap = T)

raising_squares_p <- animate(raising_squares, 
                             fps = 100, duration = 2.25, 
                             device = "png")

anim_save(here("stim", "extras", "raising_squares.gif"), 
  raising_squares_p)

# -----------------------------------------------------------------------------





# moving_mouth ----------------------------------------------------------------

smile_x <- c(-0.33, -0.22, -0.11,  0.0,  0.11,  0.22,  0.33)
smile_y <- c(-0.50, -0.50, -0.50, -0.5, -0.50, -0.50, -0.50)

moving_mouth <- expand.grid(smile_x, 1:4) %>%  
  arrange(Var1) %>% 
  transmute(x = Var1, y = rep(c(-0.45, -0.5, -0.5, -0.45), time = length(smile_x)), 
    step = Var2) %>% 
  ggplot(., aes(x, y)) + 
    ggforce::geom_circle(aes(x0 = 0, y0 = 0, r = 1.1), inherit.aes = F, 
      size = 2, fill = "yellow") + 
    geom_point(show.legend = F, size = 10, pch = 16) +
    geom_point(data = tibble(x = c(0, -0.4, 0.4), y = c(0,  0.5, 0.5)), 
      size = 15, pch = c(21, 16, 16), stroke = c(1, 1.2, 1.2), fill = "darkred") + 
    coord_cartesian(xlim = c(-1.2, 1.2), ylim = c(-1.2, 1.2), expand = F) + 
    theme_clear() +
    transition_states(step, transition_length = 0.5, state_length = 0, wrap = T) + 
    enter_fade() +
    exit_fade()

moving_mouth_p <- animate(moving_mouth, 
                          fps = 100, duration = 1, 
                          device = "png")

anim_save(here("stim", "extras", "moving_mouth.gif"), 
  moving_mouth_p)

# -----------------------------------------------------------------------------




# moving_mouth_simple ---------------------------------------------------------

smile_x <- c(-0.44, -0.33, -0.22, -0.11,  0.0,  0.11,  0.22,  0.33, 0.44)
smile_y <- c(-0.50, -0.50, -0.50, -0.50, -0.50, -0.5, -0.50, -0.50, -0.50)

moving_mouth_simple <- expand.grid(smile_x, 1:4) %>%  
  arrange(Var1) %>% 
  transmute(x = Var1, y = rep(c(-0.45, -0.5, -0.5, -0.45), time = length(smile_x)), 
    step = Var2) %>% 
  ggplot(., aes(x, y)) + 
    geom_point(show.legend = F, size = 10, pch = 16) +
    geom_point(data = tibble(x = c(0, -0.4, 0.4), y = c(0,  0.5, 0.5)), 
      size = 15, pch = 16, stroke = c(1, 1.2, 1.2)) + 
    coord_cartesian(xlim = c(-1.2, 1.2), ylim = c(-1.2, 1.2), expand = F) + 
    theme_clear() +
    transition_states(step, transition_length = 0.5, state_length = 0, wrap = T) + 
    enter_fade() +
    exit_fade()

moving_mouth_simple_p <- animate(moving_mouth_simple, 
                          fps = 100, duration = 1, 
                          device = "png")

anim_save(here("stim", "extras", "moving_mouth_simple.gif"), 
  moving_mouth_simple_p)

# -----------------------------------------------------------------------------
