```r
# Improved error handling for file reading
file_path <- "my_file.csv"

if (!file.exists(file_path)) {
  stop(paste("Error: File not found at", file_path))
}

data <- tryCatch({
  read.csv(file_path)
}, error = function(e) {
  stop(paste("Error reading file:", e$message))
})
```