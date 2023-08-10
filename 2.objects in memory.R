x <- 5
y <- "Hello, world!"
z <- c(1, 2, 3)
object_names <- ls()
for (obj_name in object_names) {
  cat("Object Name:", obj_name, "\n")
  cat("Object Type:", typeof(get(obj_name)), "\n")
  cat("Object Content:\n")
  print(get(obj_name))
  cat("-----------------\n")
}