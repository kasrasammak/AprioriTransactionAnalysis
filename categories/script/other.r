#create df, csv & transactions file for OTHER

dfIdOrderAndSkuOther <- other[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuOther, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuOther.csv")

idOrderAndSkuOther <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuOther.csv", 
                                        format = 'single', 
                                        sep = ',', 
                                        header = TRUE,
                                        cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuOther, top = 20, support = 0.005, cex.names = .7)

rulesOther <- apriori (idOrderAndSkuOther, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesOther)