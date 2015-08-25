best <- function(state, outcome) {
    ## Read outcome data
    #  Set colClasses to character to speed up import
    #  Then return mortality rate columns to numeric for later use
    dat <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    suppressWarnings(dat[ , 11] <- as.numeric(dat[ , 11])) # 11 = heart attack
    suppressWarnings(dat[ , 17] <- as.numeric(dat[ , 17])) # 17 = heart failure
    suppressWarnings(dat[ , 23] <- as.numeric(dat[ , 23])) # 23 = pneumonia

    
    ## Check that state and outcome are validbe
    if (outcome == "heart attack") {
        column <- 11   
    } else if (outcome == "heart failure") {
        column <- 17   
    } else if (outcome == "pneumonia") {
        column <- 23   
    } else {
        #print("Invalid outcome entered. Please choose heart attack, heart disease or pneumonia.")
        return("Error")
    }
    
    #outcome[outcome$State == state & outcome$
    
    ## Return hospital name in that state with lowest 30-day death rate
}