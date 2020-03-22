#' @title Create roughly equal sized groups of people
#'
#' @description This function takes a data frame and creates smaller subsets
#'     based on the group.size parameter
#'
#' @param df_participants a data frame of willing participants!
#' @param min_group_size a number for the desired group size
#'
#' @return df.participants with a new column, Group
#' @export


create_groups <- function(df_participants, min_group_size = 3){

  num_groups <- nrow(df_participants) %/% min_group_size
  remainder <- nrow(df_participants) %% min_group_size

  assignments <- rep(1:min_group_size, num_groups)
  if(remainder > 0){
    assignments <- base::append(assignments, 1:remainder)
  }
  assignments <- sample(assignments)

  df.out <- df_participants %>%
    dplyr::mutate(Group = assignments)

  return(df.out)

}

