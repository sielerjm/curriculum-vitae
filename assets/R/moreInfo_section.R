moreInfo_section <- function(xlsx = "data/cv.xlsx", sheet = "moreInfo", colour = "#3f007d") {
    read_excel_sheet(xlsx, sheet)[
        j = sprintf(
            fmt = paste(
                "## More Info {#moreInfo}\n",
                "- %s [%s](%s)",
                "- %s [%s](%s)",
                "\n",
                sep = "\n"
            ),
            fontawesome::fa("newspaper", fill = colour, margin_right = "0.2em", width = "1em"), "Publications", publications,
            fontawesome::fa("list", fill = colour, margin_right = "0.2em", width = "1em"), "Projects", projects
        )
    ]
}
