# importing dataset

# changing variable names (only for fixing legend title problem)
colnames(data_math) <- c("country","se","var_betweenschools", "Weighting Status")

# drawing bplot1
library(ggplot2)
bplot1 <- ggplot(data_math, aes(x = country, y = var_betweenschools, color = `Weighting Status`)) +
  geom_point(aes(shape = `Weighting Status`), size = 2.3, alpha = 0.7) +
  labs(x = "", y = "Variance - Between Schools") +
  theme_light() +
  theme(panel.grid.major.x = element_blank(),
        panel.border = element_blank(),
        axis.text.x = element_text(angle = 90, hjust = 0),
        axis.title.y = element_text(hjust = 1),
        text = element_text(family = "AvantGarde", size = 10),
        legend.position = "top") +
  scale_colour_manual(values = c("#ee1289","#eec900", "#1e8fff", "black")) +
  ylim(0, 80) +
  geom_curve(aes(x = 36, y = 70, xend = 39, yend = 63.5),
             arrow = arrow(length = unit(0.3, "cm"), type = "closed"),
             color = "#ee1289",
             size = 0.1,
             curvature = -0.3
             ) +
  annotate(geom = "text", x = 35, y = 72.5, hjust = 0, label = "the highest (USA - 62.52%)",
           color = "black", size = 3, family = "AvantGarde") +
  geom_curve(aes(x = 5, y = 4, xend = 2, yend = 8),
             arrow = arrow(length = unit(0.3, "cm"), type = "closed"),
             color = "#1e8fff",
             size = 0.1,
             curvature = -0.3
             ) +
  annotate(geom = "text", x = 5, y = 5.5, hjust = 0, label = "the lowest (Bahrain - 9.18%)", 
           color = "black", size = 3, family = "AvantGarde") +
  annotate("label", x = 2, y = 80, label = "Mathematics", family = "AvantGarde", fontface = "bold") 

bplot1
