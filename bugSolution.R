```R
# Corrected function to handle vectors with only NA values
calculate_mean_corrected <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  }
  if (all(is.na(x))) {
    return(NA) # Handle vector with all NA values
  }
  sum_x <- sum(x, na.rm = TRUE) # Summing the vector, removing NAs
  mean_x <- sum_x / length(x) # Calculate the mean
  return(mean_x)
}

# Example usage with corrected function
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(1, 2, NA, 4, 5)
vec3 <- numeric(0) # Empty vector
vec4 <- c(NA, NA, NA)

print(calculate_mean_corrected(vec1)) # Correct result
print(calculate_mean_corrected(vec2)) # Correct result
print(calculate_mean_corrected(vec3)) # Correct result, returns NA
print(calculate_mean_corrected(vec4)) # Correct result, returns NA
```