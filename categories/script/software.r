#create df, csv & transactions file for SOFTWARE

dfIdOrderAndSkuSoftware <- software[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuSoftware, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuSoftware.csv")

idOrderAndSkuSoftware <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuSoftware.csv", 
                                           format = 'single', 
                                           sep = ',', 
                                           header = TRUE,
                                           cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuSoftware, top = 20, support = 0.005, cex.names = .7)

rulesSoftware <- apriori (idOrderAndSkuSoftware, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesSoftware)