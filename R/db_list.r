#' List all databases.
#'
#' @export
#' @template all
#' @template return
#' @param simplify (logical) Simplify to character vector, ignored
#' if \code{as="json"}
#' @examples \dontrun{
#' (x <- Cushion$new())
#'
#' db_list(x)
#' db_list(x, as = 'json')
#' }
db_list <- function(cushion, simplify=TRUE, as='list', ...) {
  check_cushion(cushion)
  tmp <- sofa_GET(sprintf("%s/_all_dbs", cushion$make_url()), as, cushion$get_headers(), ...)
  if (simplify && as == 'list') do.call(c, tmp) else tmp
}
