% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deepBackProjectionUtilities.R
\name{applyDeepBackProjectionModel}
\alias{applyDeepBackProjectionModel}
\title{Apply a pretrained deep back projection model for super resolution.}
\usage{
applyDeepBackProjectionModel(
  image,
  model,
  targetRange = c(-127.5, 127.5),
  batchSize = 32,
  regressionOrder = NA,
  verbose = FALSE
)
}
\arguments{
\item{image}{input image.}

\item{model}{pretrained model or filename (cf \code{getPretrainedNetwork}).}

\item{targetRange}{a vector defining the \code{c(min, max)} of each input
image (e.g., -127.5, 127.5).  Output images will be scaled
back to original intensity. This range should match the
mapping used in the training of the network.}

\item{batchSize}{batch size used for the prediction call.}

\item{regressionOrder}{if specified, then apply the function
\code{regressionMatchImage} with
\code{polyOrder = regressionOrder}.}

\item{verbose}{If \code{TRUE}, show status messages.}
}
\value{
super-resolution image upscaled to resolution specified by the network.
}
\description{
Helper function for applying a pretrained deep back projection model.
Apply a patch-wise trained network to perform super-resolution. Can be applied
to variable sized inputs. Warning: This function may be better used on CPU
unless the GPU can accommodate the full image size. Warning 2: The global
intensity range (min to max) of the output will match the input where the
range is taken over all channels.
}
\examples{
\dontrun{
image <- applyDeepBackProjectionModel( ri( 1 ), getPretrainedNetwork( "dbpn4x" ) )
}
}
\author{
Avants BB
}
