#a
model <- lm(weight ~ Time + Diet, data = ChickWeight)
model

#b
model
predict(model, newdata = data.frame(Time = 10, Diet = 1))

#c
residuals(model)[ChickWeight$Time == 10 & ChickWeight$Diet == 1]
