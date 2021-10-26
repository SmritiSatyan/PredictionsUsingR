library(readr)
library(shiny)
library(lubridate)
library(dplyr)
#libraries from avash
library(tseries)
library(forecast)

# use the below options code if you wish to increase the file input limit, in this example file input limit is increased from 5MB to 9MB
options(shiny.maxRequestSize = 9 * 1024 ^ 2)

shinyServer(function(input, output, session) {
  
  rv <- reactiveValues(final_open_errors = NULL, final_progress_errors= NULL, check_var= NULL, final_closed_errors= NULL)
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$directory
               },
               handlerExpr = {
                 if (input$directory > 0) {
                   # condition prevents handler execution on initial app launch
                   path = choose.dir(default = readDirectoryInput(session, 'directory'))
                   updateDirectoryInput(session, 'directory', value = path)
                 }
               })

  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$input1
               },
               handlerExpr = {
                 colnames(rv$final_open_errors) = c("error", "count", "status")
                 new_open <<- rv$final_open_errors
                 add <- new_open[1,]
                 add$status <- "Progress"
                 rv$final_progress_errors <<- rbind(rv$final_progress_errors,add)
                 print(rv$final_progress_errors)
                 new_open <<- new_open[-1, ]
                 rv$final_open_errors <<- new_open
                 print(rv$final_open_errors)
                 colnames(new_open) = c("error", "count", "status")
                 rv$check_var <<-"updated"

               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$input2
               },
               handlerExpr = {
                 colnames(rv$final_open_errors) = c("error", "count", "status")
                 new_open <<- rv$final_open_errors
                 add <- new_open[2,]
                 add$status <- "Progress"
                 rv$final_progress_errors <<- rbind(rv$final_progress_errors,add)
                 print(rv$final_progress_errors)
                 new_open <<- new_open[-2, ]
                 rv$final_open_errors <<- new_open
                 print(rv$final_open_errors)
                 colnames(new_open) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$input3
               },
               handlerExpr = {
                 colnames(rv$final_open_errors) = c("error", "count", "status")
                 new_open <<- rv$final_open_errors
                 add <- new_open[3,]
                 add$status <- "Progress"
                 rv$final_progress_errors <<- rbind(rv$final_progress_errors,add)
                 print(rv$final_progress_errors)
                 new_open <<- new_open[-3, ]
                 rv$final_open_errors <<- new_open
                 print(rv$final_open_errors)
                 colnames(new_open) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$input4
               },
               handlerExpr = {
                 colnames(rv$final_open_errors) = c("error", "count", "status")
                 new_open <<- rv$final_open_errors
                 add <- new_open[4,]
                 add$status <- "Progress"
                 rv$final_progress_errors <<- rbind(rv$final_progress_errors,add)
                 print(rv$final_progress_errors)
                 new_open <<- new_open[-4, ]
                 rv$final_open_errors <<- new_open
                 print(rv$final_open_errors)
                 colnames(new_open) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$input5
               },
               handlerExpr = {
                 colnames(rv$final_open_errors) = c("error", "count", "status")
                 new_open <<- rv$final_open_errors
                 add <- new_open[5,]
                 add$status <- "Progress"
                 rv$final_progress_errors <<- rbind(rv$final_progress_errors,add)
                 print(rv$final_progress_errors)
                 new_open <<- new_open[-5, ]
                 rv$final_open_errors <<- new_open
                 print(rv$final_open_errors)
                 colnames(new_open) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$input6
               },
               handlerExpr = {
                 colnames(rv$final_open_errors) = c("error", "count", "status")
                 new_open <<- rv$final_open_errors
                 add <- new_open[6,]
                 add$status <- "Progress"
                 rv$final_progress_errors <<- rbind(rv$final_progress_errors,add)
                 print(rv$final_progress_errors)
                 new_open <<- new_open[-6, ]
                 rv$final_open_errors <<- new_open
                 print(rv$final_open_errors)
                 colnames(new_open) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$input7
               },
               handlerExpr = {
                 colnames(rv$final_open_errors) = c("error", "count", "status")
                 new_open <<- rv$final_open_errors
                 add <- new_open[7,]
                 add$status <- "Progress"
                 rv$final_progress_errors <<- rbind(rv$final_progress_errors,add)
                 print(rv$final_progress_errors)
                 new_open <<- new_open[-7, ]
                 rv$final_open_errors <<- new_open
                 print(rv$final_open_errors)
                 colnames(new_open) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$input8
               },
               handlerExpr = {
                 colnames(rv$final_open_errors) = c("error", "count", "status")
                 new_open <<- rv$final_open_errors
                 add <- new_open[8,]
                 add$status <- "Progress"
                 rv$final_progress_errors <<- rbind(rv$final_progress_errors,add)
                 print(rv$final_progress_errors)
                 new_open <<- new_open[-8, ]
                 rv$final_open_errors <<- new_open
                 print(rv$final_open_errors)
                 colnames(new_open) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$input9
               },
               handlerExpr = {
                 colnames(rv$final_open_errors) = c("error", "count", "status")
                 new_open <<- rv$final_open_errors
                 add <- new_open[9,]
                 add$status <- "Progress"
                 rv$final_progress_errors <<- rbind(rv$final_progress_errors,add)
                 print(rv$final_progress_errors)
                 new_open <<- new_open[-9, ]
                 rv$final_open_errors <<- new_open
                 print(rv$final_open_errors)
                 colnames(new_open) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$input10
               },
               handlerExpr = {
                 colnames(rv$final_open_errors) = c("error", "count", "status")
                 new_open <<- rv$final_open_errors
                 add <- new_open[10,]
                 add$status <- "Progress"
                 rv$final_progress_errors <<- rbind(rv$final_progress_errors,add)
                 print(rv$final_progress_errors)
                 new_open <<- new_open[-10, ]
                 rv$final_open_errors <<- new_open
                 print(rv$final_open_errors)
                 colnames(new_open) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$close1
               },
               handlerExpr = {
                 colnames(rv$final_progress_errors) = c("error", "count", "status")
                 new_progress <<- rv$final_progress_errors
                 add_progress <- new_progress[1,]
                 add_progress$status <- "Closed"
                 rv$final_closed_errors <<- rbind(rv$final_closed_errors,add_progress)
                 print(rv$final_closed_errors)
                 new_progress <<- new_progress[-1, ]
                 rv$final_progress_errors <<- new_progress
                 print(rv$final_progress_errors)
                 colnames(new_progress) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$close2
               },
               handlerExpr = {
                 colnames(rv$final_progress_errors) = c("error", "count", "status")
                 new_progress <<- rv$final_progress_errors
                 add_progress <- new_progress[2,]
                 add_progress$status <- "Closed"
                 rv$final_closed_errors <<- rbind(rv$final_closed_errors,add_progress)
                 print(rv$final_closed_errors)
                 new_progress <<- new_progress[-2, ]
                 rv$final_progress_errors <<- new_progress
                 print(rv$final_progress_errors)
                 colnames(new_progress) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$close3
               },
               handlerExpr = {
                 colnames(rv$final_progress_errors) = c("error", "count", "status")
                 new_progress <<- rv$final_progress_errors
                 add_progress <- new_progress[3,]
                 add_progress$status <- "Closed"
                 rv$final_closed_errors <<- rbind(rv$final_closed_errors,add_progress)
                 print(rv$final_closed_errors)
                 new_progress <<- new_progress[-3, ]
                 rv$final_progress_errors <<- new_progress
                 print(rv$final_progress_errors)
                 colnames(new_progress) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$close4
               },
               handlerExpr = {
                 colnames(rv$final_progress_errors) = c("error", "count", "status")
                 new_progress <<- rv$final_progress_errors
                 add_progress <- new_progress[4,]
                 add_progress$status <- "Closed"
                 rv$final_closed_errors <<- rbind(rv$final_closed_errors,add_progress)
                 print(rv$final_closed_errors)
                 new_progress <<- new_progress[-4, ]
                 rv$final_progress_errors <<- new_progress
                 print(rv$final_progress_errors)
                 colnames(new_progress) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$close5
               },
               handlerExpr = {
                 colnames(rv$final_progress_errors) = c("error", "count", "status")
                 new_progress <<- rv$final_progress_errors
                 add_progress <- new_progress[5,]
                 add_progress$status <- "Closed"
                 rv$final_closed_errors <<- rbind(rv$final_closed_errors,add_progress)
                 print(rv$final_closed_errors)
                 new_progress <<- new_progress[-5, ]
                 rv$final_progress_errors <<- new_progress
                 print(rv$final_progress_errors)
                 colnames(new_progress) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$close6
               },
               handlerExpr = {
                 colnames(rv$final_progress_errors) = c("error", "count", "status")
                 new_progress <<- rv$final_progress_errors
                 add_progress <- new_progress[6,]
                 add_progress$status <- "Closed"
                 rv$final_closed_errors <<- rbind(rv$final_closed_errors,add_progress)
                 print(rv$final_closed_errors)
                 new_progress <<- new_progress[-6, ]
                 rv$final_progress_errors <<- new_progress
                 print(rv$final_progress_errors)
                 colnames(new_progress) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$close7
               },
               handlerExpr = {
                 colnames(rv$final_progress_errors) = c("error", "count", "status")
                 new_progress <<- rv$final_progress_errors
                 add_progress <- new_progress[7,]
                 add_progress$status <- "Closed"
                 rv$final_closed_errors <<- rbind(rv$final_closed_errors,add_progress)
                 print(rv$final_closed_errors)
                 new_progress <<- new_progress[-7, ]
                 rv$final_progress_errors <<- new_progress
                 print(rv$final_progress_errors)
                 colnames(new_progress) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$close8
               },
               handlerExpr = {
                 colnames(rv$final_progress_errors) = c("error", "count", "status")
                 new_progress <<- rv$final_progress_errors
                 add_progress <- new_progress[8,]
                 add_progress$status <- "Closed"
                 rv$final_closed_errors <<- rbind(rv$final_closed_errors,add_progress)
                 print(rv$final_closed_errors)
                 new_progress <<- new_progress[-8, ]
                 rv$final_progress_errors <<- new_progress
                 print(rv$final_progress_errors)
                 colnames(new_progress) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$close9
               },
               handlerExpr = {
                 colnames(rv$final_progress_errors) = c("error", "count", "status")
                 new_progress <<- rv$final_progress_errors
                 add_progress <- new_progress[9,]
                 add_progress$status <- "Closed"
                 rv$final_closed_errors <<- rbind(rv$final_closed_errors,add_progress)
                 print(rv$final_closed_errors)
                 new_progress <<- new_progress[-9, ]
                 rv$final_progress_errors <<- new_progress
                 print(rv$final_progress_errors)
                 colnames(new_progress) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  observeEvent(ignoreNULL = TRUE,
               eventExpr = {
                 input$close10
               },
               handlerExpr = {
                 colnames(rv$final_progress_errors) = c("error", "count", "status")
                 new_progress <<- rv$final_progress_errors
                 add_progress <- new_progress[10,]
                 add_progress$status <- "Closed"
                 rv$final_closed_errors <<- rbind(rv$final_closed_errors,add_progress)
                 print(rv$final_closed_errors)
                 new_progress <<- new_progress[-10, ]
                 rv$final_progress_errors <<- new_progress
                 print(rv$final_progress_errors)
                 colnames(new_progress) = c("error", "count", "status")
                 rv$check_var <<-"updated"
                 
               })
  
  output$filedf <- renderTable({
    files = list.files(path = '~/practice/',
                       full.names = T,
                       pattern = ".csv")
    file_names <<-
      data.frame(name = basename(files), file.path(files))
    filesn <<- file_names[, 1]
    colnames(file_names) = c("File Name", "File Path")
    print(file_names)
  })
  
  
  output$new1 <- renderPrint({
    fluidRow(
      box(
        title = "Details of CSV files in the selected directory",
        width = 9,
        status = "primary",
        solidHeader = TRUE,
        tableOutput("filedf")
      )
    )
  })
  
  
  error_file <<- reactive({
    read_csv(toString(file_names[3, 1]))
  })
  
  error_status <<- reactive({
    read_csv(toString(file_names[2, 1]))
  })
  
  sample_file <- reactive({
    read_csv(toString(file_names[5, 1]))
  })
  
  context_file <- reactive({
    read_csv(toString(file_names[1, 1]))
  })
  request_file <- reactive({
    read_csv(toString(file_names[4, 1]))
  })
  
 
  session_file <<- reactive({
    read_csv(toString(file_names[6, 1]))
  })
  
  session_file1 <- reactive({
    iconv(enc2utf8(session_file()$sess_id), sub = "byte")
  })
  
  request_file1 <- reactive({
    iconv(enc2utf8(request_file()$sess_id), sub = "byte")
  })
  
  request_file2 <- reactive({
    iconv(enc2utf8(request_file()$txn_type_c), sub = "byte")
  })
  
  

  
  
  plottype <- reactive({
    switch(
      input$type,
      "Transaction Types" = "p1",
      "Transaction type vs Date Range" = "p2",
      "Inquiry calls vs Date range" = "p3",
      "No. of calls to each Service vs Version of service" = "p4",
      "Errors per service" = "p5",
      "Errors per service per operation" = "p6",
      "User Name vs Calls per Service" = "p7",
      "Calls per service vs App_process" = "p8",
      "Calls per service vs User role"="p9"
    )
  })
  
  csvtype <- reactive({
    switch(
      input$type1,
      "Context Table.csv" = "d1",
      "Error Table.csv" = "d2",
      "Session Table.csv" = "d4"
    )
  })
  output$mplot <- renderTable({
    sessionfiledf <- as.data.frame(session_file())
    requestfiledf <- as.data.frame(request_file())
    sessionfiledf1 <- as.data.frame(session_file1())
    requestfiledf1 <- as.data.frame(request_file1())
    requestfiledf2 <- as.data.frame(request_file2())
    
    session2 <- cbind(sessionfiledf1, sessionfiledf[, 5])
    request2 <- cbind(requestfiledf1, requestfiledf2)
    colnames(session2) <- c("sess_id", "user_nm")
    colnames(request2) <- c("sess_id", "txn_type_c")
    
    session3 <- cbind(sessionfiledf1, sessionfiledf[, 10])
    request3 <- cbind(requestfiledf1, requestfiledf2)
    colnames(session3) <- c("sess_id", "app_process")
    colnames(request3) <- c("sess_id", "txn_type_c")
    
    hel <<- merge(session2, request2, by = "sess_id")
    hello <<- merge(session3, request3, by = "sess_id")
    
    if (csvtype() == "d1")
    {
      
      print(context_file())
    }
    else if (csvtype() == "d2")
    {
      
      print(error_file())
    }
   
    else if (csvtype() == "d4")
    {
      print(session_file())
      
      
      
    }
  })
  
  
  output$new2 <- renderPrint({
    fluidRow(
      box(
        title = "Options",
        width = 2,
        status = "primary",
        solidHeader = TRUE,
        uiOutput("datadf1")
      ),
      box(
        title = "Table",
        width = 10,
        status = "primary",
        solidHeader = TRUE,
        uiOutput("datadf2")
      )
      
    )
  })
    
    
    
  output$datadf1 <- renderPrint({
    print(radioButtons(
      "type1",
      "Choose plot type:",
      c(
        "Context Table.csv",
        "Error Table.csv",
        "Session Table.csv"
      )
    ))
  })
  
  output$datadf2 <- renderPrint({
    tableOutput("mplot")
  })
  
  output$plotoptions <- renderPrint({
    print(radioButtons(
      "type",
      "Choose plot type:",
      c(
        "Transaction Types",
        "Transaction type vs Date Range",
        "Inquiry calls vs Date range",
        "No. of calls to each Service vs Version of service",
        "Errors per service",
        "Errors per service per operation",
        "User Name vs Calls per Service",
        "Calls per service vs App_process",
        "Calls per service vs User role"
        
      ),
      inline = TRUE
    ))
  })
  
  output$plots <- renderPrint({
    
    
    fluidRow(
      box(
        title = "Plot Choices",
        status = "primary",
        solidHeader = TRUE,
        width = 12,
        uiOutput("plotoptions", height = 600)
      ),
      box(
        title = "Options",
        status = "primary",
        solidHeader = TRUE,
        width = 3,
        uiOutput("chck", height = 600)
      ),
      box(
        title = "Plot",
        status = "primary",
        solidHeader = TRUE,
        width = 9,
        plotOutput("tplot", height = 600)
      )
    )
  })
  
  # output$pri <- renderValueBox({
  #   if (plottype() == "p5") {
  #     if (!is.null(input$variable3))
  #       for (z in 1:length(namesOfServicesInErrorData))
  #       {
  #         if (input$variable3 == namesOfServicesInErrorData[z])
  #         {
  #           break
  #           
  #         }
  #       }
  #     if (!is.null(input$variable3))
  #       valueBox(errorsPerService[z],
  #                input$variable3,
  #                icon = icon("credit-card"))
  #   }
  # })
  output$dateInput4 <- renderUI({
    dateRangeInput("daterange4", "Date range:",
                   start = "2016-05-21",
                   end   = "2016-05-30")
  })
  
  output$dateInput3 <- renderUI({
    dateRangeInput("daterange3", "Date range:",
                   start = "2016-05-21",
                   end   = "2016-05-30")
  })
  
  output$dateInput2 <- renderUI({
    dateRangeInput("daterange2", "Date range:",
                   start = "2016-05-21",
                   end   = "2016-05-30")
  })
  output$dateInput1 <- renderUI({
    dateRangeInput("daterange1", "Date range:",
                   start = "2016-05-21",
                   end   = "2016-05-30")
  })
  output$operations <- renderUI({
    if (plottype() == "p4") {
      
     if(!is.null(input$variable1))
      { 
        operationsForServices <- c()
        sample_df <- as.data.frame(sample_file())
       
        for(i in 1:length(sample_df[,1]))
        {
         
          if(sample_df[i,5] == input$variable1){
           
            operationsForServices <- c(operationsForServices, sample_df[i,6])
          }
        }
        operationsForServices <- unique(operationsForServices)
        
       
        radioButtons("variable8","Operations", choices = operationsForServices)
        
      
        
      }
    }
  })
  
  output$errorCount <- renderTable({
    print(error_table)
  })
  output$chck <- renderPrint({
    if (plottype() == "p1")
    {
      fluidRow(
        box(width = 12,
            uiOutput("dateInput2", width = 12)))
    }
    else if (plottype() == "p2")
    {
      
      fluidRow(
        box(width = 12,
              checkboxGroupInput(
                "variable",
                "Services",
                choices = transactions,
                selected = "")
              ),
        box(width = 12,
            uiOutput("dateInput3", width = 12))
      )
      
      
    }
    else if (plottype() == "p3")
    {
      fluidRow(
        box(width = 12,
            uiOutput("dateInput4", width = 12))
      )
    }
    else if (plottype() == "p4")
    {
      
      fluidRow(
        box(width = 12,
              radioButtons(
                "variable1",
                "Services",
                choices = transactions,
                selected = ""
                
              )),
        box(width = 12,
            uiOutput("operations", width = 12)),
        box(width = 12,
            uiOutput("dateInput1", width = 12))
        )
      
        
      
    }
    else if (plottype() == "p5") {
      # print(radioButtons("variable3", "Services:", choices = namesOfServicesInErrorData))
      # valueBoxOutput("pri", width = 100)
      # 
      tableOutput("errorCount")
      
    }
    else if (plottype() == "p6")
    {
      print(radioButtons("variable2", "Services:", choices = namesOfServicesInErrorData, selected = ""))
    }
    
    else if (plottype() == "p7")
    {
      print(
        checkboxGroupInput(
          "variable7",
          "Services",
          choices = txn_merge,
          selected = ""
        )
      )
    }
    else if (plottype() == "p8")
    {
      print(
        checkboxGroupInput(
          "variable4",
          "Services",
          choices = txn_merge,
          selected = ""
        )
      )
    }
    else if (plottype()=="p9")
    {
      print(
        checkboxGroupInput(
          "variable5",
          "Services",
          choices = sort(unique(merged$txn_type_c)),
          selected = ""
        )
      )
    }
  })
  
  output$predict1 <- renderPlot({
    myRequestData <-
      read_csv(
        "C:\\Users\\A610912\\Documents\\practice\\predictionData\\myRequestData.csv"
      )
    myRequestData
    services <- unique(myRequestData$txn_type_c)
    services
    
    hitsPerService <- c()
    for (i in 1:length(services))
    {
      val <-
        nrow(filter(myRequestData, myRequestData$txn_type_c == services[i]))
      hitsPerService <- c(hitsPerService, val)
    }
    names(hitsPerService) <- services
    print(hitsPerService)
    allYears <- unique(year(myRequestData$myDates))
    allYears
    minDate <- min(myRequestData$myDates)
    minDate
    maxDate <- max(myRequestData$myDates)
    maxDate
    
    uniqueDates <-
      unique(format(
        as.POSIXct(myRequestData$myDates, format = '%m/%d/%Y %H:%M:%S'),
        format = '%Y/%m/%d'
      ))
    uniqueDates <- sort(uniqueDates)
    uniqueDates
    
    uniqueYears <- unique(year(uniqueDates))
    uniqueYears <- sort(uniqueYears)
    uniqueMonths <- unique(month(uniqueDates))
    uniqueMonths <- sort(uniqueMonths)
    uniqueYears
    uniqueMonths
    
    for (i in 1:length(services))
    {
      hitsPerService[i] <-
        matrix(c(1:(
          length(uniqueYears) * length(uniqueMonths)
        )))
    }
    
    
    hitsPerMonthBalances <-
      matrix(c(1:(
        length(uniqueYears) * length(uniqueMonths)
      )),
      nrow = length(uniqueYears),
      ncol = length(uniqueMonths))
    hitsPerMonthBalances[] <- 0L
    hitsPerMonthBalances
    
    for (i in 1:length(uniqueYears))
    {
      for (j in 1:length(uniqueMonths))
      {
        myVal <- nrow(
          filter(
            myRequestData,
            year(format(
              as.POSIXct(myRequestData$myDates, format = '%m/%d/%Y %H:%M:%S'),
              format = '%Y/%m/%d'
            )) == uniqueYears[i],
            month(format(
              as.POSIXct(myRequestData$myDates, format = '%m/%d/%Y %H:%M:%S'),
              format = '%Y/%m/%d'
            )) == uniqueMonths[j],
            myRequestData$txn_type_c == "Balances"
          )
        )
        hitsPerMonthBalances[i, j] <- myVal
      }
      
    }
    hitsPerMonthBalances
    rownames(hitsPerMonthBalances) <- uniqueYears
    colnames(hitsPerMonthBalances) <- uniqueMonths
    hitsPerMonthBalances
    
    yearmonth <- c()
    hitsPerMonthVector <- c()
    for (i in 1:length(uniqueYears))
    {
      for (j in 1:length(uniqueMonths))
      {
        z <- paste(uniqueYears[i], uniqueMonths[j], '28', sep = "-")
        #z1 <-as.Date(z,"%Y%m%d")
        z1 <- as.numeric(format(as.Date(z), '%Y%m%d'))
        cat("z z1 ", z, " ", z1, "\n")
        yearmonth <- c(yearmonth, z1)
        hitsPerMonthVector <-
          c(hitsPerMonthVector, hitsPerMonthBalances[i, j])
      }
    }
    yearmonth
    hitsPerMonthVector
    
    # dfToExport <- data.frame(cbind(yearmonth,hitsPerMonthVector))
    # write_csv(dfToExport, path = "C:\\Users\\A611733\\Desktop\\Rprac\\Leap\\dataTS.csv",append = TRUE )
    
    
    dataTS <-
      read_csv("C:\\Users\\A610912\\Documents\\practice\\predictionData\\dataTS.csv")
    TS <-
      ts(dataTS[, 2],
         start = c(min(uniqueYears), min(uniqueMonths)),
         frequency = 12)
    plot(TS, xlab = "Years", ylab = "Hits")
  })
  
  output$predict2 <- renderPlot({
    myRequestData <-
      read_csv(
        "C:\\Users\\A610912\\Documents\\practice\\predictionData\\myRequestData.csv"
      )
    myRequestData
    services <- unique(myRequestData$txn_type_c)
    services
    
    hitsPerService <- c()
    for (i in 1:length(services))
    {
      val <-
        nrow(filter(myRequestData, myRequestData$txn_type_c == services[i]))
      hitsPerService <- c(hitsPerService, val)
    }
    names(hitsPerService) <- services
    print(hitsPerService)
    allYears <- unique(year(myRequestData$myDates))
    allYears
    minDate <- min(myRequestData$myDates)
    minDate
    maxDate <- max(myRequestData$myDates)
    maxDate
    
    uniqueDates <-
      unique(format(
        as.POSIXct(myRequestData$myDates, format = '%m/%d/%Y %H:%M:%S'),
        format = '%Y/%m/%d'
      ))
    uniqueDates <- sort(uniqueDates)
    uniqueDates
    
    uniqueYears <- unique(year(uniqueDates))
    uniqueYears <- sort(uniqueYears)
    uniqueMonths <- unique(month(uniqueDates))
    uniqueMonths <- sort(uniqueMonths)
    uniqueYears
    uniqueMonths
    
    for (i in 1:length(services))
    {
      hitsPerService[i] <-
        matrix(c(1:(
          length(uniqueYears) * length(uniqueMonths)
        )))
    }
    
    
    hitsPerMonthBalances <-
      matrix(c(1:(
        length(uniqueYears) * length(uniqueMonths)
      )),
      nrow = length(uniqueYears),
      ncol = length(uniqueMonths))
    hitsPerMonthBalances[] <- 0L
    hitsPerMonthBalances
    
    for (i in 1:length(uniqueYears))
    {
      for (j in 1:length(uniqueMonths))
      {
        myVal <- nrow(
          filter(
            myRequestData,
            year(format(
              as.POSIXct(myRequestData$myDates, format = '%m/%d/%Y %H:%M:%S'),
              format = '%Y/%m/%d'
            )) == uniqueYears[i],
            month(format(
              as.POSIXct(myRequestData$myDates, format = '%m/%d/%Y %H:%M:%S'),
              format = '%Y/%m/%d'
            )) == uniqueMonths[j],
            myRequestData$txn_type_c == "Balances"
          )
        )
        hitsPerMonthBalances[i, j] <- myVal
      }
      
    }
    hitsPerMonthBalances
    rownames(hitsPerMonthBalances) <- uniqueYears
    colnames(hitsPerMonthBalances) <- uniqueMonths
    hitsPerMonthBalances
    
    yearmonth <- c()
    hitsPerMonthVector <- c()
    for (i in 1:length(uniqueYears))
    {
      for (j in 1:length(uniqueMonths))
      {
        z <- paste(uniqueYears[i], uniqueMonths[j], '28', sep = "-")
        #z1 <-as.Date(z,"%Y%m%d")
        z1 <- as.numeric(format(as.Date(z), '%Y%m%d'))
        # cat("z z1 ", z, " ", z1, "\n")
        yearmonth <- c(yearmonth, z1)
        hitsPerMonthVector <-
          c(hitsPerMonthVector, hitsPerMonthBalances[i, j])
      }
    }
    yearmonth
    hitsPerMonthVector
    
    # dfToExport <- data.frame(cbind(yearmonth,hitsPerMonthVector))
    # write_csv(dfToExport, path = "C:\\Users\\A611733\\Desktop\\Rprac\\Leap\\dataTS.csv",append = TRUE )
    
    
    dataTS <-
      read_csv("C:\\Users\\A610912\\Documents\\practice\\predictionData\\dataTS.csv")
    TS <-
      ts(dataTS[, 2],
         start = c(min(uniqueYears), min(uniqueMonths)),
         frequency = 12)
    
    ARIMAfit <- auto.arima(TS, approximation = FALSE, trace = FALSE)
    cat("Summary is:: \n")
    summary(ARIMAfit)
    lines(fitted(ARIMAfit), col = "blue")
    ARIMAfit.forecast <<- forecast(ARIMAfit)
   
    
    plot(
      ARIMAfit.forecast,
      main = "forecasting for balances",
      xlab = "year",
      ylab = "hits"
    )
  })
  output$prediction <- renderUI({
    fluidRow(
      box(
        title = "Plot for Balances",
        status = "primary",
        solidHeader = TRUE,
        width = 6,
        plotOutput("predict1", height = 600)
      ),
      box(
        title = "Plot for Forecast of Balances",
        status = "warning",
        solidHeader = TRUE,
        width = 6,
        plotOutput("predict2", height = 600)
      ))
    
    # requestData <- read_csv("C:\\Users\\A611733\\Documents\\AIML\\request.csv")
    # write_csv(requestData, path = "C:\\Users\\A611733\\Documents\\AIML\\RequestData.csv",append = TRUE)
    
    # requestData <-
    #   read_csv("C:\\Users\\A611733\\Desktop\\Rprac\\Leap\\request_info.csv")
    # requestData <- read_excel("C:\\Users\\A611733\\Desktop\\Rprac\\Leap\\Data_t_wllr_log_rqst_info.xlsx")
    #
    # #myDates <- sample(seq(as.POSIXct('2012/01/01'), as.POSIXct('2017/11/15'), by="15 mins"), 5000)
    #
    # latemail <- function(N, st="2012/01/01", et="2017/11/15") {
    #        st <- as.POSIXct(as.Date(st))
    #        et <- as.POSIXct(as.Date(et))
    #        dt <- as.numeric(difftime(et,st,unit="sec"))
    #        ev <- sort(runif(N, 0, dt))
    #        rt <- st + ev
    # }
    # myDates <- latemail(5000)
    # myDates
    # requestData <- cbind(requestData,myDates)
    # write_csv(requestData, path = "C:\\Users\\A611733\\Desktop\\Rprac\\Leap\\myRequestData.csv",append = TRUE)
    
    
    # plot(diff(TS),ylab='Differenced Hits value')
    # plot(log10(TS),ylab='Log (Hits)')
    
    
    #to make the series stationary on both mean and variance
    #plot(diff(log10(TS)),ylab='Differenced Log (Hits vs Time)')
    
    # par(mfrow = c(1,2))
    # acf(ts(diff(log10(TS))),main='ACF for Hits')
    # pacf(ts(diff(log10(TS))),main='PACF for Hits')
    
    
    
    
    #FORECAST/PREDICT
    # par(mfrow = c(1,1))
    # pred = predict(ARIMAfit, n.ahead = 36)
    # pred
    # plot(data,type='l',xlim=c(2004,2018),ylim=c(1,1600),xlab = 'Year',ylab = 'Tractor Sales')
    # lines(10^(pred$pred),col='blue')
    # lines(10^(pred$pred+2*pred$se),col='orange')
    # lines(10^(pred$pred-2*pred$se),col='orange')
    
    
    # #NONSEASONAL
    # #110 was good for manual
    # fit <- auto.arima(hitsPerDayBalances, ic="bic")
    # #fit <- arima(hitsPerDayBalances, order = c(1,1,0))
    # fit
    # plot(as.ts(hitsPerDayBalances))
    # lines(fitted(fit), col="blue")
    # fit.forecast <- forecast(fit)
    # fit.forecast
    # plot(fit.forecast, main = "Forecasting for balances", xlab = "Day", ylab = "Hits on that day")
    #
    # fitWithdrawals <- auto.arima(hitsPerDayWithdrawals, ic="bic")
    # # fitWithdrawals <- arima(hitsPerDayWithdrawals, order = c(1,1,0))
    # fitWithdrawals
    # plot(as.ts(hitsPerDayWithdrawals))
    # lines(fitted(fitWithdrawals), col="blue")
    # fitWithdrawals.forecast <- forecast(fitWithdrawals)
    # fitWithdrawals.forecast
    # plot(fitWithdrawals.forecast, main = "Forecasting for withdrawals", xlab = "Day", ylab = "Hits on that day")
    #
    
  })
  
  output$tplot <- renderPlot({
    sessionfiledf <- as.data.frame(session_file())
    requestfiledf <- as.data.frame(request_file())
    sessionfiledf1 <- as.data.frame(session_file1())
    requestfiledf1 <- as.data.frame(request_file1())
    requestfiledf2 <- as.data.frame(request_file2())
    
    session2 <- cbind(sessionfiledf1, sessionfiledf[, 5])
    request2 <- cbind(requestfiledf1, requestfiledf2)
    colnames(session2) <- c("sess_id", "user_nm")
    colnames(request2) <- c("sess_id", "txn_type_c")
    
    hel <<- merge(session2, request2, by = "sess_id")
    
    
    session3 <- cbind(sessionfiledf1, sessionfiledf[, 10])
    request3 <- cbind(requestfiledf1, requestfiledf2)
    colnames(session3) <- c("sess_id", "app_process")
    colnames(request3) <- c("sess_id", "txn_type_c")
    
    hello <<- merge(session3, request3, by = "sess_id")
    
    
    session4 <- cbind(sessionfiledf1, sessionfiledf[, 7])
    request4 <- cbind(requestfiledf1, requestfiledf2)
    colnames(session4) <- c("sess_id", "user_role_c")
    colnames(request4) <- c("sess_id", "txn_type_c")
    
    merged <<- merge(session4, request4, by = "sess_id")
    
    
    usernames <<- sort(unique(hel$user_nm))
    print(length(usernames))
    transactions <<- unique(sample_file()$txn_type_c)
    txn_merge <<- sort(unique(hel$txn_type_c))
    
    transactions <<- sort(transactions)
    namesOfServicesInErrorData <<- unique(error_file()$src_c)
    services <<- unique(sample_file()$sub_svc_x)
    versions <<- unique(sample_file()$ver_x)
    services <<- sort(services)
    if (plottype() == "p1")
    {
      #PIE CHART
      if(!is.null(input$daterange2)){
      pie_data = c()
      for (i in 1:length(transactions))
        
        pie_data <- c(pie_data,
                      (nrow(
                        filter(
                          sample_file(),
                          sample_file()$txn_type_c == transactions[i],
                          format(as.POSIXct(sample_file()$crea_d, format = '%m/%d/%Y %H:%M:%S'),format = '%Y-%m-%d') >= input$daterange2[1],
                          format(as.POSIXct(sample_file()$crea_d, format = '%m/%d/%Y %H:%M:%S'),format = '%Y-%m-%d') <= input$daterange2[2]
                          
                          
                        )
                      )))
      
      colourVector <- c(
        "black",
        "darkolivegreen1",
        "steelblue2",
        "hotpink3",
        "lightpink",
        "gold",
        "darkslategray1",
        "peachpuff",
        "white",
        "lavender",
        "violet"
      )
      
      piePercentage <- round(100 * pie_data / sum(pie_data), 1)
      
      pie(
        pie_data,
        main = "Calls per Service",
        col = colourVector,
        labels = piePercentage,
        cex = 1
      )
      legend(
        "topright",
        legend = transactions,
        cex = 1,
        fill = c(
          "black",
          "darkolivegreen1",
          "steelblue2",
          "hotpink3",
          "lightpink",
          "gold",
          "darkslategray1",
          "peachpuff",
          "white",
          "lavender",
          "violet"
        ),
        bg="transparent"
      )
    }
  }
    if (plottype() == "p2")
    {
      if(as.double(difftime(input$daterange3[2], input$daterange3[1]))>10)
        showNotification("Not more than 10 days can be selected")
      else if (!is.null(input$variable))
      {
        transactions1 <<- input$variable
        dates <- seq(input$daterange3[1],input$daterange3[2], by = "days")
        #MULTIBAR PLOT (txn_type vs date_range)
        nrow = length(transactions1)
        ncol = length(dates)
        bar_data = matrix(c(1:nrow*ncol),
                          nrow = length(transactions1),
                          ncol = length(dates))
        
        
        for (i in 1:length(transactions1))
        {
          for (j in 1:length(dates))
          {
            bar_data[i, j] = nrow(
              filter(
                sample_file(),
                strptime(sample_file()$crea_d,format = '%Y-%m-%d') == dates[j],
                sample_file()$txn_type_c == transactions1[i]
              )
            )
          }
        }
        
        barplot(
          as.matrix(bar_data),
          main = "Calls per Service vs Date",
          col = rainbow(length(transactions1)),
          names.arg = dates,
          ylab = "Number of calls to Services",
          xlab = "Dates",
          yaxp = c(0, max(bar_data), 50),
          beside = TRUE
        )
        legend("topright",
               legend = transactions,
               bg="transparent",
               fill = rainbow(length(transactions1)))
        v <<- "0"
      }
    }
    
    if (plottype() == "p3")
    {if(as.double(difftime(input$daterange4[2], input$daterange4[1]))>10)
      showNotification("Not more than 10 days can be selected")
      else{
      dates <- seq(input$daterange4[1],input$daterange4[2], by = "days")
      transactions <- unique(sample_file()$txn_type_c)
      transactions <- sort(transactions)
      
      #INQUIRY PLOT
      
      inquiry_data = c()
      
      
      for (j in 1:length(dates))
      {
        inquiry_data <-
          c(inquiry_data , nrow(
            filter(
              sample_file(),
              strptime(sample_file()$crea_d,format = '%Y-%m-%d') == dates[j],
              sample_file()$rqst_st_c == "Inquiry"
            )
          ))
      }
      
      barplot(
        inquiry_data,
        main = "Inquiry calls",
        names.arg = dates,
        ylab = "Number of calls",
        xlab = "Dates",
        yaxp = c(0, max(inquiry_data), 50),
        beside = TRUE
      )
      }
    }
    
    if (plottype() == "p4")
    {
      if (!is.null(input$variable1) && !is.null(input$daterange1)) {
       
        #LINE GRAPH (version of service vs name of service)

        ver_data = matrix(c(1:length(versions)),
                          nrow = 1,
                          ncol = length(versions))
        
        for (i in 1:length(versions))
        {
          
          
            ver_data[1, i] = nrow(
              filter(
                sample_file(),
                sample_file()$sub_svc_x == input$variable8,
                sample_file()$txn_type_c == input$variable1,
                sample_file()$ver_x == versions[i],
                format(as.POSIXct(sample_file()$crea_d, format = '%m/%d/%Y %H:%M:%S'),format = '%Y-%m-%d') > input$daterange1[1],
                format(as.POSIXct(sample_file()$crea_d, format = '%m/%d/%Y %H:%M:%S'),format = '%Y-%m-%d') < input$daterange1[2]
               
              )
            )
          
        }

        plot(
          ver_data[1,],
          type = "o",
          col = "red",
          xlab = "Versions",
          ylab = "Number of calls to each operation",
          main = "Version of service vs No. of calls for each operation",
          ylim = c(0, max(ver_data))
        )
        axis(
          side = 1,
          at = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
          labels = versions
        )
        
      }
    }
    if (plottype() == "p5") {
      errorsPerService <<- c()
      
      
      for (i in 1:length(namesOfServicesInErrorData))
      {
        val <-
          nrow(filter(
            error_file(),
            error_file()$src_c == namesOfServicesInErrorData[i]
          ))
        
        errorsPerService <<- c(errorsPerService, val)
      }
      
      error_table <<- data.frame()
      error_table <<- cbind(namesOfServicesInErrorData, errorsPerService)
      colnames(error_table) <<- c("Service","No of Errors")
      
      errorPiePercentage <-
        round(100 * errorsPerService / sum(errorsPerService), 1)
      
      errorsPerServiceAscending <<- errorsPerService
      
      names(errorsPerServiceAscending) <<-
        namesOfServicesInErrorData
      errorsPerServiceAscending <<- sort(errorsPerServiceAscending)
      print(errorsPerServiceAscending)
      
      pie(
        errorsPerService,
        main = "Errors Per Service",
        col = rainbow(length(errorsPerService)),
        labels = errorPiePercentage,
        radius = 1,
        cex = 1
      )
      legend(
        "topright",
        legend = namesOfServicesInErrorData,
        cex = 1.3,
        bg="transparent",
        fill = rainbow(length(errorsPerService))
      )
      
      
    }
    if (plottype() == "p6") {
      if(!is.null(input$variable2)){
      errorsPerServicePerOperation <- c()
      namesOfOperationsInErrorData <<-
        unique(error_file()$sub_svc_x)
      namesOfOperationsInErrorData <<- setdiff(namesOfOperationsInErrorData, "NULL")
      namesOfOperationsInErrorData <<- setdiff(namesOfOperationsInErrorData, "")
      yo <- input$variable2
      for (i in 1:length(namesOfOperationsInErrorData))
      {
        val <-
          nrow(
            filter(
              error_file(),
              error_file()$src_c == yo,
              error_file()$sub_svc_x == namesOfOperationsInErrorData[i]
            )
          )
        errorsPerServicePerOperation <-
          c(errorsPerServicePerOperation, val)
      }
      barplot(
        as.matrix(errorsPerServicePerOperation),
        main = "Errors Per Service",
        col = rainbow(length(errorsPerServicePerOperation)),
        names.arg = strtrim(namesOfOperationsInErrorData, c(6)),
        ylab = "Number Of errors",
        xlab = "Services",
        yaxp = c(0, max(errorsPerServicePerOperation), 5),
        beside = TRUE
        
      )
      legend(
        "topright",
        legend = namesOfOperationsInErrorData,
        bg="transparent",
        fill = rainbow(length(errorsPerServicePerOperation)),
        cex = 1
      )
    }
    }
    else if (plottype() == "p7")
    {
      if (!is.null(input$variable7))
      {
        txn_merge <<- input$variable7
        
        #MULTIBAR PLOT (txn_type vs date_range)
        nrow = length(txn_merge)
        ncol = length(usernames)
        
        bar_data = matrix(c(1:nrow * ncol),
                          nrow = length(txn_merge),
                          ncol = length(usernames))
        
        
        for (i in 1:length(txn_merge))
        {
          for (j in 1:length(usernames))
          {
            bar_data[i, j] = nrow(filter(
              hel ,
              hel$user_nm == usernames[j],
              hel$txn_type_c == txn_merge[i]
            ))
          }
        }
        
        barplot(
          as.matrix(bar_data),
          main = "Transaction type vs Date Range",
          col = rainbow(length(txn_merge)),
          ylab = "Number of transactions",
          xlab = "User Names",
          names.arg = usernames,
          yaxp = c(0, 1000, 50),
          beside = TRUE
        )
        legend("topright",
               legend = txn_merge,
               bg="transparent",
               fill = rainbow(length(txn_merge)))
        v <<- "0"
      }
    }
    else if (plottype() == "p8")
    {
      app_process <- unique(hello$app_process)
      app_process <- na.omit(app_process)
      app_process <<- setdiff(app_process,"NULL")
      
      if (!is.null(input$variable4))
      {
        txn_merge <<- input$variable4
        
        #MULTIBAR PLOT (txn_type vs date_range)
        nrow = length(txn_merge)
        ncol = length(app_process)
        bar_data = matrix(
          c(1:nrow * ncol),
          nrow = length(txn_merge),
          ncol = length(app_process)
        )
        
        
        for (i in 1:length(txn_merge))
        {
          for (j in 1:length(app_process))
          {
            bar_data[i, j] = nrow(filter(
              hello,
              (hello$app_process) == app_process[j],
              hello$txn_type_c == txn_merge[i]
            ))
          }
        }
        
        
        barplot(
          as.matrix(bar_data),
          main = "Calls per service vs App_process",
          col = rainbow(length(txn_merge)),
          names.arg = app_process ,
          ylab = "Number of calls per service",
          xlab = "App_process",
          yaxp = c(0, 300, 50),
          beside = TRUE
        )
        legend("topright",
               legend = txn_merge,
               bg="transparent",
               fill = rainbow(length(txn_merge)))
        
        v <<- "0"
        
      }
    }
    
    
    else if (plottype() == "p9")
    {
      user_role <<- sort(unique(merged$user_role_c))
      user_role <<- setdiff(user_role,"NULL")
      if (!is.null(input$variable5))
      {
        transactions1 <<- input$variable5
        print(transactions1)
        #MULTIBAR PLOT (calls per service vs user role)
        nrow = length(transactions1)
        ncol = length(user_role)
        bar_data = matrix(
          c(1:nrow * ncol),
          nrow = length(transactions1),
          ncol = length(user_role)
        )
        
        
        for (i in 1:length(transactions1))
        {
          for (j in 1:length(user_role))
          {
            bar_data[i,j]  = nrow(filter(
              merged,
              merged$user_role_c == user_role[j],
              merged$txn_type_c == transactions1[i] 
              
            ))
            
          }
          
        }
        print(bar_data)
        
        
        barplot(
          as.matrix(bar_data),
          main = "Calls per service vs User role",
          col = rainbow(length(transactions1)),
          names.arg = user_role ,
          ylab = "Calls per service",
          xlab = "User role",
          yaxp = c(0, 1000, 50),
          beside = TRUE
        )
        legend("topright",
               legend = transactions1,
               fill = rainbow(length(transactions1)))
        
      }
    }
    
  })
  
  compare <- function() {
    errors <<- (error_file()$msg_text_x)
    library(gsubfn)
    b <- c()
    for (i in 1:length(errors))
    {
      if (grepl(",", errors[i]))
        b <-
          append(b, strapplyc(errors[i], "(.*),", simplify = TRUE))
      else
        b <- append(b, errors[i])
    }
    
    error_count <<- as.data.frame(table(b))
    
    
    status <<- c()
    status <<- (error_status()$error)
    unique_b <<- unique(b)
    
    unique_b <<- sort(unique_b)
    status <<- sort(status)
    error_status_data <<- as.data.frame(error_status())
    
  }
  
  classify_errors <- function() {
    if(is.null(rv$check_var)){
    compare()
    print("hgdxh")
    #print(unique_b)
    final_update <<- data.frame()
   # final_open_errors <<- data.frame()
    open_errors_new <- data.frame()
    if (identical(unique_b, status) == FALSE) {
      open_errors <- setdiff(error_count[, 1], status)
      
      
      
      
      
      for (j in 1:length(open_errors))
      {
        for (k in 1:length(error_count[, 1]))
        {
          if (open_errors[j] == error_count[k, 1])
          {
            open_errors_new[j, 1] = open_errors[j]
            open_errors_new[j, 2] = error_count[k, 2]
            open_errors_new[j, 3] = "Open"
          }
        }
      }
      
      # print(open_errors_info)
      
      
    }
    
    
    
    existing_errors_updated <- data.frame()
  
    if (length(status) == 0)
    {
      print("jdhj")
      for (n in 1:length(unique_b))
      {
        for (s in 1:length(error_count[, 1]))
        {
          if (unique_b[n] == error_count[s, 1])
          {
            open_errors_new[n, 1] = unique_b[n]
            open_errors_new[n, 2] = error_count[s, 2]
            open_errors_new[n, 3] = "Open"
          }
        }
      }
      rv$final_open_errors <<- open_errors_new
      
    }
    else {
      
      t <- 1
      
      for (i in 1:length(error_count[, 1]))
      {
        for (l in 1:length(error_status_data[, 1])) {
          if (error_status_data[l, 1] == error_count[i, 1] &&
              error_status_data[l, 3] == "Open")
          {
            print("hel")
            print(t)
            existing_errors_updated[t, 1] = error_count[i, 1]
            existing_errors_updated[t, 2] = error_count[i, 2] + error_status_data[l, 2]
            existing_errors_updated[t, 3] = error_status_data[l, 3]
            t <- t + 1
          }
        }
      }
      
      
      #print(existing_errors_updated)
      rv$final_open_errors <<-
        rbind(open_errors_new, existing_errors_updated)
      
      
      
      
      v <- 1
      final_progress_errors1 <<- data.frame()
      for (o in 1:length(error_count[, 1]))
      {
        for (w in 1:length(error_status_data[, 1])) {
          if (error_status_data[w, 1] == error_count[o, 1] &&
              error_status_data[w, 3] == "Progress")
          {
            print("hell")
            print(v)
            final_progress_errors1[v, 1] = error_count[o, 1]
            final_progress_errors1[v, 2] = error_count[o, 2] + error_status_data[w, 2]
            final_progress_errors1[v, 3] = error_status_data[w, 3]
            v <- v + 1
          }
        }
      }
      
      rv$final_progress_errors <<- final_progress_errors1
      
      
      
      
      
      u <- 1
      final_closed_errors1 <<- data.frame()
      for (e in 1:length(error_count[, 1]))
      {
        for (g in 1:length(error_status_data[, 1])) {
          if (error_status_data[g, 1] == error_count[e, 1] &&
              error_status_data[g, 3] == "Closed")
          {
            final_closed_errors1[u, 1] = error_count[e, 1]
            final_closed_errors1[u, 2] = error_count[e, 2] + error_status_data[g, 2]
            final_closed_errors1[u, 3] = error_status_data[g, 3]
            u <- u + 1
          }
        }
      }
      
      
      
      rv$final_closed_errors <<- final_closed_errors1
    }
    rv$check_var <<- "updated"
    }
  }
  output$errors <- renderUI({
    classify_errors()
    write_to_csv()
    
    fluidRow(
      box(
        title = "New Open Items",
        status = "danger",
        solidHeader = TRUE,
        width = 4,
        uiOutput("open")
      ),
      box(
        title = "Items In Progress",
        status = "warning",
        solidHeader = TRUE,
        width = 4,
        uiOutput("progress")
      ),
      box(
        title = "Closed Items",
        status = "success",
        solidHeader = TRUE,
        width = 4,
        uiOutput("closed")
      )
    )
    
    
    
    
  })
  write_to_csv <- reactive({
    final_update <<- data.frame()
    #print(final_open_errors)
    final_update <<- rbind(final_update, rv$final_open_errors)
    final_update <<- rbind(final_update, rv$final_progress_errors)
    final_update <<- rbind(final_update, rv$final_closed_errors)
    colnames(final_update) <<- c("error", "count", "status")
    (write_csv(final_update, path = "~/practice/Error Status.csv"))
    
  })
  output$open <- renderUI({
    colnames(rv$final_open_errors) <- c("error", "count", "status")
    fluidRow(
      box(width = 12,
          uiOutput("valueBox1", width = 12)),
      box(width = 12,
          uiOutput("valueBox2", width = 12)),
      box(width = 12,
          uiOutput("valueBox3", width = 12)),
      box(width = 12,
          uiOutput("valueBox4", width = 12)),
      box(width = 12,
          uiOutput("valueBox5", width = 12)),
      box(width = 12,
          uiOutput("valueBox6", width = 12)),
      box(width = 12,
          uiOutput("valueBox7", width = 12)),
      box(width = 12,
          uiOutput("valueBox8", width = 12)),
      box(width = 12,
          uiOutput("valueBox9", width = 12)),
      box(width = 12,
          uiOutput("valueBox10", width = 12))
    )
    
  })
  
  output$valueBox1 <- renderUI({
    if (rv$final_open_errors[1, 3] == "Open")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "red",
          rv$final_open_errors[1, 2],
          rv$final_open_errors[1, 1],
          icon = icon("credit-card")
        ),
        actionButton("input1", "Mark as IN PROGRESS", style = "margin:10px; ")
      )
    }
  })
  
  output$valueBox2 <- renderUI({
    if (rv$final_open_errors[2, 3] == "Open")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "red",
          rv$final_open_errors[2, 2],
          rv$final_open_errors[2, 1],
          icon = icon("credit-card")
        ),
        actionButton("input2", "Mark as IN PROGRESS", style = "margin:10px; ")
      )
    }
  })
  
  output$valueBox3 <- renderUI({
    if (rv$final_open_errors[3, 3] == "Open")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "red",
          rv$final_open_errors[3, 2],
          rv$final_open_errors[3, 1],
          icon = icon("credit-card")
        ),
        actionButton("input3", "Mark as IN PROGRESS", style = "margin:10px; ")
      )
    }
  })
  
  output$valueBox4 <- renderUI({
    if (rv$final_open_errors[4, 3] == "Open")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "red",
          rv$final_open_errors[4, 2],
          rv$final_open_errors[4, 1],
          icon = icon("credit-card")
        ),
        actionButton("input4", "Mark as IN PROGRESS", style = "margin:10px; ")
      )
    }
  })
  
  output$valueBox5 <- renderUI({
    if (rv$final_open_errors[5, 3] == "Open")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "red",
          rv$final_open_errors[5, 2],
          rv$final_open_errors[5, 1],
          icon = icon("credit-card")
        ),
        actionButton("input5", "Mark as IN PROGRESS", style = "margin:10px; ")
      )
    }
  })
  
  output$valueBox6 <- renderUI({
    if (rv$final_open_errors[6, 3] == "Open")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "red",
          rv$final_open_errors[6, 2],
          rv$final_open_errors[6, 1],
          icon = icon("credit-card")
        ),
        actionButton("input6", "Mark as IN PROGRESS", style = "margin:10px; ")
      )
    }
  })
  
  output$valueBox7 <- renderUI({
    if (rv$final_open_errors[7, 3] == "Open")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "red",
          rv$final_open_errors[7, 2],
          rv$final_open_errors[7, 1],
          icon = icon("credit-card")
        ),
        actionButton("input7", "Mark as IN PROGRESS", style = "margin:10px; ")
      )
    }
  })
  
  output$valueBox8 <- renderUI({
    if (rv$final_open_errors[8, 3] == "Open")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "red",
          rv$final_open_errors[8, 2],
          rv$final_open_errors[8, 1],
          icon = icon("credit-card")
        ),
        actionButton("input8", "Mark as IN PROGRESS", style = "margin:10px; ")
      )
    }
  })
  output$valueBox9 <- renderUI({
    if (rv$final_open_errors[9, 3] == "Open")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "red",
          rv$final_open_errors[9, 2],
          rv$final_open_errors[9, 1],
          icon = icon("credit-card")
        ),
        actionButton("input9", "Mark as IN PROGRESS", style = "margin:10px; ")
      )
    }
  })
  output$valueBox10 <- renderUI({
    if (rv$final_open_errors[10, 3] == "Open")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "red",
          rv$final_open_errors[10, 2],
          rv$final_open_errors[10, 1],
          icon = icon("credit-card")
        ),
        actionButton("input10", "Mark as IN PROGRESS", style = "margin:10px; ")
      )
    }
  })
  
  output$progressBox1 <- renderUI({
    if (rv$final_progress_errors[1, 3] == "Progress")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "yellow",
          rv$final_progress_errors[1, 2],
          rv$final_progress_errors[1, 1],
          icon = icon("credit-card")
        ),
        actionButton("close1", "Mark as CLOSED", style = "margin:10px; ")
      )
    }
   
  })
  output$progressBox2 <- renderUI({
    if (rv$final_progress_errors[2, 3] == "Progress")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "yellow",
          rv$final_progress_errors[2, 2],
          rv$final_progress_errors[2, 1],
          icon = icon("credit-card")
        ),
        actionButton("close2", "Mark as CLOSED", style = "margin:10px; ")
      )
    }
    
  })
  output$progressBox3 <- renderUI({
    if (rv$final_progress_errors[3, 3] == "Progress")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "yellow",
          rv$final_progress_errors[3, 2],
          rv$final_progress_errors[3, 1],
          icon = icon("credit-card")
        ),
        actionButton("close3", "Mark as CLOSED", style = "margin:10px; ")
      )
    }
    
  })
  output$progressBox4 <- renderUI({
    if (rv$final_progress_errors[4, 3] == "Progress")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "yellow",
          rv$final_progress_errors[4, 2],
          rv$final_progress_errors[4, 1],
          icon = icon("credit-card")
        ),
        actionButton("close4", "Mark as CLOSED", style = "margin:10px; ")
      )
    }
    
  })
  output$progressBox5 <- renderUI({
    if (rv$final_progress_errors[5, 3] == "Progress")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "yellow",
          rv$final_progress_errors[5, 2],
          rv$final_progress_errors[5, 1],
          icon = icon("credit-card")
        ),
        actionButton("close5", "Mark as CLOSED", style = "margin:10px; ")
      )
    }
    
  })
  output$progressBox6 <- renderUI({
    if (rv$final_progress_errors[6, 3] == "Progress")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "yellow",
          rv$final_progress_errors[6, 2],
          rv$final_progress_errors[6, 1],
          icon = icon("credit-card")
        ),
        actionButton("close6", "Mark as CLOSED", style = "margin:10px; ")
      )
    }
    
  })
  output$progressBox7 <- renderUI({
    if (rv$final_progress_errors[7, 3] == "Progress")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "yellow",
          rv$final_progress_errors[7, 2],
          rv$final_progress_errors[, 1],
          icon = icon("credit-card")
        ),
        actionButton("close7", "Mark as CLOSED", style = "margin:10px; ")
      )
    }
    
  })
  output$progressBox8 <- renderUI({
    if (rv$final_progress_errors[8, 3] == "Progress")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "yellow",
          rv$final_progress_errors[8, 2],
          rv$final_progress_errors[8, 1],
          icon = icon("credit-card")
        ),
        actionButton("close8", "Mark as CLOSED", style = "margin:10px; ")
      )
    }
    
  })
  output$progressBox9 <- renderUI({
    if (rv$final_progress_errors[9, 3] == "Progress")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "yellow",
          rv$final_progress_errors[9, 2],
          rv$final_progress_errors[9, 1],
          icon = icon("credit-card")
        ),
        actionButton("close9", "Mark as CLOSED", style = "margin:10px; ")
      )
    }
    
  })
  output$progressBox10 <- renderUI({
    if (rv$final_progress_errors[10, 3] == "Progress")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "yellow",
          rv$final_progress_errors[10, 2],
          rv$final_progress_errors[10, 1],
          icon = icon("credit-card")
        ),
        actionButton("close10", "Mark as CLOSED", style = "margin:10px; ")
      )
    }
    
  })
  
  output$progress <- renderUI({
    if (length(rv$final_progress_errors) > 0) {
      colnames(rv$final_progress_errors) <- c("error", "count", "status")
      fluidRow(box(width = 12,
                   uiOutput("progressBox1", width = 12)),
               box(width = 12,
                   uiOutput("progressBox2", width = 12)),
               box(width = 12,
                   uiOutput("progressBox3", width = 12)),
               box(width = 12,
                   uiOutput("progressBox4", width = 12)),
               box(width = 12,
                   uiOutput("progressBox5", width = 12)),
               box(width = 12,
                   uiOutput("progressBox6", width = 12)),
               box(width = 12,
                   uiOutput("progressBox7", width = 12)),
               box(width = 12,
                   uiOutput("progressBox8", width = 12)),
               box(width = 12,
                   uiOutput("progressBox9", width = 12)),
               box(width = 12,
                   uiOutput("progressBox10", width = 12)))
    }
    else
      print("No errors in progress")
   
    
  })
  output$closeBox1 <- renderUI({
     if (rv$final_closed_errors[1, 3] == "Closed")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "green",
          rv$final_closed_errors[1, 2],
          rv$final_closed_errors[1, 1],
          icon = icon("credit-card")
        )
      )
    }
    
  })
  output$closeBox2 <- renderUI({
    if (rv$final_closed_errors[2, 3] == "Closed")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "green",
          rv$final_closed_errors[2, 2],
          rv$final_closed_errors[2, 1],
          icon = icon("credit-card")
        )
      )
    }
    
  })
  output$closeBox3 <- renderUI({
    if (rv$final_closed_errors[3, 3] == "Closed")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "green",
          rv$final_closed_errors[3, 2],
          rv$final_closed_errors[3, 1],
          icon = icon("credit-card")
        )
      )
    }
    
  })
  output$closeBox4 <- renderUI({
    if (rv$final_closed_errors[4, 3] == "Closed")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "green",
          rv$final_closed_errors[4, 2],
          rv$final_closed_errors[4, 1],
          icon = icon("credit-card")
        )
      )
    }
    
  })
  output$closeBox5 <- renderUI({
    if (rv$final_closed_errors[5, 3] == "Closed")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "green",
          rv$final_closed_errors[5, 2],
          rv$final_closed_errors[5, 1],
          icon = icon("credit-card")
        )
      )
    }
    
  })
  output$closeBox6 <- renderUI({
    if (rv$final_closed_errors[6, 3] == "Closed")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "green",
          rv$final_closed_errors[6, 2],
          rv$final_closed_errors[6, 1],
          icon = icon("credit-card")
        )
      )
    }
    
  })
  output$closeBox7 <- renderUI({
    if (rv$final_closed_errors[7, 3] == "Closed")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "green",
          rv$final_closed_errors[7, 2],
          rv$final_closed_errors[7, 1],
          icon = icon("credit-card")
        )
      )
    }
    
  })
  output$closeBox8 <- renderUI({
    if (rv$final_closed_errors[8, 3] == "Closed")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "green",
          rv$final_closed_errors[8, 2],
          rv$final_closed_errors[8, 1],
          icon = icon("credit-card")
        )
      )
    }
    
  })
  output$closeBox9 <- renderUI({
    if (rv$final_closed_errors[9, 3] == "Closed")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "green",
          rv$final_closed_errors[9, 2],
          rv$final_closed_errors[9, 1],
          icon = icon("credit-card")
        )
      )
    }
    
  })
  output$closeBox10 <- renderUI({
    if (rv$final_closed_errors[10, 3] == "Closed")
    {
      fluidRow(
        valueBox(
          width = 12,
          color = "green",
          rv$final_closed_errors[10, 2],
          rv$final_closed_errors[10, 1],
          icon = icon("credit-card")
        )
      )
    }
    
  })
  output$closed <- renderUI({
    if (length(rv$final_closed_errors) > 0)
    {
      colnames(rv$final_closed_errors) <<- c("error", "count", "status")
      fluidRow(box(width = 12,
                   uiOutput("closeBox1", width = 12)),
               box(width = 12,
                   uiOutput("closeBox2", width = 12)),
               box(width = 12,
                   uiOutput("closeBox3", width = 12)),
               box(width = 12,
                   uiOutput("closeBox4", width = 12)),
               box(width = 12,
                   uiOutput("closeBox5", width = 12)),
               box(width = 12,
                   uiOutput("closeBox6", width = 12)),
               box(width = 12,
                   uiOutput("closeBox7", width = 12)),
               box(width = 12,
                   uiOutput("closeBox8", width = 12)),
               box(width = 12,
                   uiOutput("closeBox9", width = 12)),
               box(width = 12,
                   uiOutput("closeBox10", width = 12)))
    }
    else
      print("No errors are closed")
    
    
    
  })
  
  
  
  # the following renderUI is used to dynamically generate the tabsets when the file is loaded. Until the file is loaded, app will not show the tabset.
  output$tb <- renderUI({
    input$directory
    if (input$directory == 0)
    {
      h4("Please Choose a Directory!")
      
      
      
      
      input$directory
      tabsetPanel(
        tabPanel("About file", uiOutput("new1")),
        tabPanel("Data", tableOutput("new2")),
        tabPanel("Plots", uiOutput("plots")),
        tabPanel("Errors", uiOutput("errors")),
        tabPanel("Prediction", uiOutput("prediction"))
        
        
      )
    }
  })
  
})