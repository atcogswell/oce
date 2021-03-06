% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/amsr.R
\docType{class}
\name{amsr-class}
\alias{amsr-class}
\title{Class to Hold amsr Data}
\description{
The Advanced Microwave Scanning Radiometer (AMSR-2) is in current operation on
the Japan Aerospace Exploration Agency (JAXA) GCOM-W1 space craft, launched in
May 2012. Data are processed by Remote Sensing Systems. The satellite
completes an ascending and descending pass during local daytime and nightime
hours respectively. Each daily file contains 7 daytime and 7 nighttime
maps of variables named as follows within the \code{data}
slot of amsr objects: \code{timeDay},
\code{SSTDay}, \code{LFwindDay} (wind at 10m sensed in
the 10.7GHz band), \code{MFwindDay} (wind at 10m sensed at 18.7GHz),
\code{vaporDay}, \code{cloudDay}, and \code{rainDay}, along with
similarly-named items that end in \code{Night}.
See [1] for additional information on the instrument, how
to cite the data source in a paper, etc.
}
\details{
The bands are stored in \code{\link{raw}} form, to save storage. The accessor
function \code{\link{[[,amsr-method}} can provide these values in \code{raw}
form or in physical units; \code{\link{plot,amsr-method}}, and
\code{\link{summary,amsr-method}} work with physical units.
}
\references{
1. Information on the satellite, how to cite the data, etc. is
provided at \url{http://www.remss.com/missions/amsr}.

2. A simple interface for viewing and downloading data is at
\url{http://images.remss.com/amsr/amsr2_data_daily.html}.
}
\seealso{
\code{\link{landsat-class}} for handling data from the Landsat-8 satellite.

Other things related to \code{amsr} data: \code{\link{[[<-,amsr-method}},
  \code{\link{composite,amsr-method}},
  \code{\link{download.amsr}},
  \code{\link{plot,amsr-method}}, \code{\link{read.amsr}},
  \code{\link{subset,amsr-method}},
  \code{\link{summary,amsr-method}}
}
\author{
Dan Kelley and Chantelle Layton
}
\concept{
satellite
}
