#create df, csv & transactions file for DISPLAY

dfIdOrderAndSkuDisplay <- display[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuDisplay, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuDisplay.csv")

idOrderAndSkuDisplay <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuDisplay.csv", 
                                          format = 'single', 
                                          sep = ',', 
                                          header = TRUE,
                                          cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuDisplay, top = 20, support = 0.005, cex.names = .7)

rulesDisplay <- apriori(idOrderAndSkuDisplay, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesDisplay)