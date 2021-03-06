% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adp.R
\docType{methods}
\name{summary,adp-method}
\alias{summary,adp-method}
\alias{summary.adp}
\alias{summary,adp,missing-method}
\title{Summarize an ADP Object}
\usage{
\S4method{summary}{adp}(object, ...)
}
\arguments{
\item{object}{an object of class \code{"adp"}, usually, a result of a call
to \code{\link{read.oce}}, \code{\link{read.adp.rdi}}, or
\code{\link{read.adp.nortek}}.}

\item{\dots}{further arguments passed to or from other methods.}
}
\value{
A matrix containing statistics of the elements of the \code{data}
slot.
}
\description{
Summarize data in an \code{adp} object.
}
\details{
Pertinent summary information is presented.
}
\seealso{
Other things related to \code{adp} data: \code{\link{[[,adp-method}},
  \code{\link{[[<-,adp-method}}, \code{\link{adp-class}},
  \code{\link{adpEnsembleAverage}}, \code{\link{adp}},
  \code{\link{as.adp}}, \code{\link{beamName}},
  \code{\link{beamToXyzAdp}}, \code{\link{beamToXyzAdv}},
  \code{\link{beamToXyz}}, \code{\link{beamUnspreadAdp}},
  \code{\link{binmapAdp}}, \code{\link{enuToOtherAdp}},
  \code{\link{enuToOther}}, \code{\link{plot,adp-method}},
  \code{\link{read.adp.nortek}},
  \code{\link{read.adp.rdi}},
  \code{\link{read.adp.sontek.serial}},
  \code{\link{read.adp.sontek}}, \code{\link{read.adp}},
  \code{\link{read.aquadoppHR}},
  \code{\link{read.aquadoppProfiler}},
  \code{\link{read.aquadopp}},
  \code{\link{subset,adp-method}}, \code{\link{toEnuAdp}},
  \code{\link{toEnu}}, \code{\link{velocityStatistics}},
  \code{\link{xyzToEnuAdp}}, \code{\link{xyzToEnu}}
}
\author{
Dan Kelley
}
