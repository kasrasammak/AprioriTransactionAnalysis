#create df, csv & transactions file for APPLE

dfIdOrderAndSkuApple <- Apple[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuApple, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/brand/IdOrderAndSkuApple.csv")

idOrderAndSkuApple <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/brand/IdOrderAndSkuApple.csv", 
                                              format = 'single', 
                                              sep = ',', 
                                              header = TRUE,
                                              cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuApple, top = 20, support = 0.005, cex.names = .7)

rulesApple <- apriori (idOrderAndSkuApple, parameter = list(supp = 0.0003, conf = .3, minlen = 2))

inspect(rulesApple)
