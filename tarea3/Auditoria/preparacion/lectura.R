library(testthat)

datos_intimado <- read.csv(file="../../datos/en_crudo/Datos_intimado.csv", header=TRUE, sep=";")
expect_is(datos_intimado,"data.frame")
saveRDS(file="../../datos/procesados/datos_intimado_insumo",datos_intimado)
