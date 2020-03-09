#create df, csv & transactions file for SERVICE

dfIdOrderAndSkuService <- service[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuService, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuService.csv")

idOrderAndSkuService <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuService.csv", 
                                          format = 'single', 
                                          sep = ',', 
                                          header = TRUE,
                                          cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuService, top = 20, support = 0.005, cex.names = .7)

rulesService <- apriori (idOrderAndSkuService, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesService)