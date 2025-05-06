# importing dataset

# changing variable names (only for fixing legend title problem)
colnames(data_sci) <- c("country","se","var_betweenschool", "Weighting Status")

# drawing plot1
plot1 <- ggplot(data_sci, aes(x = country, y = se, color = `Weighting Status`)) +
  geom_point(aes(shape = `Weighting Status`), size = 2.5) +
  labs(x = "Country", y = "Standard Error") +
  theme(axis.text.x = element_text(angle = 90, hjust = 0)) +
  scale_colour_manual(values = c("#ee1289","#eec900", "#1e8fff", "black"))

plot1





        
