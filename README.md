
<img src="docs/assets/logo.svg" align="right" width="96" height="96">

# raukrtemplate

This is an R package containing presentation and lab RMarkdown templates for the RaukR R course.

## Installation  

This package can be installed from R/RStudio as follows:

```r
# install devtools from CRAN
install.packages("remotes")

# install this package from GitHub
remotes::install_github("NBISweden/raukrtemplate")
```

No dependencies are required to create the template. But, the following dependecies are required to render the basic templates.

```
install.packages(c("knitr","markdown","rmarkdown","fontawesome","captioner","bookdown","xaringan"), repos="https://cloud.r-project.org/")
```

The standard templates are to be used for preparing your own material.

The 'demo' template contains examples of RMarkdown syntax, features, formatting, alignment, graphics and interactive graphics. If you plan to use/render the demo template, note that it uses several dependency R packages listed below.

```
install.packages(c("dplyr", "tidyr", "stringr", "kableExtra",
"formattable", "DT", "highcharter", "plotly","ggiraph", "dygraphs",
"networkD3", "leaflet", "crosstalk"),repos="https://cloud.r-project.org/")
```

If you just want to view the rendered demo output and not render it yourself, see section 'Rendering' below.

## Presentation Template  

The presentation template for use can be accessed either interactively from RStudio:

`File > New File > R Markdown... > From Template > RaukR 2022 Presentation Template`

or using the following code:

`rmarkdown::draft("presentation_topic.Rmd", template="presentation", package="raukrtemplate", edit=FALSE)`

For demo, use the template below.

`File > New File > R Markdown... > From Template > RaukR 2022 Presentation Demo`

or using the following code:

`rmarkdown::draft("presentation_topic.Rmd", template="presentation_demo", package="raukrtemplate", edit=FALSE)`

## Lab Template  

The lab template for use can be accessed either interactively from RStudio:

`File > New File > R Markdown... > From Template > RaukR 2022 Lab Template`

or using the following code:

`rmarkdown::draft("lab_topic.Rmd", template="lab", package="raukrtemplate", edit=FALSE)`

For demo, use the template below.

`File > New File > R Markdown... > From Template > RaukR 2022 Lab Demo`

or using the following code:

`rmarkdown::draft("lab_topic.Rmd", template="lab_demo", package="raukrtemplate", edit=FALSE)`

## Rendering

Once you have created your own **.Rmd** file based on the template and saved to a suitable location, the **.Rmd** document can be rendered to HTML by running the below in the document directory.

```
rmarkdown::render("analysis.Rmd")
```

Note the **assets** directory or any other supporting directories such as **analysis_files** must NOT be deleted. They must be provided when sharing the HTML document. The final HTML document is NOT standalone. It is dependent on the child directories. If you have your own content (images etc) used in the RMarkdown document, add them to a directory named **analysis_assets**.

To view example of rendered HTML content, go [here](https://NBISweden.github.io/raukrtemplate/).

## Contact

If you have corrections, comments or suggestions, feel free to submit a report on the Github [issues](../../issues/) page.  

---

**2022** | NBIS
