#create df, csv & transactions file for LAPTOP

dfIdOrderAndSkuLaptop <- laptop[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuLaptop, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuLaptop.csv")

idOrderAndSkuLaptop <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuLaptop.csv", 
                                         format = 'single', 
                                         sep = ',', 
                                         header = TRUE,
                                         cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuLaptop, top = 20, support = 0.005, cex.names = .7)

rulesLaptop <- apriori (idOrderAndSkuLaptop, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesLaptop)