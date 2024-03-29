% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_ui.R
\name{tab_map}
\alias{tab_map}
\title{Create a leaflet map}
\usage{
tab_map(
  title = "Map",
  id = "map",
  outputFunction = leaflet::leafletOutput,
  on_map_widgets = list(NULL)
)
}
\arguments{
\item{title}{title for the tab}

\item{id}{id of the output to plot}

\item{outputFunction}{the Output function that draws the plot,. usually `leaflet::leafletOutput`}

\item{on_map_widgets}{doesn't actually work because idk if we're doing that anymore?}
}
\description{
This map creates a leaflet map. It takes an optional list of widgets to display on the map and 
places them on top.
}
