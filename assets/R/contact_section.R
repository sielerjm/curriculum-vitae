contact_section <- function(xlsx = "data/cv.xlsx", sheet = "contact", colour = "#3f007d") {
  read_excel_sheet(xlsx, sheet)[
    j = sprintf(
      fmt = paste(
        "## Contact Info {#contact}\n",
        "- %s %s",
        "- %s %s",
        "- %s %s",
        "- %s [%s](mailto:%s)",
        # "- %s %s",
        "- %s [%s](%s)",
        "- %s [%s](https://orcid.org/%s)",
        "- %s [%s](https://www.linkedin.com/in/%s)",
        "- %s [%s](https://github.com/%s)",
        # "- %s [%s](https://twitter.com/%s)",
        # "- %s %s",
        "\n",
        sep = "\n"
      ),
      fontawesome::fa("user", fill = colour, margin_right = "0.2em", height = "1em", width = "1em"), position,
      fontawesome::fa("building-columns", fill = colour, margin_right = "0.2em", height = "1em", width = "1em"), institute,
      fontawesome::fa("earth-americas", fill = colour, margin_right = "0.2em", width = "1em"), city,
      fontawesome::fa("envelope", fill = colour, margin_right = "0.2em", height = "1em", width = "1em"), sub("@", " [at] ", email), email,
      # fontawesome::fa("phone-flip", fill = colour, margin_right = "0.2em", height = "1em", width = "1em"), phone,
      fontawesome::fa("house", fill = colour, margin_right = "0.2em", width = "1em"), sub("/$", "", sub("https*://", "", website)), website,
      fontawesome::fa("orcid", fill = colour, margin_right = "0.2em", height = "1em", width = "1em"), orcid, orcid,
      fontawesome::fa("linkedin", fill = colour, margin_right = "0.2em", height = "1em", width = "1em"), linkedin, linkedin,
      fontawesome::fa("github", fill = colour, margin_right = "0.2em", height = "1em", width = "1em"), github, github
      # fontawesome::fa("twitter", fill = colour, margin_right = "0.2em", height = "1em", width = "1em"), twitter, twitter,
      # fontawesome::fa("r-project", fill = colour, margin_right = "0.2em", height = "1em", width = "1em"), rgroup
    )
  ]
}
