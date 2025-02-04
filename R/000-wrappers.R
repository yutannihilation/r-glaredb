# Generated by savvy: do not edit by hand
#
# Note:
#   This wrapper file is named as `000-wrappers.R` so that this file is loaded
#   first, which allows users to override the functions defined here (e.g., a
#   print() method for an enum).

#' @useDynLib glaredb, .registration = TRUE
#' @keywords internal
NULL

# Check class and extract the external pointer embedded in the environment
.savvy_extract_ptr <- function(e, class) {
  if(inherits(e, class)) {
    e$.ptr
  } else {
    msg <- paste0("Expected ", class, ", got ", class(e)[1])
    stop(msg, call. = FALSE)
  }
}


sql <- function(query) {
  .savvy_wrap_RGlareDbExecutionOutput(.Call(savvy_sql__impl, query))
}


connect <- function(cloud_addr, disable_tls, data_dir_or_cloud_url = NULL, spill_path = NULL, location = NULL) {
  .savvy_wrap_RGlareDbConnection(.Call(savvy_connect__impl, cloud_addr, disable_tls, data_dir_or_cloud_url, spill_path, location))
}

### wrapper functions for RGlareDbConnection

RGlareDbConnection_sql <- function(self) {
  function(query) {
    .savvy_wrap_RGlareDbExecutionOutput(.Call(savvy_RGlareDbConnection_sql__impl, self, query))
  }
}

.savvy_wrap_RGlareDbConnection <- function(ptr) {
  e <- new.env(parent = emptyenv())
  e$.ptr <- ptr
    e$sql <- RGlareDbConnection_sql(ptr)
  
  class(e) <- "RGlareDbConnection"
  e
}



RGlareDbConnection <- new.env(parent = emptyenv())

### associated functions for RGlareDbConnection



### wrapper functions for RGlareDbExecutionOutput

RGlareDbExecutionOutput_export_stream <- function(self) {
  function(stream_ptr) {
  invisible(.Call(savvy_RGlareDbExecutionOutput_export_stream__impl, self, stream_ptr))
  }
}

.savvy_wrap_RGlareDbExecutionOutput <- function(ptr) {
  e <- new.env(parent = emptyenv())
  e$.ptr <- ptr
    e$export_stream <- RGlareDbExecutionOutput_export_stream(ptr)
  
  class(e) <- "RGlareDbExecutionOutput"
  e
}



RGlareDbExecutionOutput <- new.env(parent = emptyenv())

### associated functions for RGlareDbExecutionOutput



### wrapper functions for RGlareDbTokioRuntime


.savvy_wrap_RGlareDbTokioRuntime <- function(ptr) {
  e <- new.env(parent = emptyenv())
  e$.ptr <- ptr
  
  
  class(e) <- "RGlareDbTokioRuntime"
  e
}



RGlareDbTokioRuntime <- new.env(parent = emptyenv())

### associated functions for RGlareDbTokioRuntime



