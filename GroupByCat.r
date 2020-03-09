#group into different categories
groupByCat <- itemOrders %>% 
  group_by(manual_categories) %>% 
  summarize(count=n()) 
catNames <- groupByCat$manual_categories

#see which categories have the most values
arrange(groupByCat, count)

#create new dataframes for each of the categories
for (i in 1:length(catNames)) {
  assign(catNames[i], itemOrders %>% filter(manual_categories == catNames[i]))
}

#get rid of space in "extended warranty"
assign("extendedWarranty", itemOrders %>% filter(manual_categories == "extended warranty"))