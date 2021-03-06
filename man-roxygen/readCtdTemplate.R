#' @return An object of \code{\link{ctd-class}}. The details of the contents
#' depend on the source file. The \code{metadata} slot is particularly 
#' variable across data formats, because the meta-information provided
#' in those formats varies widely.
#' 
#' @param file A connection or a character string giving the name of the file to
#' load.  For \code{read.ctd.sbe()} and \code{read.ctd.woce()}, this may be a
#' wildcard (e.g. \code{"*.cnv"} or \code{"*.csv"}) in which case the return
#' value is a vector containing CTD objects created by reading the files from
#' \code{\link{list.files}} with \code{pattern} set to the specified wildcard
#' pattern.
#' 
#' @param debug An integer specifying whether debugging information is
#' to be printed during the processing. This is a general parameter that
#' is used by many \code{oce} functions. Generally, setting \code{debug=0}
#' turns off the printing, while higher values suggest that more information
#' be printed.
#' 
#' @param columns An optional \code{\link{list}} that can be used to convert unrecognized
#' data names to resultant variable names.  This is used only by
#' \code{\link{read.ctd.sbe}} and \code{\link{read.ctd.odf}}; see
#' \dQuote{Examples}.
#' 
#' @param station Optional character string containing an identifying name or
#' number for the station. This can be useful if the routine cannot determine the
#' name automatically, or if another name is preferred.
#' 
#' @param missingValue Optional missing-value flag; data matching this value will
#' be set to \code{NA} upon reading. If this is provided, then it overrules any
#' missing-value flag found in the data. For Seabird (\code{.cnv}) files, there is
#' usually no need to set \code{missingValue}, because it can be inferred from the
#' header (typically as -9.990e-29). Set \code{missingValue=NULL} to turn off
#' missing-value detection, even in \code{.cnv} files that contain missing-value
#' codes in their headers. If \code{missingValue} is not specified,
#' then an attempt is made to infer such a value from the data, by testing
#' whether salinity and/or temperature has a minimum that is under -8 in value;
#' this should catch common values in files, without false positives. A warning
#' will be issued in this case, and a note inserted in the processing log of
#' the return value.
#' 
#' @param monitor Boolean, set to \code{TRUE} to provide an indication of
#' progress.  This is useful if \code{filename} is a wildcard.
#' 
#' @param processingLog If provided, the action item to be stored in the log.
#' This is typically only provided for internal calls; the default that it provides is
#' better for normal calls by a user.
#' 
#' @param ... additional arguments, passed to called routines.
#' 
#' @author Dan Kelley
#' 
#' @family things related to \code{ctd} data
