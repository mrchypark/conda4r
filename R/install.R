#' install conda
#'
#' Defualt is Miniconda3. Other options are not this package scope.
#'
#' @param path installation path. Defualt is userhome/Miniconda3
#' @param silent silent installation with Justme, add PATH options. Defualt is TRUE.
#'
#' @importFrom fs file_delete
#'
#' @export
install_conda <- function(path = conda_loc(),
                          silent = T) {
  os <- get_os()
  dest <- conda_dest_loc(os)
  path <- conda_loc()
  
  dependency(os)
  
  if (!silent) cat("Download conda\n")
  down_conda(os, dest, silent)
  
  if (!silent) cat("Install conda\n")
  install_exec(os, dest, path, silent)
  
  fs::file_delete(dest)
  if (!silent) cat("Installation complete\n")
}
