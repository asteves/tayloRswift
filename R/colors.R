#' Color palettes
#'
#' @export
swift_palettes <- list(
  `taylorSwift` = c("#E9D3A7", "#744E2B", "#A9A288", "#177D8C", "#D8E0EF", "#F8F9F8"),
  `fearless` = c("#FCFCF9", "#B49082", "#98473E", "#F6E3D6", "#07090F", "#BB9859"),
  `speakNow` = c("#B0F2B4", "#BAF2E9", "#BAD7F2", "#F2BAC9", "#F2E2BA","#A58078", "#FFFFFF", "#A23A82"),
  `speakNowLive` = c("#090708", "#871D20", "#969696", "#FCE178", "#F6BA62", "#FBD2A9", "#ECECED"),
  `taylorRed` = c("#AA2146", "#ECE8DC", "#A6A894", "#6E605E", "#897361", "#26233B","#C2C2AE", "#8E354A"),
  `taylor1989` = c("#b1532a","#84697f","#cbb593","#a88f92","#e8eadf", "#43475b"),
  `reputation` = c("#060606","#6e6e6e","#fefefe","#cacaca", "#060606","#8c8c8c"),
  `lover` = c("#48433b","#76bae0","#b8396b","#eccfe8","#fff5cc","#114977","#1f79b8","#b8396b"),
  `folklore` = c("#272727","#5c5c5c","#bababa", "#f8f8f8"),
  `evermore` = c("#827d73", "#3d2620", "#e89264", "#806837", "#f4f4f4","#dbc2af","#423c47")
)


#' Function to interpolate a color palette
#'
#' @param palette Character name of palette in tswift_palettes
#' @param reverse Boolean true if palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @export
swift_pal <- function(palette = "taylor1989", reverse = FALSE, ...){
  pal <- swift_palettes[[palette]]

  if(reverse){
    pal <- rev(pal)
  }

  grDevices::colorRampPalette(pal, ...)
}

#' Color scale for Taylor Swift colors
#'
#' @param palette Character name of palette in swift_palettes
#' @param discrete Boolean if color aesthetic is discrete
#' @param reverse Boolean indicating whether palette should be reversed
#' @param ... Additional arguments used to discrete_scale() or scale_fill_gradientn()
#'   to automatically interpolate between colours.
#' @export
scale_color_taylor <- function(palette = "taylor1989",
                               discrete = TRUE, reverse=FALSE,...){
  pal <- swift_pal(palette = palette, reverse = reverse)

  if(discrete){
    ggplot2::discrete_scale("colour", paste0("swift_", palette), palette = pal, ...)
  }else{
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale for Taylor Swift colors
#'
#' @param palette Character name of palette in swift_palettes
#' @param discrete Boolean if color aesthetic is discrete
#' @param reverse Boolean if palette should be reversed
#' @param ... Additional arguments used to discrete_scale() or scale_fill_gradientn()
#'   to automatically interpolate between colours.
#' @export
scale_fill_taylor <- function(palette = "taylor1989",
                              discrete = TRUE, reverse = FALSE, ...){
  pal <- swift_pal(palette = palette, reverse = reverse)

  if(discrete){
    ggplot2::discrete_scale("fill", paste0("swift_", palette), palette = pal, ...)
  }else{
    ggplot2::scale_fill_gradientn(colours = pal(256),...)
  }
}

