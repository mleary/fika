#' @title Add your own topic to the existing topic list
#'
#' @description This function updates an existing character vector (defaults a vector called'topics')
#'
#' @param topic.new character.  New topic to add
#' @param topics.current character vector.  Existing vector of topics (defaults to a vector called "topics" )
#' @return nothing.  updates existing vector.
#' @export

topic_add <- function(topics.current, topic.new) {

  topics.current <- append(topics.current, topic.new)
  return(topics.current)
}
