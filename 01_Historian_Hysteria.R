library(readr)

df <- read_table("input/011_example_data.txt", col_names = c("l1", "l2"))
# df <- read_table("input/dmts/011_example_data.txt", col_names = c("l1", "l2"))

sum(abs(sort(df$l1)-sort(df$l2)))

# Parte 2
l1 <- df$l1
l2 <- df$l2

sum(sapply(l1, \(x) x*length(grep(x, l2))))

