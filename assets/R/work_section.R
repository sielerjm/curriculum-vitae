work_section <- function(xlsx = "data/cv.xlsx", sheet = "work", page_break_after = FALSE, colour = "#3f007d") {
  text <- read_excel_sheet(xlsx, sheet)[
    i = .N:1,
    j = sprintf(
      "### %s\n\n%s\n\n%s\n\n%s - %s\n\n<u>Activities</u>: %s\n\n<u>Projects</u>: %s\n\n",
      position, institute, city, start, end, activities, projects
    )
  ]

  if (page_break_after) {
    c("## Work Experience {data-icon=briefcase .break-after-me}", text)
  } else {
    c("## Work Experience {data-icon=briefcase}", text)
  }
}
