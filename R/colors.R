tswift_palette <- function(name, n, type = c("discrete", "continuous")){
  type <- match.arg(type)

  pal <- swift_colors[[name]]
  if(is.null(pal)){
    stop("Palette not found.")
  }
  if(missing(n)){
    n <- length(pal)
  }

  if(type == "discrete" && n > length(pal)){
    stop("More colors than palette has available")
  }

  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
                )
  structure(out, class = "palette", name = name)
}
