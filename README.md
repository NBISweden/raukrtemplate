![](./inst/rmarkdown/templates/course/skeleton/assets/logo_96.png)

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

Other supporting packages may be automatically installed, otherwise install manually:

```
# for reports
install.packages("knitr","markdown","rmarkdown")

# for course template
install.packages("captioner","bookdown")

# for presentation
install.packages("xaringan")
```

## Course Template  

The coursework template for use can be accessed from within RStudio as shown below. Use this to prepare your own course work material/workshop.

`File > New File > R Markdown... > From Template > RaukR Course Template`

For full demo, use the template below. The demo template contains detailed examples of R Markdown syntax, features, formatting, alignment, graphics and interactive graphics. If you plan to use/render the demo template, note that it uses several extra R packages which needs to be installed. These are listed at the beginning of the template itself. If you just want to view the demo, see section 'Rendering' below.

`File > New File > R Markdown... > From Template > RaukR Course Demo`

## Presentation Template  

The presentation template for use can be accessed from within RStudio as shown below. Use this to prepare your own presentation slides.

`File > New File > R Markdown... > From Template > RaukR Presentation Template`

For full demo, use the template below. The demo template contains detailed examples of R Markdown syntax, features, formatting, alignment, graphics and interactive graphics. If you plan to use/render the demo template, note that it uses several extra R packages which needs to be installed. These are listed at the beginning of the template itself. If you just want to view the demo, see section 'Rendering' below.

`File > New File > R Markdown... > From Template > RaukR Presentation Demo`

The presentation is based on the [`xaringen`](https://github.com/yihui/xaringan) R package which is a wrapper around javascript presentation library [remark.js](https://github.com/gnab/remark).

## Rendering

Once you have created your own `.rmd` file based on the template and saved to a suitable location, the `.rmd` document can be rendered to HTML by running the below in the document directory. 

```
rmarkdown::render("your-file-name.rmd")
```

Note the `assets` directory or any other supporting directories such as `your-file-name_files` must not be deleted. They must be provided when sharing the HTML document. The final HTML document is NOT standalone. It is dependent on the child directories.

To view example of rendered HTML content, go [here](https://NBISweden.github.io/RaukR/).

## Tips & Tricks

+ General chunk options are set at the beginning `opts_chunk$set()`
+ If you want to add your own content (images, data etc), add to `./assets/` or a new directory

### Course Template

+ Set the title here: `<h1 class="toc-ignore rstitle">Introduction to Some Fancy Analyses</h1>`
+ Set the author name here: `<h4 class="toc-ignore">Your Name</h4>`
+ Best if you don't edit the YAML matter and the bottom HTML footer.

### Presentation Template

+ Set title, subtitle and your name in the top YAML
+ Replace 'cover.jpg' to change cover slide picture
+ Replace 'end.jpg' to change end slide picture
+ Many standard R Markdown (Pandoc) do not work in xaringen/remarkjs slides
+ The [remarkjs wiki](https://github.com/gnab/remark/wiki) is good source of help
+ Name slides using the syntax below. This can be used to hyperlink from another slide

```
---
name: intro
```
+ Press **H** for keyboard shortcut help

## Contact

If you have corrections, comments or suggestions, feel free to submit a report on the Github [issues](../../issues/) page.  

---

**2018** | NBIS 
