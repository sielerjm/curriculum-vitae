
# HTML to PDF -------------------------------------------------------------


pagedown::chrome_print(
    rmarkdown::render("curriculum-vitae.Rmd",
                      params = list(
                          outType = "CV"  # "Resume" or "CV"
                      ))
    )
