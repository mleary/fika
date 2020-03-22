# author: NAME HERE
# date:   DATE
# intent: Create smaller groups


# Setup -------------------------------------------------------------------

library(googlesheets4)
library(dplyr)

# Get participant data ----------------------------------------------------

form_data <- googlesheets4::read_sheet("https://docs.google.com/spreadsheets/d/1hApIc2wDUsvI06u4YbUKTjYGyQjOfPbr2DnotJM1mkY/edit#gid=1677388550") %>%
  select(Name, Email)


# Create topics  ----------------------------------------------------------

topics <- fika::topics %>%
  fika::topic_add("Favorite restaurant in your town and why?")



# Create groups & topics --------------------------------------------------


df.groups <- fika::create_groups(form_data,
                                min_group_size = 2)

topics <- fika::create_topics(group_nums = 4, topics)
