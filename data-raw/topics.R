
# Create topics list ------------------------------------------------------

topics <- c(
    'What was your favorite vacation?',
    'What is your favorite cereal?',
    'New TV show others should or should not watch?',
    'What is your favorite movie?',
    'What is your favorite book?',
    'Better pet, dog or cat?',
    'What vacation is on your to do list?',
    'Book you think others should read',
    'Strange superstition or fear you are willing to share'
)

utils::write.csv(topics, "data-raw/topics.csv", row.names = FALSE)
usethis::use_data(topics, overwrite = TRUE)
