library(ggplot2)
library(factoextra)

res.pca<-readRDS(file="../../Auditoria/modelado/pca.modelo")
calidad_acp<-fviz_screeplot(res.pca, ncp=2)

saveRDS(file="../../reportes/img/calidad_acp",calidad_acp)


