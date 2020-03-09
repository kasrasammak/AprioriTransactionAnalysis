#new data frame out of grouping
groupByBrand <- itemOrders %>% 
  group_by(brand) %>% 
  summarize(count=n())

#keeping only brands with highest number of transactions in our data set
filteredBrandGroups <- groupByBrand %>% filter(count >1000)
filteredBrandGroups %>% ggplot(aes(brand, count)) + geom_col()
itemOrdersFiltByBrand <- itemOrders %>%  
  filter(brand %in% c("Apple", "Crucial", "Belkin", "iFixit", "LaCie", "NewerTech", "OWC", "Pack", "SanDisk", "Satechi", "Wacom", "Western Digital"))

dfIdOrderAndSkuBrandFilt <- itemOrdersFiltByBrand[c('id_order', 'sku', 'name_en')]

#write csv and create transactions file
write.csv(dfIdOrderAndSkuBrandFilt, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/idOrderAndSkuBrandFilt.csv")

idOrderAndSkuBrandFilt <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/idOrderAndSkuBrandFilt.csv", 
                                            format = 'single', 
                                            sep = ',', 
                                            header = TRUE,
                                            cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuBrandFilt, top = 20, support = 0.005, cex.names = .7)

rulesBrandFilt <- apriori (idOrderAndSkuBrandFilt, parameter = list(supp = 0.0009, conf = .007, minlen = 2))

inspect(rulesBrandFilt)
