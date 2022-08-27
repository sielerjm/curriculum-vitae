
# HTML to PDF -------------------------------------------------------------

library(pagedown)
library(rmarkdown)

output.dir = "/Users/michaelsieler/Dropbox/Mac (2)/Documents/Project_Repos/michaelsieler/ResumeCV/"
user.name = "MichaelSieler"


## Resume ------------------------------------------------------------------

outType = "Resume" # "Resume" or "CV"

pagedown::chrome_print(
    rmarkdown::render("curriculum-vitae.Rmd",
                      output_file = paste0(user.name, "_", outType),
                      params = list(
                          outType = outType  # "Resume" or "CV"
                      ))
)


## CV ----------------------------------------------------------------------

outType = "CV" # "Resume" or "CV"

pagedown::chrome_print(
    rmarkdown::render("curriculum-vitae.Rmd",
                      output_file = paste0(user.name, "_", outType),
                      params = list(
                          outType = outType  # "Resume" or "CV"
                      ))
)

## Copy Files to Other Directory -------------------------------------------

### Resume
file.copy(from = paste0(getwd(), "/", user.name, "_Resume.pdf"),
          to = paste0(output.dir, user.name, "_Resume.pdf"),
          overwrite = T
          ) 

### CV
file.copy(from = paste0(getwd(), "/", user.name, "_CV.pdf"),
          to = paste0(output.dir, user.name, "_CV.pdf"),
          overwrite = T
          )


# Completed! --------------------------------------------------------------

print("Completed HTML to PDF")
