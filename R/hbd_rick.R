#' @description this function prints out birthday messages for Joel Le Forestier for his 26th birthday.
#' @param from_who leaving it blank will randomly select a person; possible argument includes: name(s) of birthday message sender; "everyone"
#' @return happy birthday message and the author of the message
#' @examples hbd_rick(from_who = c("liz", "bethany"))

hbd_rick <- function(from_who) {

  # joel's nicknames for people
  nicknames = c("Andrew" = "Andrew",
                "Arun" = "Arun",
                "Siva" = "Siva",
                "Maryam" = "Maryam",
                "Jennifer" = "Jennifer",
                "Satheesh" = "Satheesh")

  # change the name to lower cases if capitalized & replace nicknames with real names
  from_who = stringr::str_replace_all(tolower(from_who), nicknames)

  # custom message for Matt
  if(any( stringr::str_detect(from_who, "matt") == TRUE)) cat("Matt is going to tell you in person\U1F496\n")

  # corn prompts for Bethany
  if(any( stringr::str_detect(from_who, "corn") == TRUE)) cat("BETHANY AIN'T EVEN FROM IOWA\n")

  suppressWarnings(
    if( length(from_who) == 1 & from_who == "everyone" ) {
      from_who = hbdrick::data$name

    } else if ( length(from_who) == 1 & from_who == "anyone" ) {
      from_who = sample(hbdrick::data$name, 1)

    # } else if ( any( from_who %in% hbdrick::data$name == FALSE ) ) {
    } else {

      # find names of senders not in the data
      unknown_senders = ifelse(from_who %in% c(hbdrick::data$name, "matt"), NA, from_who)
      unknown_senders = unknown_senders[!is.na(unknown_senders)] # drop NA

      cat("Who",
          paste(ifelse(length(unknown_senders) == 1, "is", "are")),
          paste(unknown_senders, collapse = ", "), "?\n")

      from_who = from_who[which(from_who %in% c( hbdrick::data$name, names(nicknames)))]
      }

  )

  hbdrick::data %>%
    dplyr::filter(name %in% from_who) %>%
    dplyr::mutate(msg = glue::glue("{stringr::str_to_title(name)} says {msg}")) %>%
    .$msg

}

