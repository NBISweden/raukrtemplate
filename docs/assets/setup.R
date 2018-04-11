# load libraries ---------------------------------------------------------------
library(knitr) # runs pandoc
library(bookdown) # for markdown
library(captioner) # for table and figure captions

suppressPackageStartupMessages(library(tidyverse))
#htmltools::tagList(rmarkdown::html_dependency_font_awesome())

# prepare captions -------------------------------------------------------------
tc <- captioner::captioner(prefix="<b>Tab. </b>")
fc <- captioner::captioner(prefix="<b>Fig. </b>")

# knitr options ----------------------------------------------------------------

knitr::opts_knit$set(progress=TRUE,verbose=TRUE)
knitr::opts_chunk$set(dev="CairoPNG",results="hold",fig.show="hold",fig.align="left",echo=TRUE,warning=FALSE,message=FALSE)

## custom hooks
### hook for challenges answers

knitr::knit_hooks$set(answer = function(before, options, envir) {
  if (before) {
    paste(
      "<div class=\"accordion\">",
      "<h3 class=\"toc-ignore\">Answer</h3>",
      "<div style=\"background: #fff;\">",  sep = "\n")
  } else {
    paste("</div>", "</div>", sep = "\n")
  }
})

eng_text_answer <- knitr:::eng_html_asset(
  paste(
    "<div class=\"accordion\">",
    "<h3 class=\"toc-ignore\">Answer</h3>",
    "<div style=\"background: #fff;\">",
    "<p>",  sep = "\n"),
  paste(
    "</div>", "</div>", "</p>", sep = "\n"
  )
)

knitr::knit_engines$set(text_answer = eng_text_answer)