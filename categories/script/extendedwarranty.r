#create df, csv & transactions file for EXTENDED WARRANTY

dfIdOrderAndSkuExtendedWarranty <- extendedWarranty[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuExtendedWarranty, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuExtendedWarranty.csv")

idOrderAndSkuExtendedWarranty <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuExtendedWarranty.csv", 
                                                   format = 'single', 
                                                   sep = ',', 
                                                   header = TRUE,
                                                   cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuExtendedWarranty, top = 20, support = 0.005, cex.names = .7)

rulesExtendedWarranty <- apriori (idOrderAndSkuExtendedWarranty, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesExtendedWarranty)