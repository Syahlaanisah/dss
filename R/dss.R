#' Creates Histogram, Boxplot, and Numeric Summary
#' @export
#' @param x numeric variable

dss <- function(x){
  # 1 row and 2 colmns
  par(mfrow = c(1,2))
  # Histogram
  hist(x, col = rainbow(30))
  # Box plot
  boxplot(x, col = 'green')
  par(mfrow = c(1,1))
  # Numeric summary
  data.frame(min = min(x),
             median = median(x),
             mean = mean(x),
             max = max(x),
             sd = sd(x),
             range = max(x)-min(x))
}
