#create df, csv & transactions file for CAMERA

dfIdOrderAndSkuCamera <- camera[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuCamera, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuService.csv")

idOrderAndSkuCamera <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuService.csv", 
                                         format = 'single', 
                                         sep = ',', 
                                         header = TRUE,
                                         cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuCamera, top = 20, support = 0.005, cex.names = .7)

rulesCamera <- apriori (idOrderAndSkuCamera, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesCamera)