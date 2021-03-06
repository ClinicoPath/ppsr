% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/score.R
\name{score_df}
\alias{score_df}
\title{Calculate predictive power scores for whole dataframe
Iterates through the columns of the dataframe, calculating the predictive power
score for every possible combination of \code{x} and \code{y}.}
\usage{
score_df(df, ..., do_parallel = FALSE, n_cores = -1)
}
\arguments{
\item{df}{data.frame containing columns for x and y}

\item{...}{any arguments passed to \code{\link{score}}}

\item{do_parallel}{bool, whether to perform \code{\link{score}} calls in parallel}

\item{n_cores}{numeric, number of cores to use, defaults to maximum minus 1}
}
\value{
a data.frame containing \describe{
    \item{x}{the name of the predictor variable}
    \item{y}{the name of the target variable}
    \item{result_type}{text showing how to interpret the resulting score}
    \item{pps}{the predictive power score}
    \item{metric}{the evaluation metric used to compute the PPS}
    \item{baseline_score}{the score of a naive model on the evaluation metric}
    \item{model_score}{the score of the predictive model on the evaluation metric}
    \item{cv_folds}{how many cross-validation folds were used}
    \item{seed}{the seed that was set}
    \item{algorithm}{text shwoing what algorithm was used}
    \item{model_type}{text showing whether classification or regression was used}
}
}
\description{
Calculate predictive power scores for whole dataframe
Iterates through the columns of the dataframe, calculating the predictive power
score for every possible combination of \code{x} and \code{y}.
}
\examples{
\donttest{score_df(iris)}
\donttest{score_df(mtcars, do_parallel = TRUE, n_cores = 2)}
}
