# Factors in R

# Summary of Numeric Items
participants_age = c(78, 25, 68, 45, 48, 36)
summary(participants_age)

# Finding summary of characters
profession = c("Doctor", "Teacher", "Teacher", "Businessman", "Teacher")
summary(profession)

profession = factor(profession)
summary(profession)

# Putting the summary in Order
birth_month = c("Jan", "Dec", "Apr", "Dec", "Apr", "Aug", "Jan")
summary(birth_month)

birth_month_fact = factor(birth_month, 
                          ordered = TRUE, 
                          levels = c("Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec"))
summary(birth_month_fact)

# Lists in R
# Lists are used to place number of items in a bundle

a = c(2, 4, 7)
b = c("Red", "Green", "Blue")
c = "Welcome!"

my_list = list(a, b, c)

my_list

# Naming the list items
my_list = list(pieces = a, colors = b, Message = c)
my_list

# Calling a specific data structure
my_list[3]
my_list['colors']
my_list$colors

# Calling specific items from the data structure
my_list$colors[3]
