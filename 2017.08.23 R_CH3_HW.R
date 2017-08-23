#黃聖翔- 2017.08.23 R_CH3 Base plotting system 期中作業
#用一個 2x2 的畫布練習使用 Base plotting system 繪製任意四個不同圖形
par(mfrow = c(2,2)) #切成左右 ->2個row, 2個column
#-------------------------------------
hist(rnorm(3000), col = "red")
#-------------------------------------
cubic_fun <- function(x){
   return(x**3)}
curve(cubic_fun, from = -10, to = 10, 
      col = "orange",
      main = "自訂函數 - 三次方圖形")
abline(h = 0, lty = 2)
abline(v = 0.5, lty = 2)
#-------------------------------------
plot(iris$Sepal.Length, iris$Petal.Length, 
     col = iris$Species, pch = 20,
     main = "散佈圖 Iris Data", 
     xlab = "Sepal Length", ylab = "Petal Length")
legend("topleft", 
       legend = c("Setosa", "Virginica","Versicolor"), 
       col = c("black", "red", "green"), pch = c(20,20,20),
       cex = 0.5, 
       text.font = 0.1, text.col = c("black", "red", "green") )
#-------------------------------------
library(DBI)
con <- dbConnect(RMySQL::MySQL(), 
                 dbname = "world",
                 host = "rsqltrain.ced04jhfjfgi.ap-northeast-1.rds.amazonaws.com",
                 port = 3306,
                 user = "trainstudent",
                 password = "csietrain")
country <- dbReadTable(con, "country")
dbDisconnect(con)
#利用 symbols() 函數繪畫
symbols(country$GNP, country$LifeExpectancy, circles = sqrt(country$Population / pi),
        bg = factor(country$Continent), fg = "white",
        xlab = "Income", ylab = "Life Expectancy", main = "氣泡圖")