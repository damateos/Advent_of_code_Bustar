library(readr)
library(stringr)
library(purrr)

df <- read_lines("input/dmts/021_example_data") |>
  str_split(" ") |>
  map(as.numeric)

is_safe <- function(x) {
  if (all(sort(x) == x) | all(sort(x, decreasing = T) == x)) {
    for(i in 2:length(x)) {
      u <- x[i]
      v <- x[i-1]
      if (abs(u-v) <1 | abs(u-v)>3) return(F)
    }
    return(T)
  }
  return(F)
}

map_lgl(df, is_safe) |> sum()

# Parte 2

is_safe_damper <- function(x) {
  if (!is_safe(x)) {
    for (i in 1:length(x)) {
      y <- x[-i]
      if (is_safe(y)) return(T)
    }
    return(F)
  }
  return(T)
}

map_lgl(df, is_safe_damper) |> sum()
