fluidRow(style = "font-size:60%",
         column(width = 4 , p("Primary Filter"), style='text-align:center; border:5px solid #3c8dbc;',
                uiOutput("filter_col_1"),
                uiOutput("filter_select_1"),
         ),#end column
         
         conditionalPanel(condition = 'input.filter_col_1 != "none"',
         column(width = 4, p("Secondary Filter"),style='text-align:center; border:5px solid #3c8dbc;',
                uiOutput("filter_col_2"),
                uiOutput("filter_select_2"),
         ),#end column
         ),#end conditional panel
         
         conditionalPanel(condition = 'input.filter_col_2 != "none"',
         column(width = 4, p("Tertiary Filter"),style='text-align:center; border:5px solid #3c8dbc;',
                uiOutput("filter_col_3"),
                uiOutput("filter_select_3"),
         ),#end column
         ),#end conditional panel
         
         column(width = 12,
                actionButton("reset",
                             "Reset Filter",
                             icon = icon("undo"),
                             style = "width:100%; text-align: center; margin-top: 7px;")
         ),
         br(),
         hr()
         
)