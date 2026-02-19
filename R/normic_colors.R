#' Nordic microbes A/S official colors

normic_colors <- list(
  greens = c("#006f32", "#70b78d", "#a1d1b3", "#e1efe3"),
  yellows = c("#ffcd00", "#ffe37e", "#fff0af", "#fffbdc"),
  purples = c("#946aab", "#c7a6cf", "#e8cae2", "#f2e1f0"),
  blues = c("#2e5558", "#408688", "#b5ddde", "#e7f4f4"),
  browns = c("#3e3d33", "#888676", "#bab9b3", "#e1e1df"),
  reds = c("#e52519", "#f9afbb", "#ffe1e7", "#fef2f6")
)

normic_colors$darks <- c(
  normic_colors$greens[[1]],
  normic_colors$yellows[[1]],
  normic_colors$purples[[1]],
  normic_colors$blues[[1]],
  normic_colors$browns[[1]],
  normic_colors$reds[[1]]
)

normic_colors$lights <- c(
  normic_colors$greens[[2]],
  normic_colors$yellows[[2]],
  normic_colors$purples[[2]],
  normic_colors$blues[[2]],
  normic_colors$browns[[2]],
  normic_colors$reds[[2]]
)

normic_colors$palette <- c(
  normic_colors$darks,
  normic_colors$lights
)
