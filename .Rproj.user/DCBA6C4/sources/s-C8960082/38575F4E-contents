#create df, csv & transactions file for ACCESSORIES

dfIdOrderAndSkuAccessories <- accessories[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuAccessories, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuAccessories.csv")

idOrderAndSkuAccessories <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuAccessories.csv", 
                                              format = 'single', 
                                              sep = ',', 
                                              header = TRUE,
                                              cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuAccessories, top = 20, support = 0.005, cex.names = .7)

rulesAccessories <- apriori (idOrderAndSkuAccessories, parameter = list(supp = 0.0005, conf = .07, minlen = 2))

inspect(rulesAccessories)





#create df, csv & transactions file for SMARTPHONE

dfIdOrderAndSkuSmartphone <- smartphone[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuSmartphone, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuSmartphone.csv")

idOrderAndSkuSmartphone <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuSmartphone.csv", 
                                             format = 'single', 
                                             sep = ',', 
                                             header = TRUE,
                                             cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuSmartphone, top = 20, support = 0.0005, cex.names = .7)

rulesSmartphone <- apriori (idOrderAndSkuSmartphone, parameter = list(supp = 0.0009, conf = .007, minlen = 2))

inspect(rulesSmartphone)






#create df, csv & transactions file for TABLET

dfIdOrderAndSkuTablet <- tablet[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuTablet, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuTablet.csv")

idOrderAndSkuTablet <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuTablet.csv", 
                                         format = 'single', 
                                         sep = ',', 
                                         header = TRUE,
                                         cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuTablet, top = 20, support = 0.005, cex.names = .7)

rulesTablet <- apriori (idOrderAndSkuTablet, parameter = list(supp = 0.0005, conf = .001, minlen = 2))

inspect(rulesTablet)






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

rulesDisplay <- apriori(idOrderAndSkuDisplay, parameter = list(supp = 0.0003, conf = .005, minlen = 2))

inspect(rulesDisplay)











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

rulesLaptop <- apriori (idOrderAndSkuLaptop, parameter = list(supp = 0.0003, conf = .05, minlen = 2))

inspect(rulesLaptop)










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

rulesOther <- apriori (idOrderAndSkuOther, parameter = list(supp = 0.0004, conf = .005, minlen = 2))

inspect(rulesOther)









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

rulesPC <- apriori (idOrderAndSkuPC, parameter = list(supp = 0.0004, conf = .005, minlen = 2))

inspect(rulesPC)










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

rulesExtendedWarranty <- apriori (idOrderAndSkuExtendedWarranty, parameter = list(supp = 0.0004, conf = .005, minlen = 2))

inspect(rulesExtendedWarranty)












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

rulesSmartWhatch <- apriori (idOrderAndSkuSmartWhatch, parameter = list(supp = 0.0004, conf = .005, minlen = 2))

inspect(rulesSmartWhatch)












#create df, csv & transactions file for SERVICE

dfIdOrderAndSkuService <- service[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuService, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuService.csv")

idOrderAndSkuService <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuService.csv", 
                                          format = 'single', 
                                          sep = ',', 
                                          header = TRUE,
                                          cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuService, top = 20, support = 0.005, cex.names = .7)

rulesService <- apriori (idOrderAndSkuService, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesService)









#create df, csv & transactions file for CAMERA

dfIdOrderAndSkuCamera <- camera[c('id_order', 'sku', 'name_en')]

write.csv(dfIdOrderAndSkuCamera, "/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuService.csv")

idOrderAndSkuCamera <- read.transactions("/Users/owlthekasra/Documents/Code/RStudio/RecommenderSystem/categories/IdOrderAndSkuService.csv", 
                                         format = 'single', 
                                         sep = ',', 
                                         header = TRUE,
                                         cols= c('id_order', 'name_en'))

#plot frequency and calculate apriori
itemFrequencyPlot(idOrderAndSkuCamera, top = 20, support = 0.005, cex.names = .7)

rulesCamera <- apriori (idOrderAndSkuCamera, parameter = list(supp = 0.004, conf = .0005, minlen = 2))

inspect(rulesCamera)












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

rulesSoftware <- apriori (idOrderAndSkuSoftware, parameter = list(supp = 0.0007, conf = .0005, minlen = 2))

inspect(rulesSoftware)










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

rulesPrinter <- apriori (idOrderAndSkuPrinter, parameter = list(supp = 0.0004, conf = .005, minlen = 2))

inspect(rulesPrinter)
