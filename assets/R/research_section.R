research_section <- function(xlsx = "data/cv.xlsx", sheet = "research", page_break_after = FALSE, colour = "#3f007d") {
  text <- read_excel_sheet(xlsx, sheet)[
    i = .N:1,
    j = sprintf(
        "### %s\n\n%s\n\nN/A\n\nN/A\n\nTools: *%s*\n\n::: aside\n\n*[%s](%s)*\n\n:::",
        project, activities, tools_used, paste0(fontawesome::fa("link", fill = colour), " ", author), url
    )
  ]

  if (page_break_after) {
    c("## Research Experience {data-icon=flask .break-after-me}", text)
  } else {
    c("## Research Experience {data-icon=flask}", text)
  }
}
