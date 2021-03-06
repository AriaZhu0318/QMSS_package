% Generated by roxygen2 (4.0.1): do not edit by hand
\name{ggMyTS}
\alias{ggMyTS}
\title{Easily plot time series trends with \code{\link[ggplot2]{ggplot}}}
\usage{
ggMyTS(df, varlist, line = TRUE, point = TRUE, pointsize = 3,
  linewidth = 1.25, ...)
}
\arguments{
\item{df}{The data frame in which to look for variables to be plotted. Typically
created with \code{\link[QMSS]{meltMyTS}} (\pkg{QMSS})}

\item{varlist}{A character string or vector naming the variable(s) in \code{df} to plot.
If \code{varlist} is not specified, then all variables in \code{df} will be used.}

\item{line}{Should lines be plotted? Defaults to \code{TRUE}.}

\item{point}{Should points be plotted? Defaults to \code{TRUE}.}

\item{pointsize}{Size of the points, if \code{point == TRUE}.}

\item{linewidth}{Width of the line(s), if \code{line == TRUE}.}

\item{...}{Other options that will be passed to \code{\link[ggplot2]{geom_line}}
and \code{\link[ggplot2]{geom_point}}. See examples.}
}
\value{
A \code{ggplot} object.
}
\description{
\code{ggMyTS} is primarily designed to be used with a data frame created with
\code{\link[QMSS]{meltMyTS}} (\pkg{QMSS}).
}
\note{
At least one of \code{line} or \code{point} must be \code{TRUE}.
}
\examples{
\dontrun{
keep.vars <- c("year", "n.confinan", "fulltime")
plot.dat <- meltMyTS(mv.ts.object = by.year.ts,
                     time.var = "year", keep.vars = keep.vars)
ggMyTS(plot.dat, varlist = c("n.confinan", "fulltime"))
ggMyTS(plot.dat, "n.confinan", color = "forestgreen", point = F, linetype = 2)
}
}
\author{
Jonah Gabry <jsg2201@columbia.edu>. See \code{\link[ggplot2]{ggplot}}
for the author of the \code{ggplot} function.
}
\seealso{
\code{\link[QMSS]{meltMyTS}}
}

