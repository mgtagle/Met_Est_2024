
# Ejercicio 1 -------------------------------------------------------------

grupo <- gl(2,10, labels = c("grupo_I", "grupo_II"))
altura <- c(23, 17.4, 17, 20.5, 22.7, 24, 22.5, 22.7, 19.4, 18.8,
            18.5, 19.6, 17.7, 10.1, 19.7, 13.2, 10.3, 19.1, 10.5,17.4)

mico <- data.frame(grupo, altura)

# determinar las medias
tapply(mico$altura, mico$grupo, mean)

boxplot(mico$altura ~ mico$grupo, ylab = "Altura (cm)",
        xlab = "Grupos", col = "indianred")
text(1,15, "media = 20.8, \u2191", cex = 0.8, col = "red")
text(2,22, " media = 15.61 \u2193", cex = 0.8, col = "red")

shapiro.test(mico$altura)
bartlett.test(mico$altura ~ mico$grupo)

t.test(mico$altura ~ mico$grupo, var.equal = T, 
       alternative = "greater")

# Ejercicio 2 -------------------------------------------------------------

grupo <- gl(2,10, labels = c("grupo_I", "grupo_II"))
carb <- c(1.59, 1.39, 1.64, 1.17, 1.27, 1.58, 1.64, 1.53, 1.21, 1.48,
          1.21, 0.92, 1.31, 1.52, 1.62, 0.91, 1.23, 1.21, 1.58, 1.18)
suelo <- data.frame(grupo, carb)

tapply(suelo$carb, suelo$grupo, mean)
boxplot(suelo$carb ~ suelo$grupo, col ="lightgreen",
        xlab = "Temporadas",
        ylab = "Carbono en el suelo")
text(1, 1.4, "media = 1.45", col = "red")
text(2, 1.4, "media = 1.27", col = "red")
text(1, 1, "\u03BC (o) = \u03BC (p)")

t.test(suelo$carb ~ suelo$grupo, paired =T, alternative ="less")