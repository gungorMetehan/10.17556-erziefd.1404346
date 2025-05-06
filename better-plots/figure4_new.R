# importing dataset

# changing variable names (only for fixing legend title problem)
colnames(data_sci) <- c("country","se","var_betweenschools", "Weighting Status")

# drawing bplot4
library(ggplot2)
bplot4 <- ggplot(data_sci, aes(x = country, y = se, color = `Weighting Status`)) +
  geom_point(aes(shape = `Weighting Status`), size = 2.3, alpha = 0.7) +
  labs(x = "", y = "Standard Error") +
  theme_light() +
  theme(panel.grid.major.x = element_blank(),
        panel.border = element_blank(),
        axis.text.x = element_text(angle = 90, hjust = 0),
        axis.title.y = element_text(hjust = 1),
        text = element_text(family = "AvantGarde", size = 10),
        legend.position = "top") +
  scale_colour_manual(values = c("#ee1289","#eec900", "#1e8fff", "black")) +
  ylim(0, 30) +
  geom_curve(aes(x = 36, y = 27, xend = 39, yend = 23),
             arrow = arrow(length = unit(0.3, "cm"), type = "closed"),
             color = "#ee1289",
             size = 0.1,
             curvature = -0.3
             ) +
  annotate(geom = "text", x = 35, y = 27.5, hjust = 0, label = "the highest (USA - 22.92%)", 
           color = "black", size = 3, family = "AvantGarde") +
  geom_curve(aes(x = 14, y = 16, xend = 17, yend = 2.1),
             arrow = arrow(length = unit(0.3, "cm"), type = "closed"),
             color = "#eec900",
             size = 0.1,
             curvature = 0.3
             ) +
  annotate(geom = "text", x = 12, y = 16.5, hjust = 0, label = "the lowest (Japan - 2.01%)", 
           color = "black", size = 3, family = "AvantGarde") +
  annotate("label", x = 2, y = 30, label = "Science", family = "AvantGarde", fontface = "bold") 

bplot4
