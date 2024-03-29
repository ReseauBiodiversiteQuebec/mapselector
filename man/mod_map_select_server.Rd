% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mod_map_select.R
\name{mod_map_select_server}
\alias{mod_map_select_server}
\title{Make a leaflet map with a reactive output}
\usage{
mod_map_select_server(id, what_to_click = "shape", fun = make_leaflet_map, ...)
}
\arguments{
\item{id}{this is the modal id string. It has to match the ui function. If
you make a second map, use a different one}

\item{what_to_click}{either "shape" for a region map or "marker" for a site
map}

\item{fun}{this is a function that makes a map; you might write this yourself
or you might use one of the built in ones for sites (plot_rcoleo_sites)
blank (make_leaflet_empty) or regions (make_leaflet_map)}

\item{\dots{...}}{additional arguments to fun}
}
\description{
This module is meant to help us make leaflet maps and output a reactive
value. This value can be used to trigger a modal and also it's contents.
}
