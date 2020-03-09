#group into different categories
groupByBrand <- itemOrdersFiltByBrand %>% 
  group_by(brand) %>% 
  summarize(count=n()) 
brandNames <- groupByBrand$brand

#see which categories have the most values
arrange(groupByBrand, desc(count))

#create new dataframes for each of the categories
for (i in 1:length(brandNames)) {
  assign(brandNames[i], itemOrders %>% filter(brand == brandNames[i]))
}

#get rid of space in "Western Digital"
assign("westernDigital", itemOrders %>% filter(brand == "Western Digital"))
