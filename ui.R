library(shiny)

shinyUI(pageWithSidebar( 
            headerPanel("Distribution Confidence Interval Investigation"), 
            
            sidebarPanel(
                
                selectInput("distriModel","Distribution", list("Binomial","Poisson")),
                helpText("This app would give a range of estimates of happening probability or rate based on the sample value"),
                
                sliderInput("confInterval", "Confidence Interval:", 
                            min=1, max=99, value=90),
                uiOutput("distributionConfig1"),
                uiOutput("config1Help"),
                uiOutput("distributionConfig2"),
                uiOutput("config2Help")
            ),
            mainPanel(
                h3(textOutput('method')),
                p(textOutput('confidenceInterval')),
                plotOutput('disPlot'),
                htmlOutput("Explanation")
            )
            
                     
                         
        )
)