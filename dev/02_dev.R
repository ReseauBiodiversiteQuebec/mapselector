# Building a Prod-Ready, Robust Shiny Application.
# 
# README: each step of the dev files is optional, and you don't have to 
# fill every dev scripts before getting started. 
# 01_start.R should be filled at start. 
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
# 
# 
###################################
#### CURRENT FILE: DEV SCRIPT #####
###################################

# Engineering

## Dependencies ----
## Add one line by package you want to add as dependency
usethis::use_package( "leaflet" )
usethis::use_dev_package("golem")
usethis::use_package( "assertthat", type = "Suggests")
usethis::use_package( "sf", type = "Suggests")
usethis::use_package("plotly")
usethis::use_package("purrr")
usethis::use_package("shinyWidgets")

## Add modules ----
## Add modules ----
## Create a module infrastructure in R/
golem::add_module( name = "map_select" ) # Name of the module
golem::add_module( name = "modal_make" ) # Name of the module
golem::add_module(name = "modal_interactive" )
golem::add_module( name = "observation_display" )
golem::add_module( name = "map_campaign_type")


## Add helper functions ----
## Creates ftc_* and utils_*
golem::add_utils( "map_maker" )
golem::add_utils(  "modal_contents")
golem::add_utils( "ui" )
golem::add_utils( "region" )
golem::add_utils( "mapselector_dev" )
golem::add_utils( "rcoleo_site" )
## External resources
## Creates .js and .css files at inst/app/www
golem::add_js_file( "tableau" )
# golem::add_js_handler( "handlers" )
golem::add_css_file( "style" )

## Add internal datasets ----
## If you have data in your package
usethis::use_data_raw( name = "CERQ", open = FALSE ) 

usethis::use_data_raw( name = "human_footprint" ) 

## Tests ----
## Add one line by test you want to create
usethis::use_test( "app" )

# Documentation

## Vignette ----
usethis::use_vignette("map_options")
usethis::use_vignette("coleo_sitemap")
usethis::use_vignette("ouranos_vis")
usethis::use_vignette(
  "campaign-summary"
)
usethis::use_vignette("map_layer_selection")
devtools::build_vignettes()

## Code Coverage----
## Set the code coverage service ("codecov" or "coveralls")
usethis::use_coverage()

# Create a summary readme for the testthat subdirectory
covrpage::covrpage()

## CI ----
## Use this part of the script if you need to set up a CI
## service for your application
## 
## (You'll need GitHub there)
usethis::use_github()

# GitHub Actions
usethis::use_github_action() 
# Chose one of the three
# See https://usethis.r-lib.org/reference/use_github_action.html
usethis::use_github_action_check_release() 
usethis::use_github_action_check_standard() 
usethis::use_github_action_check_full() 
# Add action for PR
usethis::use_github_action_pr_commands()

# Travis CI
usethis::use_travis() 
usethis::use_travis_badge() 

# AppVeyor 
usethis::use_appveyor() 
usethis::use_appveyor_badge()

# Circle CI
usethis::use_circleci()
usethis::use_circleci_badge()

# Jenkins
usethis::use_jenkins()

# GitLab CI
usethis::use_gitlab_ci()

# You're now set! ----
# go to dev/03_deploy.R
rstudioapi::navigateToFile("dev/03_deploy.R")

