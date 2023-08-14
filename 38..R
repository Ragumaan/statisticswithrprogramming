library(ggplot2)
data.frame(Titanic_df)
ggplot(data = titanic, mapping = aes(x = Pclass, y = Survived, fill = Sex)) +
  geom_bar(stat = "identity", position = "dodge")
