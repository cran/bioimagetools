% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image.R
\name{img}
\alias{img}
\title{Display an image stack}
\usage{
img(
  x,
  z = NULL,
  ch = NULL,
  mask = NULL,
  col = "grey",
  low = NULL,
  up = NULL,
  ...
)
}
\arguments{
\item{x}{Image, 2D or 3D Matrix}

\item{z}{slice to show, default: NULL, expects x to be 2d or 2d+channels}

\item{ch}{channel. Default: NULL, either only one channel, rgb or channel will be assumed from col}

\item{mask}{mask for image, voxel outside the mask will be transparent (default: NULL, no mask)}

\item{col}{Color, either a character ("grey" or "gray", "greyinvert" or "grayinvert", "red" ("r"), "green" ("g") or "blue" ("b"), rgb" for 3D matrices),
a vector of character with hex rgb values or a function.}

\item{low}{minimal value of shown intensity. Default: NULL: use min(x, na.rm=TRUE).}

\item{up}{maximal value of shown intensity. Default: NULL: use max(x, na.rm=TRUE).}

\item{...}{other parameters for graphics::image}
}
\value{
no return
}
\description{
Display an image stack
}
