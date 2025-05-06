# importing dataset

# changing variable names (only for fixing legend title problem)
colnames(data_sci) <- c("country","se","var_betweenschools", "Weighting Status")

# drawing bplot2
library(ggplot2)
bplot2 <- ggplot(data_sci, aes(x = country, y = var_betweenschools, color = `Weighting Status`)) +
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
  geom_curve(aes(x = 36, y = 70, xend = 38, yend = 61.5),
             arrow = arrow(length = unit(0.3, "cm"), type = "closed"),
             color = "#1e8fff",
             size = 0.1,
             curvature = -0.3
             ) +
  annotate(geom = "text", x = 34, y = 72.5, hjust = 0, label = "the highest (UAE - 61.93%)", 
           color = "black", size = 3, family = "AvantGarde") +
  geom_curve(aes(x = 23, y = 3, xend = 20, yend = 6),
             arrow = arrow(length = unit(0.3, "cm"), type = "closed"),
             color = "black",
             size = 0.1,
             curvature = -0.3
             ) +
  annotate(geom = "text", x = 22, y = 4, hjust = 0, label = "the lowest (Korea - 6.3%)", 
           color = "black", size = 3, family = "AvantGarde") +
  annotate("label", x = 2, y = 80, label = "Science", family = "AvantGarde", fontface = "bold") 

bplot2