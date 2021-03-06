% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/argo.R
\docType{data}
\name{argo}
\alias{argo}
\title{ARGO float dataset}
\source{
This is the profile stored in the file \code{6900388_prof.nc}
downloaded from the \code{usgodae.org} website in March 2012.
}
\description{
This is an ARGO float data object, for float 6900388, downloaded as
\code{6900388_prof.nc} from \code{usgodae.org} in March 2012.
}
\examples{
\dontrun{
library(oce)
data(argo)
summary(argo)
data(coastlineWorld)
plot(argo, which="trajectory", coastline=coastlineWorld)
}

}
\seealso{
Other datasets provided with \code{oce}: \code{\link{adp}},
  \code{\link{adv}}, \code{\link{cm}},
  \code{\link{coastlineWorld}}, \code{\link{colors}},
  \code{\link{ctdRaw}}, \code{\link{ctd}},
  \code{\link{echosounder}}, \code{\link{landsat}},
  \code{\link{lisst}}, \code{\link{lobo}},
  \code{\link{met}}, \code{\link{rsk}},
  \code{\link{sealevelTuktoyaktuk}},
  \code{\link{sealevel}}, \code{\link{section}},
  \code{\link{topoWorld}}, \code{\link{wind}}

Other things related to \code{argo} data: \code{\link{[[,argo-method}},
  \code{\link{[[<-,argo-method}}, \code{\link{argo-class}},
  \code{\link{argoGrid}}, \code{\link{argoNames2oceNames}},
  \code{\link{as.argo}},
  \code{\link{handleFlags,argo-method}},
  \code{\link{plot,argo-method}}, \code{\link{read.argo}},
  \code{\link{subset,argo-method}},
  \code{\link{summary,argo-method}}
}
