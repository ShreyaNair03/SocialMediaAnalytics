# Using read.csv in base R
my_data<-read.csv("C:\\Users\\HP\\Downloads\\socialmedia.csv")


# View the first few rows of the data
head(my_data)


# Summary statistics
summary(my_data)

install.packages(c('ggplot2'))
library(ggplot2)
# Histogram of Age
ggplot(my_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = 'blue', alpha = 0.7) +
  ggtitle("Age Distribution")


# Histogram of Followers
ggplot(my_data, aes(x = Followers)) +
  geom_histogram(binwidth = 500, fill = 'green', alpha = 0.7) +
  ggtitle("Followers Distribution")


# Boxplot of Followers by Gender
ggplot(my_data, aes(x = Gender, y = Followers)) +
  geom_boxplot() +
  ggtitle("Followers by Gender")


# Scatter plot of Followers vs Posts
ggplot(my_data, aes(x = Posts, y = Followers)) +
  geom_point(aes(color = Gender)) +
  ggtitle("Followers vs Posts")

ggplot(my_data, aes(x = Gender, y = EngagementRate)) +
  geom_boxplot() +
  ggtitle("Engagaement rates by Gender")


# Correlation matrix
cor_matrix <- cor(my_data[, c('Age', 'Followers', 'Following', 'Posts', 'EngagementRate')], use = "complete.obs")
print(cor_matrix)