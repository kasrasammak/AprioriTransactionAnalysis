#create df, csv & transactions file for PC

dfIdOrderAndSkuPC <- pc[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuPC, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuPC.csv")

idOrderAndSkuPC <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuPC.csv", 
                                     format = 'single', 
                                     sep = ',', 
                                     header = TRUE,
                                     cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuPC, top = 20, support = 0.005, cex.names = .7)

rulesPC <- apriori (idOrderAndSkuPC, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesPC)