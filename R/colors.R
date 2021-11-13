#' Color palettes
#'
#' @export
swift_palettes <- list(
  `taylorSwift` = c("#61b6cc", "#577f3f" ,"#e3e9f3", "#0a1605","#fddac7","#81a757"),
  `fearless` = c("#b68f51","#5b3617","#f7eabe", "#ecd59f","#825c2d"),
  `speakNow` = c("#4b2671","#5e291c", "#f3d8c4","#f3bf73","#ffffff"),
  `speakNowLive` = c("#fce178", "#969696", "#871d20", "#090708", "#fafaf9"),
  `Red` = c("#c2c2ae","#26233b","#7f6557", "#b4a382","#eeeadf"),
  `taylorRed` = c("#BFBCAA", "#A6836F", "#73564C", "#731803", "#400303"),
  `taylor1989` = c("#b1532a","#84697f","#cbb593","#a88f92","#e8eadf", "#43475b"),
  `reputation` = c("#060606","#6e6e6e","#fefefe","#cacaca", "#060606","#8c8c8c"),
  `lover` = c("#b8396b","#ffd1d7","#fff5cc","#76bae0","#b28f81","#54483e"),
  `folklore` = c("#272727","#5c5c5c","#bababa", "#f8f8f8"),
  `evermore` = c("#efefef","#827d73", "#3d2620", "#e89264","#474247")
)


#' Function to interpolate a color palette
#'
#' @param palette Character name of palette in tswift_palettes
#' @param reverse Boolean true if palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @return A vector of colors
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
#'
#' @return No return value. Called for side effects
#' @export
#' @examples
#' library(ggplot2)
#' data <- data.frame(c = LETTERS[1:3],x = c(1,5,7),y = c(5,9,13))
#' ggplot(data, aes(x,y,color = c))+geom_point()+scale_color_taylor()
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
#'
#' @return No return value. Called for side effects
#' @export
#' @examples
#' library(ggplot2)
#' data <- data.frame(c = LETTERS[1:3],x = c(1,5,7),y = c(5,9,13))
#' ggplot(data, aes(x,fill=c))+geom_bar()+scale_fill_taylor()
scale_fill_taylor <- function(palette = "taylor1989",
                              discrete = TRUE, reverse = FALSE, ...){
  pal <- swift_pal(palette = palette, reverse = reverse)

  if(discrete){
    ggplot2::discrete_scale("fill", paste0("swift_", palette), palette = pal, ...)
  }else{
    ggplot2::scale_fill_gradientn(colours = pal(256),...)
  }
}

