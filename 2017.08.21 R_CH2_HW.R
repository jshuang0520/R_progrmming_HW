#黃聖翔- 2017.08.21 R_CH2 期中作業

#1. 香港搖滾樂隊 Beyond 於 1983 年成立，我們假設成立日期是 1983-12-31，請將成立日期指派給 beyond_start

beyond_start <- as.Date("1983-12-31")
beyond_start

#> beyond_start <- as.Date("1983-12-31")
#> beyond_start
#[1] "1983-12-31"



#2. 請以系統日期計算今年是 Beyond 成立幾週年

#以日期坐標原點1970-01-01計算，至今過了幾天
as.integer(Sys.Date())
#以日期坐標原點1970-01-01計算，樂隊成立了幾天
beyond_start <- as.Date("1983-12-31")
as.integer(beyond_start)
#距今成立幾周年
as.integer( ( as.integer(Sys.Date()) - as.integer(beyond_start) ) / 365 ) #years

#> as.integer(Sys.Date())
#[1] 17400
#> beyond_start <- as.Date("1983-12-31")
#> as.integer(beyond_start)
#[1] 5112
#> as.integer( ( as.integer(Sys.Date()) - as.integer(beyond_start) ) / 365 ) #years
#[1] 33


#3. 1999 年 9 月 21 日 1 時 47 分 16 秒發生震央位於南投縣集集鎮，芮氏規模 7.3 的地震，請以文字記錄這個時間，並將它指派給 major_quake_time

major_quake_time <- as.character("1999-09-21 01:47:16")
major_quake_time

#> major_quake_time <- as.character("1999-09-21 01:47:16")
#> major_quake_time
#[1] "1999-09-21 01:47:16"


#4. 1999 年 9 月 21 日 1 時 57 分 15 秒發生第一個芮氏規模超過 6 的餘震，請以文字記錄這個時間，並將它指派給  first_aftershock_time
first_aftershock_time <- as.character("1999-09-21 01:57:15")
first_aftershock_time

#> first_aftershock_time <- as.character("1999-09-21 01:57:15")
#> first_aftershock_time
#[1] "1999-09-21 01:57:15"


#5. 請將前兩題的生成的變數轉換為時間類型，計算間隔多久發生第一個芮氏規模超過 6 的餘震

blanking_time <- as.POSIXct(first_aftershock_time) - as.POSIXct(major_quake_time)
blanking_time

#> blanking_time <- as.POSIXct(first_aftershock_time) - as.POSIXct(major_quake_time)
#> blanking_time
#Time difference of 9.983333 mins