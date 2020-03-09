#create df, csv & transactions file for OWC

dfIdOrderAndSkuPack <- Pack[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuPack, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/brand/IdOrderAndSkuPack.csv")

idOrderAndSkuPack <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/brand/IdOrderAndSkuPack.csv", 
                                      format = 'single', 
                                      sep = ',', 
                                      header = TRUE,
                                      cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuPack, top = 20, support = 0.005, cex.names = .7)

rulesPack <- apriori (idOrderAndSkuPack, parameter = list(supp = 0.0005, conf = .03, minlen = 2))

inspect(rulesPack)
