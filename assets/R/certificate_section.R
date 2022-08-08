certificate_section <- function(xlsx = "data/cv.xlsx", sheet = "certificates", page_break_after = FALSE, colour = "#3f007d") {
    text <- read_excel_sheet(xlsx, sheet)[
        i = .N:1,
        j = sprintf(
            "### %s\n\n%s\n\nN/A\n\n%s\n\n%s\n\n::: aside\n*[%s](%s)*\n:::\n\n\n\n",
            name, institute, date, description, paste0(fontawesome::fa("link", fill = colour), " ", website), url
        )
    ]
    
    if (page_break_after) {
        c(sprintf("## Certificates (%s) {data-icon=award .break-after-me}", length(text)), text)
    } else {
        c(sprintf("## Certificates (%s) {data-icon=award}", length(text)), text)
    }
}
