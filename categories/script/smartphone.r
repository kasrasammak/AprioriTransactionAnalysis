#create df, csv & transactions file for SMARTPHONE

dfIdOrderAndSkuSmartphone <- smartphone[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuSmartphone, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuSmartphone.csv")

idOrderAndSkuSmartphone <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuSmartphone.csv", 
                                             format = 'single', 
                                             sep = ',', 
                                             header = TRUE,
                                             cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuSmartphone, top = 20, support = 0.005, cex.names = .7)

rulesSmartphone <- apriori (idOrderAndSkuSmartphone, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesSmartphone)