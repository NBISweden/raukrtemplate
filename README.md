
<img src="docs/assets/logo.svg" align="right" width="96" height="96">

# raukrtemplate v1.1

This is an R package containing presentation and lab RMarkdown templates for the RaukR R course.

## Installation  

This package can be installed from R/RStudio as follows:

```r
# install devtools from CRAN
install.packages("devtools")

# install this package from GitHub
devtools::install_github("NBISweden/raukrtemplate")
```

Supporting packages should install automatically, otherwise install manually:

```
# general
install.packages("knitr","markdown","rmarkdown")

# for course template
install.packages("captioner","bookdown")

# for presentation
install.packages("xaringan")
```

The standard templates are to be used for preparing your own material. The 'demo' template contains detailed examples of RMarkdown syntax, features, formatting, alignment, graphics and interactive graphics. If you plan to use/render the demo template, note that it uses several extra R packages listed below. If you just want to view the rendered demo output and not render it yourself, see section 'Rendering' below.

```
install.packages(c("dplyr", "tidyr", "stringr", "kableExtra",
"formattable", "DT", "highcharter", "plotly","ggiraph", "dygraphs",
"networkD3", "leaflet", "crosstalk"))
```

## Presentation Template  

The presentation template for use can be accessed from within RStudio as shown below. Use this to prepare your own presentation slides.

`File > New File > R Markdown... > From Template > RaukR Presentation Template`

For demo, use the template below.

`File > New File > R Markdown... > From Template > RaukR Presentation Demo`

## Lab Template  

The lab template for use can be accessed from within RStudio as shown below. Use this to prepare your own lab work material/workshop.

`File > New File > R Markdown... > From Template > RaukR Lab Template`

For demo, use the template below.

`File > New File > R Markdown... > From Template > RaukR Lab Demo`

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

**2019** | NBIS
