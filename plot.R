library(tidyverse)
library(ggsci)
setwd("") #data
df <- read.csv("")
theme_connor <- theme_minimal() + # A bunch of Connor Nelson's aesthetic specifications I condensed to one line
  theme( 
    legend.text = element_text(size = 12), axis.title = element_text(size = 14), panel.grid.major.x = element_blank(), panel.grid.minor.x = element_blank(), plot.background = element_rect(fill = "white") 
  )
plot1 <- function(df, filename, width, height) {
  df %>%
    filter() %>%
    group_by() %>%
    mutate(x = sum()) %>%
    ggplot(aes(x = ,x, y = y, fill = factor())) + 
    geom_bar(stat = "identity", fill="#fa0107") + # I picked the colour I liked best from ggsci's scale_color_ucscgb
    labs(x = "x", y = "y") +
    theme_connor
  ggsave(filename, device = "jpeg", width = width, height = height)
}
plot2 <- function(df, filename, width, height) {
  df %>%
    filter() %>%
    group_by() %>%
    summarise(across(ends_with(""), sum)) %>%
    pivot_longer(cols = -x, names_to = "", values_to = "") %>%
    ggplot(aes(x = x, y = y, fill = type)) + 
    geom_col(position = "stack") +
    labs(x = "x", y = "y") +
    theme_connor + scale_fill_ucscgb()
  ggsave(filename, device = "jpeg", width = width, height = height)
}
plot1(df, "plot1.jpeg", width = 5, height = 5)
plot2(df, "plot2.jpeg", width = 7, height = 5)