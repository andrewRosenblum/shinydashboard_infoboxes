# shinydashboard_infoboxes

An extended example on how to use infoboxes and valueboxes with shinydashboard.

## Overview

Info and value boxes are ways to display information graphically within a Shiny app. This example includes 3 rows of the same box, each with a slight difference (eg. fill on or off). The first box on the left is created statically in the Shiny UI file and cannot be changed once the page renders into HTML. The other boxes are dynamic - they are placed within the UI and then setup/modified on the server side.

### Code

Shinydashboard is required. To install the package:
```
install.packages("shinydashboard")
```

To run this example:
```
shiny::runGitHub("andrewRosenblum/shinydashboard_infoboxes/")
```
