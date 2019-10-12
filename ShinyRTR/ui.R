#library(shiny)
shinyUI(
    navbarPage("Shiny App",
               tabPanel("Analysis",
                        fluidPage(
                            titlePanel("MTCARS Variables Vs MPG"),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Variable:",
                                                c("No of cylinders" = "cyl",
                                                  "Displacement (cu.in.)" = "disp",
                                                  "Gross hp" = "hp",
                                                  "Rear axle ratio" = "drat",
                                                  "Weight (lb/1000)" = "wt",
                                                  "1/4 mile time" = "qsec",
                                                  "V/S" = "vs",
                                                  "Transmission" = "am",
                                                  "No of forward gears" = "gear",
                                                  "No of carburetors" = "carb"
                                                )),
                                    
                                    checkboxInput("outliers", "Show outliers", TRUE)
                                ),
                                
                                mainPanel(
                                    h3(textOutput("caption")),
                                    
                                    tabsetPanel(type = "tabs", 
                                                tabPanel("Boxplot", plotOutput("mpgBoxPlot")),
                                                tabPanel("Reg model", 
                                                         plotOutput("mpgPlot"),
                                                         verbatimTextOutput("fit")
                                                )
                                    )
                                )
                            )
                        )
               ),
               tabPanel("Data Set",
                        
                        h3("Reg.Models Course Proj"),
                        helpText("Analysis of mtcars datsets to exlore the relationship",
                                 "between a set of variables and miles per gallon (MPG) (outcome). to find out Is an automatic or manual transmission better for MPG. Quantify the MPG difference between automatic and manual transmissions"),
                        h3("Important"),
                        p("A data frame with 32 observations on 11 variables."),
                        
                        a("https://class.coursera.org/regmods-008")
               ),
               tabPanel("Detailed info on Data",
                        h2("Motor car Road Tests Trends"),
                        hr(),
                        h3("Introduction"),
                        helpText("This data extracted from 1974 Motor Trend magazine,",
                                 " contains fuel consumption and 10 variables of automobile design and motor car performance",
                                 " for 32 automobiles (1973-74 models)."),
                        h3("Format"),
                        p("A data frame with 32 obs. on 11 variables."),
                        
                        p("  [, 1]   mpg         Miles/(US) gallon"),
                        p("  [, 2]	 cyl	 Number of cylinders"),
                        p("  [, 3]	 disp	 Displacement (cu.in.)"),
                        p("  [, 4]	 hp	 Gross horsepower"),
                        p("  [, 5]	 drat	 Rear axle ratio"),
                        p("  [, 6]	 wt	 Weight (lb/1000)"),
                        p("  [, 7]	 qsec	 1/4 mile time"),
                        p("  [, 8]	 vs	 V/S"),
                        p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                        p("  [,10]	 gear	 Number of forward gears"),
                        p("  [,11]	 carb	 Number of carburetors"),
                        
                        h3("Source"),
                        
                        p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.")
               ),
               tabPanel("Go to my Github repo",
                        a("https://github.com/thimmaru/DDP_Week4_Proj"),
                        hr(),
                        h4("I hope you like the App"),
                        h4("The Repo name is DDP_Week4_Proj")
               )
    )
)