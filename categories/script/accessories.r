#create df, csv & transactions file for ACCESSORIES

dfIdOrderAndSkuAccessories <- accessories[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuAccessories, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuAccessories.csv")

idOrderAndSkuAccessories <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuAccessories.csv", 
                                              format = 'single', 
                                              sep = ',', 
                                              header = TRUE,
                                              cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuAccessories, top = 20, support = 0.005, cex.names = .7)

rulesAccessories <- apriori (idOrderAndSkuAccessories, parameter = list(supp = 0.0005, conf = .05, minlen = 2))

inspect(rulesAccessories)
