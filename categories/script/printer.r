#create df, csv & transactions file for PRINTER

dfIdOrderAndSkuPrinter <- printer[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuPrinter, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuPrinter.csv")

idOrderAndSkuPrinter <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuPrinter.csv", 
                                          format = 'single', 
                                          sep = ',', 
                                          header = TRUE,
                                          cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuPrinter, top = 20, support = 0.005, cex.names = .7)

rulesPrinter <- apriori (idOrderAndSkuPrinter, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesPrinter)