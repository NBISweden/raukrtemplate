
<img src="docs/assets/logo.svg" align="right" width="96" height="96">

# RaukR

This is an R package for the RaukR R course. This package contains presentation and coursework R Markdown templates.

## Installation  

This package can be installed from R/RStudio as follows:

```r
# install devtools from CRAN
install.packages("devtools")

# install this package from GitHub
devtools::install_github("NBISweden/RaukR")
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

The standard templates are to be used for preparing your own material. The 'demo' template contains detailed examples of R Markdown syntax, features, formatting, alignment, graphics and interactive graphics. If you plan to use/render the demo template, note that it uses several extra R packages listed below. If you just want to view the rendered demo output and not render it yourself, see section 'Rendering' below.

```
install.packages(c("bsplus","dplyr", "tidyr", "stringr", "kableExtra", 
"formattable", "DT", "highcharter", "plotly","ggiraph", "dygraphs",
"networkD3", "leaflet", "crosstalk"))
```

## Course Template  

The course template for use can be accessed from within RStudio as shown below. Use this to prepare your own course work material/workshop.

`File > New File > R Markdown... > From Template > RaukR Course Template`

For demo, use the template below. 

`File > New File > R Markdown... > From Template > RaukR Course Demo`

## Presentation Template  

The presentation template for use can be accessed from within RStudio as shown below. Use this to prepare your own presentation slides.

`File > New File > R Markdown... > From Template > RaukR Presentation Template`

For demo, use the template below.

`File > New File > R Markdown... > From Template > RaukR Presentation Demo`

## Rendering

Once you have created your own `.Rmd` file based on the template and saved to a suitable location, the `.Rmd` document can be rendered to HTML by running the below in the document directory. 

```
rmarkdown::render("your-file-name.Rmd")
```

Note the `assets` directory or any other supporting directories such as `your-file-name_files` must not be deleted. They must be provided when sharing the HTML document. The final HTML document is NOT standalone. It is dependent on the child directories.

To view example of rendered HTML content, go [here](https://NBISweden.github.io/RaukR/).

## Tips & Tricks

### Common

* For `your-report.Rmd`, add your own content to a new directory called `your-report_assets`
* Set the title in YAML: `title: "Introduction to Some Fancy Analyses"`
* Set a subtitle if required: `subtitle: "A subtitle, if required"`
* Set the author name: `author: Your Name`
* The date is automatically added
* If you want to add your own CSS: `css: ["./assets/course.css","your-styles.css"]`
* Best if you don't edit other YAML matter

### Presentation Template

* Replace 'assets/cover.jpg' to change cover slide picture
* Replace 'assets/end.jpg' to change end slide picture
* Many standard R Markdown (Pandoc) do not work in xaringen/remarkjs slides
* Check out [xaringan](https://github.com/yihui/xaringan)
* The [remarkjs wiki](https://github.com/gnab/remark/wiki) is good source of help
* Press **H** for keyboard shortcut help
* Fitting content on the slide will be trial and error. Overflow content will be just invisible.
* Use `.pull-left-50[<content>]` to create 50% left column
* Similarly, there is `.pull-left-40[]` and `.pull-left-30[]`. Same for right
* Name slides using the syntax below. This can be used to hyperlink from another slide

```
---
name: intro
```

* This increases spacing between lines on this slide

```
---
class: spaced
```

## Contact

If you have corrections, comments or suggestions, feel free to submit a report on the Github [issues](../../issues/) page.  

---

**2018** | NBIS 
