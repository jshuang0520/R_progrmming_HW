黃聖翔-R期中作業

#1. 香港搖滾樂隊 Beyond 於 1983 年成立，我們假設成立日期是 1983-12-31，請將成立日期指派給 beyond_start
as.Date("1983-01-01")
beyond_start <- as.Date("1983-01-01") +364
beyond_start

#> as.Date("1983-01-01")
#[1] "1983-01-01"
#> beyond_start <- as.Date("1983-01-01") +364
#> beyond_start
#[1] "1983-12-31"



#2. 請以系統日期計算今年是 Beyond 成立幾週年
sys_date <- Sys.Date()
as.integer(sys_date)
beyond_start
as.integer(beyond_start)
( (Sys.Date()) - (beyond_start) ) / 365 #years

#> sys_date <- Sys.Date()
#> as.integer(sys_date)
#[1] 17399
#> beyond_start
#[1] "1983-12-31"
#> as.integer(beyond_start)
#[1] 5112
#> ( (Sys.Date()) - (beyond_start) ) / 365 #years
#Time difference of 33.66301 days


#3. 1999 年 9 月 21 日 1 時 47 分 16 秒發生震央位於南投縣集集鎮，芮氏規模 7.3 的地震，請以文字記錄這個時間，並將它指派給 major_quake_time
major_quake_time <- as.POSIXct("1999-09-21 01:47:16")
major_quake_time

#> major_quake_time <- as.POSIXct("1999-09-21 01:47:16")
#> major_quake_time
#[1] "1999-09-21 01:47:16 CST"


#4. 1999 年 9 月 21 日 1 時 57 分 15 秒發生第一個芮氏規模超過 6 的餘震，請以文字記錄這個時間，並將它指派給  first_aftershock_time
first_aftershock_time <- as.POSIXct("1999-09-21 01:57:15")
as.POSIXct("1999-09-21 01:57:15")

#> first_aftershock_time <- as.POSIXct("1999-09-21 01:57:15")
#> as.POSIXct("1999-09-21 01:57:15")
#[1] "1999-09-21 01:57:15 CST"


#5. 請將前兩題的生成的變數轉換為時間類型，計算間隔多久發生第一個芮氏規模超過 6 的餘震
first_aftershock_time - major_quake_time

#> first_aftershock_time - major_quake_time
#Time difference of 9.983333 mins
