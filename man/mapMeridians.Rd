% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map.R
\name{mapMeridians}
\alias{mapMeridians}
\title{Add Meridians on a Map [deprecated]}
\usage{
mapMeridians(latitude, lty = "solid", lwd = 0.5 * par("lwd"),
  col = "darkgray", ...)
}
\arguments{
\item{latitude}{either a logical value indicating whether to draw
a meridian grid, or a vector of latitudes at which to draw meridians.}

\item{lty}{line type.}

\item{lwd}{line width.}

\item{col}{line colour.}

\item{...}{optional arguments passed to \code{\link{lines}}.}
}
\description{
\strong{WARNING:} This function will be removed soon; see \link{oce-deprecated}.
Use \code{\link{mapGrid}} instead of the present function.
}
\details{
Plot meridians (lines of constant latitude) on an existing map.


This function should not be used, since it will be removed soon.
Please use mapGrid() instead.
}
\seealso{
Other functions that will be removed soon: \code{\link{addColumn}},
  \code{\link{ctdAddColumn}},
  \code{\link{ctdUpdateHeader}}, \code{\link{mapZones}},
  \code{\link{oce.as.POSIXlt}}
}
\author{
Dan Kelley
}
