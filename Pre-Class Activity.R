# INTRODUCING GGPLOT

library(ggplot2)
library(palmerpenguins)

# GEOMETRIES

# visualizing one continuous variable: histogram
ggplot(penguins, aes(x = body_mass_g)) + geom_histogram()

# visualizing one continuous variable and one categorical value: box plot
ggplot(penguins, aes(x = body_mass_g, y = species)) + geom_boxplot()

# visualizing two continuous variables: scatter plot
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) + geom_point()

# AESTHETICS
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm, color = species)) +
  geom_point()


# CUSTOMIZATION WITH SCALES AND THEMES

library(ggplot2)
library(palmerpenguins)

# Scales customize the expression of mappings
# Manually override default values
# Use a colorblind friendly color palette
okabe_ito <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2")
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     color = species)) +
  geom_point() +
  scale_color_manual(values = okabe_ito)

# Changing the shapes of points
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     color = species,
                     shape = species)) +
  geom_point() +
  scale_color_manual(values = okabe_ito)

# Manually changing the shapes
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     color = species,
                     shape = species)) +
  geom_point() +
  scale_color_manual(values = okabe_ito) +
  scale_shape_manual(values = 15:19)

# Built in custom themes
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     color = species,
                     shape = species)) +
  geom_point() +
  scale_color_manual(values = okabe_ito) +
  scale_shape_manual(values = 15:19) +
  theme_bw()

# Moving the legend into negative space
ggplot(penguins, aes(x = body_mass_g,
                     y = flipper_length_mm,
                     color = species,
                     shape = species)) +
  geom_point() +
  scale_color_manual(values = okabe_ito) +
  scale_shape_manual(values = 15:19) +
  theme_bw() +
  theme(legend.position = "inside",
        legend.position.inside = c(0.99, 0.01),
        legend.justification = c(1, 0))
