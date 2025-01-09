```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  }
  sum_x <- sum(x, na.rm = TRUE) # Summing the vector, removing NAs
  mean_x <- sum_x / length(x) # Calculate the mean
  return(mean_x)
}

# Example usage:
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(1, 2, NA, 4, 5)
vec3 <- numeric(0) # Empty vector

print(calculate_mean(vec1)) # Correct result
print(calculate_mean(vec2)) # Correct result
print(calculate_mean(vec3)) # Correct result, returns NA

# The bug appears if the vector contains only NA values.
vec4 <- c(NA, NA, NA)
print(calculate_mean(vec4)) # Incorrectly returns NaN instead of NA
```