% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/derive_param_exposure.R
\name{derive_params_exposure}
\alias{derive_params_exposure}
\title{Add an Aggregated Parameter and Derive the Associated Start and End Dates}
\usage{
derive_params_exposure(
  dataset,
  by_vars,
  input_code,
  analysis_var,
  summary_fun,
  filter = NULL,
  set_values_to = NULL
)
}
\arguments{
\item{dataset}{Input dataset
\itemize{
\item The variables specified by the \code{by_vars},\code{analysis_var} parameters and \code{PARAMCD} are
expected,
\item Either \code{ASTDTM} and \code{AENDTM} or \code{ASTDT} and \code{AENDT} are also expected.
}}

\item{by_vars}{Grouping variables

For each group defined by \code{by_vars} an observation is added to the output
dataset.

\emph{Permitted Values:} list of variables}

\item{input_code}{Required parameter code

The observations where \code{PARAMCD} equals the specified value are considered to compute the
summary record.

\emph{Permitted Values:} A character of \code{PARAMCD} value}

\item{analysis_var}{Analysis variable.}

\item{summary_fun}{Function that takes as an input the \code{analysis_var} and
performs the calculation.
This can include built-in functions as well as user defined functions,
for example \code{mean} or \code{function(x) mean(x, na.rm = TRUE)}.}

\item{filter}{Filter condition

The specified condition is applied to the input dataset before deriving the
new parameter, i.e., only observations fulfilling the condition are taken
into account.

\emph{Permitted Values:} a condition}

\item{set_values_to}{Variable-value pairs

Set a list of variables to some specified value for the new observation(s)
\itemize{
\item LHS refer to a variable. It is expected that at least \code{PARAMCD} is defined.
\item RHS refers to the values to set to the variable. This can be a string, a symbol, a numeric
value or NA.
(e.g.  \code{vars(PARAMCD = "TDOSE",PARCAT1 = "OVERALL")}).
More general expression are not allowed.
}

\emph{Permitted Values:} List of variable-value pairs}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}

This function is \emph{deprecated}. Please use \code{\link[=derive_param_exposure]{derive_param_exposure()}} instead.
}
\seealso{
\code{\link[=derive_param_exposure]{derive_param_exposure()}}
}
\author{
Samia Kabi
}
\keyword{adex}
\keyword{bds}
\keyword{derivation}
