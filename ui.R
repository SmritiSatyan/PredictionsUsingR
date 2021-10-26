library(shiny)
library(shinydashboard)


shinyUI(

  
  dashboardPage(
    dashboardHeader(title="VM Visualization and Prediction", titleWidth = 350),
    dashboardSidebar(
    
      menuItem(
          
          directoryInput('directory', label = 'Choose Directory', value='~/practice/')
          #fileInput("file","Upload the file") # fileinput() function is used to get the file upload contorl option
          )
     # menuItem("HELLO")
      
    ),
    dashboardBody(
      tags$style(type="text/css",
                 ".shiny-output-error { visibility: hidden; }",
                 ".shiny-output-error:before { visibility: hidden; }"
      ), 
      tags$head(tags$style(HTML(".small-box {height: 100px}"))),
      uiOutput("tb")
    )
    
  )
)