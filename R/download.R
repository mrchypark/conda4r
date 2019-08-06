#' @importFrom utils download.file
down_conda <- function(os, ...){
  UseMethod("down_conda")
}


down_conda.default <- function(os){
  stop("no method for ", class(os)[1L])
}


down_conda.Windowsx86 <- function(os, dest, silent){
  down_path <-
    "https://repo.continuum.io/miniconda/Miniconda3-latest-Windows-x86.exe"
  download.file(down_path, destfile = dest, mode = "wb", quiet = silent)
}


down_conda.Windowsx64 <- function(os, dest, silent){
  down_path <-
    "https://repo.continuum.io/miniconda/Miniconda3-latest-Windows-x86_64.exe"
  download.file(down_path, destfile = dest, mode = "wb", quiet = silent)
}


down_conda.Darwinx64 <- function(os, dest, silent){
  down_path <-
    "https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh"
  download.file(down_path, destfile = dest, quiet = silent)
}


down_conda.Linuxx64 <- function(os, dest, silent){
  down_path <-
    "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"
  download.file(down_path, destfile = dest, quiet = silent)
}

#' @importFrom fs path path_temp path_home
conda_dest_loc <- function(os){
  UseMethod("conda_dest_loc")
}


conda_dest_loc.default <- function(os){
  stop("no method for ", class(os)[1L])
}


conda_dest_loc.Windowsx86 <- function(os){
  fs::path(fs::path_temp(), "mc.exe")
}


conda_dest_loc.Windowsx64 <- function(os){
  fs::path(fs::path_temp(), "mc.exe")
}


conda_dest_loc.Darwinx64 <- function(os){
  fs::path(fs::path_home(), "mc.sh")
}


conda_dest_loc.Linuxx64 <- function(os){
  fs::path(fs::path_home(), "mc.sh")
}
