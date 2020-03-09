#create df, csv & transactions file for TABLET

dfIdOrderAndSkuTablet <- tablet[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuTablet, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuTablet.csv")

idOrderAndSkuTablet <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuTablet.csv", 
                                         format = 'single', 
                                         sep = ',', 
                                         header = TRUE,
                                         cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuTablet, top = 20, support = 0.005, cex.names = .7)

rulesTablet <- apriori (idOrderAndSkuTablet, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesTablet)