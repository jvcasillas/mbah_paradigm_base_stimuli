# Squares ---------------------------------------------------------------------
#
#
#
# -----------------------------------------------------------------------------



# Source packages and helpers -------------------------------------------------

source(here::here("scripts", "01_helpers.R"))

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

anim_save(here("gifs", "slow_bars.gif"), slow_bars_p)

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

anim_save(here("gifs", "raising_squares.gif"), raising_squares_p)

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

anim_save(here("gifs", "diagonal_raise_squares.gif"), diagonal_raise_squares_p)

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

anim_save(here("gifs", "zoomed_square.gif"), zoomed_square_p)

# -----------------------------------------------------------------------------
