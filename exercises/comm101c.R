library(palmerpenguins)
library(ggplot2)

# Make the following changes to this basic box plot.
# 1) Change the grey background to white
# 2) Clean up the axis labels
# 3) Make the color vary by island
# 4) Choose a color palette that you enjoy!

my_palette <- c("#154751", "#75B8C8", "#688B58", "#BEA674", "#7B2D26")

ggplot(penguins, aes(island, body_mass_g,
                     color = island)) +
  geom_boxplot() +
  theme_bw() +
  xlab("Islands") +
  ylab("Penguin Masses (g)") +
  scale_color_manual(values = my_palette)
