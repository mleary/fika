
# Create topics list ------------------------------------------------------

topics <- c(
    'What was your favorite vacation?',
    'What is your favorite cereal?',
    'Favorite new TV show others should watch?',
    'What is your favorite movie?',
    'What is your favorite book?',
    'Better pet, dog or cat?',
    'What vacation is on your to do list?'
)

utils::write.csv(topics, "data-raw/topics.csv", row.names = FALSE)
usethis::use_data(topics, overwrite = TRUE)
