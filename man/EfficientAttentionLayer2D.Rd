% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/attentionUtilities.R
\docType{class}
\name{EfficientAttentionLayer2D}
\alias{EfficientAttentionLayer2D}
\title{Efficient attention layer (2-D)}
\value{
output of tensor shape.
}
\description{
Efficient attention layer (2-D)
}
\section{Arguments}{

\describe{
\item{numberOfFiltersFG}{number of filters for F and G layers.}
\item{numberOfFiltersH}{number of filters for H. If = NA, only
use filter F for efficiency.}
\item{poolSize}{pool_size in max pool layer.}
\item{doConcatenateFinalLayers}{concatenate final layer with input.
Alternatively, add.}
}
}

\section{Details}{

\code{$initialize} instantiates a new class.

\code{$call} main body.

\code{$compute_output_shape} computes the output shape.
}

\author{
BB Avants, NJ Tustison
}
