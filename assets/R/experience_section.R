experience_section <- function(xlsx = "data/cv.xlsx", sheet = "experience", page_break_after = FALSE) {
  text <- read_excel_sheet(xlsx, sheet)[
    i = .N:1,
    j = sprintf(
        "### %s\n\n%s\n\n%s\n\n%s - %s\n\n%s\n\n<u>Projects</u>: %s\n\n<u>Tools</u>: %s\n\n\n\n",
        position, institute, city, start, end, activities, projects, tools_used
    )
  ]

  if (page_break_after) {
    c("## Professional Experience {data-icon=laptop .break-after-me}", text)
  } else {
    c("## Professional Experience {data-icon=laptop}", text)
  }
}
