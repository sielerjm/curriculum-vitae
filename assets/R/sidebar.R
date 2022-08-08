sidebar <- function(
  png = "pictures/cv.png",
  contact = contact_section(),
  skills = skills_section(),
  moreInfo = moreInfo_section(),
  disclaimer = disclaimer_section()
) {
  cat(
    "# Aside\n",
    '```{r, out.extra = \'style="width=226px;" id="picture"\'}',
    "knitr::include_graphics({png})",
     "```",
    contact,
    skills,
    moreInfo,
    disclaimer,
    sep = "\n\n"
  )
}
