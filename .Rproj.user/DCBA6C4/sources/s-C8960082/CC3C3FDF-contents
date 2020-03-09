#create df, csv & transactions file for OWC

dfIdOrderAndSkuOWC <- OWC[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuOWC, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/brand/IdOrderAndSkuOWC.csv")

idOrderAndSkuOWC <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/brand/IdOrderAndSkuOWC.csv", 
                                        format = 'single', 
                                        sep = ',', 
                                        header = TRUE,
                                        cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuOWC, top = 20, support = 0.005, cex.names = .7)

rulesOWC <- apriori (idOrderAndSkuOWC, parameter = list(supp = 0.0005, conf = .03, minlen = 2))

inspect(rulesOWC)
