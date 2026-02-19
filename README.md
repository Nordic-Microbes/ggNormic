# Description
 A package for modifying ggplot2 objects to fit the sylte of Nordic microbes A/S
# Installation: 
```
devtools::install_github("Nordic-Microbes/ggNormic")
```

## See all the color palettes:
```
ggNormic::normic_colors
```

# Usage:
```
library(tidyverse)

df <- tibble(x = LETTERS[seq(6)],
             y = seq(6))
df

p <- ggplot(df, aes(x, y, col = y)) +
    geom_point() 

p + ggNormic::scale_color_normic_c()


q <- p + ggNormic::scale_color_normic_d("palette")

q + ggNormic::theme_normic(base_size = 15, panel_border = T)

```
