install.packages("remotes")
remotes::install_github("hrbrmstr/qrencoder")
library(qrencoder)

x <- "https://github.com/uribo/INNV1250"


png("out.png")
par(mar = c(0, 0, 0, 0))
image(
  qrencode_raster(x),
  asp = 1,
  col = c("white", "black"),
  axes = FALSE,
  xlab = "",
  ylab = ""
)
dev.off()

x <- "https://jh.ait.tokushima-u.ac.jp"
