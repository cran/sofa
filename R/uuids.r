#' Get uuids.
#'
#' @export
#' @template all
#' @template return
#' @param count (numeric) Number of uuids to return. Default: 1
#' @examples \dontrun{
#' # Create a CouchDB connection client
#' (x <- Cushion$new())
#'
#' uuids(x)
#' uuids(x, as = 'json')
#' }
uuids <- function(cushion, count = 1, as = 'list', ...) {
  check_cushion(cushion)
  sofa_GET(file.path(cushion$make_url(), '_uuids'),
           as = as, query = list(count = count), cushion$get_headers(), ...)
}
