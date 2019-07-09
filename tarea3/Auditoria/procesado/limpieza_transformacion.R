library(testthat)

var.numericas <- function (data) 
{
  if (is.null(data)) {
    return(NULL)
  }
  res <- base::subset(data, select = sapply(data, class) %in% 
                        c("numeric", "integer"))
  return(res)
}

datos<-readRDS(file="../../datos/procesados/datos_intimado_insumo")
datos[, 'Jefatura'] <- as.factor(datos[, 'Jefatura'])
datos[, 'Eleccion_Popular'] <- as.factor(datos[, 'Eleccion_Popular'])
datos[, 'Rango_Salarial'] <- as.factor(datos[, 'Rango_Salarial'])
datos[, 'Tipo_falta_num'] <- as.factor(datos[, 'Tipo_falta_num'])
datos[, 'Puesto_propiedad'] <- as.factor(datos[, 'Puesto_propiedad'])
datos[, 'Puesto_reservado'] <- as.factor(datos[, 'Puesto_reservado'])
datos[, 'Declarante'] <- as.factor(datos[, 'Declarante'])
datos[, 'Bienes_inmuebles'] <- as.factor(datos[, 'Bienes_inmuebles'])
datos[, 'Bienes_muebles'] <- as.factor(datos[, 'Bienes_muebles'])
datos[, 'Hipoteca'] <- as.factor(datos[, 'Hipoteca'])
datos[, 'Prenda'] <- as.factor(datos[, 'Prenda'])


expect_is(datos$Eleccion_Popular,"factor")
datos<-var.numericas(datos)
saveRDS(file="../../datos/procesados/datos_intimado_finales",datos)


