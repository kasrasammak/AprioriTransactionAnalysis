#create df, csv & transactions file for SMARTWHATCH

dfIdOrderAndSkuSmartWhatch <- smartwhatch[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuSmartWhatch, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuSmartWhatch.csv")

idOrderAndSkuSmartWhatch <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuSmartWhatch.csv", 
                                              format = 'single', 
                                              sep = ',', 
                                              header = TRUE,
                                              cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuSmartWhatch, top = 20, support = 0.005, cex.names = .7)

rulesSmartWhatch <- apriori (idOrderAndSkuSmartWhatch, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesSmartWhatch)