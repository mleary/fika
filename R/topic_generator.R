#' @title Suggest random topic for discussion
#'
#' @description This function returns one item from a vector, in this case a random topic
#'
#' @param topic_vector a vector of suggests topics
#' @param num_topics a number of topics to suggest, defaults to 1
#'
#' @return a vector of length one
#' @export

topic_generator <- function(topic_vector, num_topics = 1) {
  topics.out <- base::sample(topic_vector, num_topics, replace = TRUE)
  return(topics.out)
}
