experience_section <- function(xlsx = "data/cv.xlsx", sheet = "experience", page_break_after = FALSE) {
  text <- read_excel_sheet(xlsx, sheet)[
    i = .N:1,
    j = sprintf(
        "### %s\n\n%s\n\n%s\n\n%s\n\n::: aside\n%s\n:::\n\n\n\n",
        title, organiser, city, date, add_github_logo(url, colour)
    )
  ]

  if (page_break_after) {
    c("## Professional Experience {data-icon=laptop .break-after-me}", text)
  } else {
    c("## Professional Experience {data-icon=laptop}", text)
  }
}
