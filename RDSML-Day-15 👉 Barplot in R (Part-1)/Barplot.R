# creating a data frame
dataset = data.frame(dose = c("Do.5", "D1", "D2"), 
                     len = c(4.2, 10, 29.5),
                     gpg = c(45, 77, 7))

library(ggplot2)

# Basic Barplot
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity")

# Horizontal barplot
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity") +
  coord_flip()

# Changing the width of Bars
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", width = 1)

# Changing colors
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", color = "blue", fill = "white", width = 1)

# Minimal theme with blue fill color
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", color = "blue", fill = "steelblue")+
  theme_minimal()

# barplot with labels
# Outside bars

ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", color = "blue", fill = "steelblue")+
  geom_text(aes(label = len), vjust = 1.6, size = 3, color = "white") +
  theme_minimal()

mycarData = mtcars
# Barplot of counts
# To make a barplot of counts, we will use  mtcars dataset

ggplot(data = mycarData, aes(x = factor(cyl))) +
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") +
  theme_minimal()











