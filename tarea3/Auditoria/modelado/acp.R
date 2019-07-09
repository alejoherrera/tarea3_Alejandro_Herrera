library(FactoMineR)
library(ggplot2)
datos<-readRDS(file="../../datos/procesados/datos_intimado_insumo")

pca.modelo <- PCA(var.numericas(datos), scale.unit = TRUE, ncp = 5, graph = FALSE)

modelo_acp<-fviz_pca_ind(pca.modelo, pointsize = 2, pointshape = 16, axes = c(1, 2),
             col.ind = '#696969', select.ind = list(cos2 = 0))+ labs(title = '')

saveRDS(file="../../Auditoria/modelado/pca.modelo",pca.modelo)
saveRDS(file="../../reportes/img/acp",modelo_acp)
