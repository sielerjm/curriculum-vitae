
# HTML to PDF -------------------------------------------------------------

outType = "CV" # "Resume" or "CV"

pagedown::chrome_print(
    rmarkdown::render("curriculum-vitae.Rmd",
                      output_file = paste0("MichaelSieler_", outType),
                      params = list(
                          outType = outType  # "Resume" or "CV"
                      ))
    )

outType = "Resume" # "Resume" or "CV"

pagedown::chrome_print(
    rmarkdown::render("curriculum-vitae.Rmd",
                      output_file = paste0("MichaelSieler_", outType),
                      params = list(
                          outType = outType  # "Resume" or "CV"
                      ))
)
