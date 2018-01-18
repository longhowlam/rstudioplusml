library(dplyr)
con <- dbConnect(odbc::odbc(), "MSSQLTest", uid = "longhow", pwd = "longhow_123")

dbWriteTable(conn = con, name = 'pipo11', value = mtcars)
dbListTables(con)

pp = tbl(con, "pipo11")

pp %>% count()
