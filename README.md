
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tayloRswift

<!-- badges: start -->

[![R-CMD-check](https://github.com/asteves/tayloRswift/workflows/R-CMD-check/badge.svg)](https://github.com/asteves/tayloRswift/actions)
<!-- badges: end -->

A ggplot2 color palette based on Taylor Swift Album Covers.

![](https://media.giphy.com/media/3o7aCSsc6sx9s92wbm/giphy.gif)

The package includes palettes for every full album except for those that
Taylor Swift has disavowed.

## Installation

You can install the released version of tayloRswift with:

``` r
remotes::install_github("asteves/tayloRswift")
```

and load it with

``` r
library(tayloRswift)
```

## Examples

Color by discrete variable using default palette based on
[1989](https://en.wikipedia.org/wiki/1989_(Taylor_Swift_album))

``` r
ggplot(penguins, aes(bill_depth_mm, bill_length_mm, color = species)) +
  geom_point(size = 4) +
  scale_color_taylor()+
  theme_minimal()
```

<img src="man/figures/README-example-default-1.png" width="100%" />

### Choose a different palette

[Reputation](https://en.wikipedia.org/wiki/Reputation_(Taylor_Swift_album))
works great as a grayscale.

``` r
ggplot(penguins, aes(bill_depth_mm, bill_length_mm, color = species)) +
  geom_point(size = 4) +
  scale_color_taylor(palette = "reputation")+
  theme_minimal()
```

<img src="man/figures/README-example-palette-1.png" width="100%" />

### Color by numeric variable

Be content with a palette based on
[Fearless](https://en.wikipedia.org/wiki/Fearless_(Taylor%27s_Version))

``` r
ggplot(penguins , aes(bill_depth_mm, bill_length_mm,color = bill_length_mm)) +
  geom_point(size = 4) +
  scale_color_taylor(discrete = FALSE, palette ="fearless")+
  theme_minimal()
```

<img src="man/figures/README-color-numeric-1.png" width="100%" />

### Fill by discrete variable

Pop with color from [Lover](https://en.wikipedia.org/wiki/Lover_(album))

``` r
ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar() +
  theme_minimal()+
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_taylor(palette = "lover", guide = "none")
```

<img src="man/figures/README-example-fill-1.png" width="100%" />

Or if you prefer modern Swift,
[Folklore](https://en.wikipedia.org/wiki/Folklore_(Taylor_Swift_album))

``` r
ggplot(penguins, aes(species, fill = species)) +
  geom_bar() +
  theme_minimal()+
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_taylor(palette = "folklore", guide = "none")
```

<img src="man/figures/README-example-fill2-1.png" width="100%" />

## Palettes

![`taylorSwift`](https://upload.wikimedia.org/wikipedia/en/1/1f/Taylor_Swift_-_Taylor_Swift.png)

`taylorSwift`= “\#61b6cc”, “\#577f3f”, “\#e3e9f3”, “\#0a1605”,
“\#fddac7”, “\#81a757”

![`fearless`](https://upload.wikimedia.org/wikipedia/en/5/5b/Fearless_%28Taylor%27s_Version%29_%282021_album_cover%29_by_Taylor_Swift.png)

`fearless` = “\#b68f51”, “\#5b3617”, “\#f7eabe”, “\#ecd59f”, “\#825c2d”

![`speakNow`](https://upload.wikimedia.org/wikipedia/en/8/8f/Taylor_Swift_-_Speak_Now_cover.png)

`speakNow` = “\#ffffff”, “\#4b2671”, “\#5e291c”, “\#f3d8c4”, “\#f3bf73”

![`speakNowLive`](https://upload.wikimedia.org/wikipedia/en/e/e9/Taylor_Swift_-_Speak_Now_World_Tour_-_Live.png)

`speakNowLive` = “\#fce178”, “\#969696”, “\#871d20”, “\#090708”,
“\#fafaf9”

![`Red`](https://upload.wikimedia.org/wikipedia/en/e/e8/Taylor_Swift_-_Red.png)

`Red` = “\#c2c2ae”, “\#26233b”, “\#7f6557”, “\#b4a382”, “\#eeeadf”

![`taylorRed`](https://upload.wikimedia.org/wikipedia/en/4/47/Taylor_Swift_-_Red_%28Taylor%27s_Version%29.png)
`taylorRed` =
“\#b1532a”,“\#84697f”,“\#cbb593”,“\#a88f92”,“\#e8eadf”,“\#43475b”

![`taylor1989`](https://upload.wikimedia.org/wikipedia/en/f/f6/Taylor_Swift_-_1989.png)

`taylor1989` = “\#b1532a”, “\#84697f”, “\#cbb593”, “\#a88f92”,
“\#e8eadf”, “\#43475b”

![`reputation`](https://upload.wikimedia.org/wikipedia/en/f/f2/Taylor_Swift_-_Reputation.png)

`reputation` = “\#060606”, “\#6e6e6e”, “\#fefefe”, “\#cacaca”,
“\#060606”, “\#8c8c8c”

![`lover`](https://upload.wikimedia.org/wikipedia/en/c/cd/Taylor_Swift_-_Lover.png)

`lover` = “\#b8396b”, “\#ffd1d7”, “\#fff5cc”, “\#76bae0”, “\#b28f81”,
“\#54483e”

![`folklore`](https://upload.wikimedia.org/wikipedia/en/f/f8/Taylor_Swift_-_Folklore.png)

`folklore`= “\#272727”, “\#5c5c5c”, “\#bababa”, “\#f8f8f8”

![`evermore`](https://upload.wikimedia.org/wikipedia/en/0/0a/Taylor_Swift_-_Evermore.png)

`evermore` = “\#3d2620”, “\#efefef”, “\#827d73”, “\#efefef”, “\#3d2620”

## Related Packages

For those who work in Python, it was brought to my attention that there
is a very cool package by [Josh Borrow](https://github.com/JBorrow)
called [swiftacsmaps](https://github.com/JBorrow/swiftascmaps).

Other inspirations for this package are the tutorial on [creating
corporate color
palettes](https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2)
by [Dr. Simon Jackson](https://github.com/drsimonj), which I drew on
heavily. I have long used the
[wesanderson](https://github.com/karthik/wesanderson) package by
[Karthik Ram](https://github.com/karthik), which does a similar task.
