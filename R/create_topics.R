#' @title Create a list of topics
#'
#' @description This function returns a data frame including a group number and
#'     a suggested topic to kick-off the conversation.
#'
#' @param group_nums number of groups
#' @param topic_vector a vector of suggested topics
#'
#' @return a two-column data frame
#' @export

create_topics <- function(group_nums, topic_vector) {
  topics.selected <- base::sample(topic_vector, group_nums)

  df_out <- data.frame(
    Group = 1:group_nums,
    Topic = topics.selected
  )

  return(df_out)
}
