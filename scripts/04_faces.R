# Faces -----------------------------------------------------------------------
#
#
#
# -----------------------------------------------------------------------------




# Source packages and helpers -------------------------------------------------

source(here::here("scripts", "01_helpers.R"))

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

anim_save("moving_mouth.gif", moving_mouth_p)

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

anim_save("moving_mouth_simple.gif", moving_mouth_simple_p)

# -----------------------------------------------------------------------------
