# install recent versions of R and RStudio, and then run the commands below to install the packages we'll need

# install even packages you already had, as we'll need updated versions!

# do this in a clean R session, before loading any packages

# EVERY TIME you get a message complaining about a package or its namespace, (re)install that package [e.g. `install.packages("Rcpp")` ] and try again

# after installing all packages, load each one with library() and check if there are more error messages, in which case do as above


install.packages("terra")
install.packages("geodata")
install.packages("jsonlite")  # required by geodata::sp_occurrence()
install.packages("sdmpredictors")
install.packages("modEvA")
install.packages("fuzzySim")
devtools::install_github('cjcarlson/embarcadero')
install.packages("blockCV")

# download and install 'nonlinvarsel' package (not yet on GitHub, available at https://www.rob-mcculloch.org):
if (!requireNamespace("foreach"))  install.packages("foreach", dependencies = TRUE)
url <- "http://www.rob-mcculloch.org/chm/nonlinvarsel_0.0.1.9001.tar.gz"
download.file(url, destfile = "nonlinvarsel_pkg_file")
install.packages("nonlinvarsel_pkg_file", repos = NULL, type = "source")
unlink("nonlinvarsel_pkg_file")  # delete downloaded pkg file
