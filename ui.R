
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shinydashboard)

dashboardPage(
  dashboardHeader(title = "Page Title"),
  dashboardSidebar(),  #Sidebar content would be setup here
  dashboardBody(
    fluidRow(
      h4("The following are 3 different ways to display of the same information.", align = "center"),
      h3("InfoBoxes Without Fill", align="center"),
    
      # The first row is infoBoxes with fill=FALSE
    
      # This is a a static infoBox - it is setup on the UI side
      infoBox("InfoBox 1", 6 * 2, icon = icon("credit-card")),
      
      # Dynamic infoBoxes:
      #This establishes the infoBox within the UI but 
      #allows for dynamic changes from the server side
      infoBoxOutput("dynamic1"),
      infoBoxOutput("dynamic2")
      ),
  
    # A row of infoBoxes with fill=TRUE
    fluidRow(
      h3("InfoBoxes With Fill", align="center"),
      infoBox("New Orders", 10 * 2, icon = icon("credit-card"), fill = TRUE),
      infoBoxOutput("dynamic3"),
      infoBoxOutput("dynamic4")
      ),
  
    fluidRow(
      #A simple button to increment a count that will update the boxes
      box(width = 4, actionButton("count", "Increment progress"))
        ),
    
    #A row of value boxes
    fluidRow(
      h3("ValueBoxes", align="center"),
    
      # This is a a static infoBox - it is setup on the UI side
      valueBox(10 * 2, "New Orders", icon = icon("credit-card")),
    
      # Dynamic valueBox examples
      valueBoxOutput("valueBox1"),
      valueBoxOutput("valueBox2")
  ),
  fluidRow(
    h4("Based on the examples at: https://rstudio.github.io/shinydashboard/structure.html", align = "center"),
    h4("Icon options available here: https://rstudio.github.io/shinydashboard/appearance.html#icons", align = "center")
    )
  )
)
