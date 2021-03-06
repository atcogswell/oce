% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sw.R
\name{swSCTp}
\alias{swSCTp}
\title{Salinity from electrical conductivity, temperature and pressure}
\usage{
swSCTp(conductivity, temperature = NULL, pressure = 0, conductivityUnit,
  eos = getOption("oceEOS", default = "gsw"))
}
\arguments{
\item{conductivity}{a measure of conductivity (see also \code{conductivityUnit})
or an \code{oce} object holding hydrographic information. In the second case,
all the other arguments to \code{swSCTp} are ignored.}

\item{temperature}{\emph{in-situ} temperature [\eqn{^\circ}{deg}C], defined
on the ITS-90 scale; see \dQuote{Temperature units} in the documentation for
\code{\link{swRho}}.}

\item{pressure}{pressure [dbar]}

\item{conductivityUnit}{string indicating the unit used for conductivity.
This may be \code{"ratio"} or \code{""} (meaning conductivity ratio),
\code{"mS/cm"} or \code{"S/m"}.  Note that the ratio mode assumes that
measured conductivity has been divided by the standard conductivity
of 4.2914 S/m.}

\item{eos}{equation of state, either \code{"unesco"} or \code{"gsw"}.}
}
\value{
Practical salinity.
}
\description{
Compute salinity based on electrical conductivity, temperature, and
pressure.
}
\details{
Calculate salinity from what is actually measured by a CTD, \emph{i.e.}
conductivity, \emph{in-situ} temperature and pressure.  Often this is done
by the CTD processing software, but sometimes it is helpful to do this
directly, \emph{e.g.} when there is a concern about mismatches in sensor
response times.  If \code{eos="unesco"} then salinity is calculated using
the UNESCO algorithm described by Fofonoff and Millard (1983); if it is
\code{"gsw"} then the Gibbs-SeaWater formulation is used, via
\code{\link{gsw_SP_from_C}}.
}
\examples{
swSCTp(1, T90fromT68(15), 0, eos="unesco") # 35
swSCTp( 1,            15, 0, eos="gsw") # 35

}
\references{
Fofonoff, P. and R. C. Millard Jr, 1983. Algorithms for
computation of fundamental properties of seawater. \emph{Unesco Technical
Papers in Marine Science}, \bold{44}, 53 pp
}
\seealso{
For thermal (as opposed to electrical) conductivity, see
\code{\link{swThermalConductivity}}.  For computation of electrical
conductivity from salinity, see \code{\link{swCSTp}}.

Other functions that calculate seawater properties: \code{\link{T68fromT90}},
  \code{\link{T90fromT48}}, \code{\link{T90fromT68}},
  \code{\link{swAbsoluteSalinity}},
  \code{\link{swAlphaOverBeta}}, \code{\link{swAlpha}},
  \code{\link{swBeta}}, \code{\link{swCSTp}},
  \code{\link{swConservativeTemperature}},
  \code{\link{swDepth}}, \code{\link{swDynamicHeight}},
  \code{\link{swLapseRate}}, \code{\link{swN2}},
  \code{\link{swPressure}}, \code{\link{swRho}},
  \code{\link{swRrho}}, \code{\link{swSTrho}},
  \code{\link{swSigma0}}, \code{\link{swSigma1}},
  \code{\link{swSigma2}}, \code{\link{swSigma3}},
  \code{\link{swSigma4}}, \code{\link{swSigmaTheta}},
  \code{\link{swSigmaT}}, \code{\link{swSigma}},
  \code{\link{swSoundAbsorption}},
  \code{\link{swSoundSpeed}}, \code{\link{swSpecificHeat}},
  \code{\link{swSpice}}, \code{\link{swTFreeze}},
  \code{\link{swTSrho}},
  \code{\link{swThermalConductivity}},
  \code{\link{swTheta}}, \code{\link{swViscosity}},
  \code{\link{swZ}}
}
\author{
Dan Kelley
}
