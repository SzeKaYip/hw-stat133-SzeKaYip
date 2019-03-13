title: shots-data
description:graphing_the_five_shot_charts.
input(s):the_data_from_each_player_and_background_picture
output(s):create_five_shot_charts_for_every_player





library(ggplot2)
library(jpeg)
library(grid)



court_file <- "../images/nba-court.jpg"
court_image <- rasterGrob( readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))
klay_shot_chart <- ggplot(data = thompson, aes(x = x, y = y, color=shot_made_flag)) + 
  annotation_custom(court_image, -300, 300, -55, 430) + 
  geom_point(shape=18, size=1) + 
  ylim(-55, 430) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') + 
  theme_light()+
  scale_color_manual(values = c("shot_no" = "#6c568f", "shot_yes" = "#ffcf40"))+
  theme(legend.position="top", legend.key = element_rect(colour = 'purple', fill = 'white', size = 0.5, linetype='dashed'))

klay_shot_chart 

pdf(file = "../images/klay-thompson-shot-chart.pdf", width = 6.5, height = 5)
klay_shot_chart
dev.off()






court_file <- "../images/nba-court.jpg"
court_image <- rasterGrob( readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))
stephen_curry_shot_chart <- ggplot(data = curry, aes(x = x, y = y, color=shot_made_flag)) + 
  annotation_custom(court_image, -300, 300, -55, 430) + 
  geom_point(shape=18, size=1) + 
  ylim(-55, 430) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') + 
  theme_light()+
  scale_color_manual(values = c("shot_no" = "#6c568f", "shot_yes" = "#ffcf40"))+
  theme(legend.position="top", legend.key = element_rect(colour = 'purple', fill = 'white', size = 0.5, linetype='dashed'))

stephen_curry_shot_chart

pdf(file = "../images/stephen-curry-shot-chart.pdf", width = 6.5, height = 5)
stephen_curry_shot_chart
dev.off()





court_file <- "../images/nba-court.jpg"
court_image <- rasterGrob( readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))
kevin_durant_shot_chart <- ggplot(data = kevin, aes(x = x, y = y, color=shot_made_flag)) + 
  annotation_custom(court_image, -300, 300, -55, 430) + 
  geom_point(shape=18, size=1) + 
  ylim(-55, 430) +
  ggtitle('Shot Chart:  kevin durant (2016 season)') + 
  theme_light()+
  scale_color_manual(values = c("shot_no" = "#6c568f", "shot_yes" = "#ffcf40"))+
  theme(legend.position="top", legend.key = element_rect(colour = 'purple', fill = 'white', size = 0.5, linetype='dashed'))

kevin_durant_shot_chart

pdf(file = "../images/kevin-durant-shot-chart.pdf", width = 6.5, height = 5)
kevin_durant_shot_chart
dev.off()



court_file <- "../images/nba-court.jpg"
court_image <- rasterGrob( readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))
draymond_green_shot_chart <- ggplot(data = green, aes(x = x, y = y, color=shot_made_flag)) + 
  annotation_custom(court_image, -300, 300, -55, 430) + 
  geom_point(shape=18, size=1) + 
  ylim(-55, 430) +
  ggtitle('Shot Chart:  Draymond Green (2016 season)') + 
  theme_light()+
  scale_color_manual(values = c("shot_no" = "#6c568f", "shot_yes" = "#ffcf40"))+
  theme(legend.position="top", legend.key = element_rect(colour = 'purple', fill = 'white', size = 0.5, linetype='dashed'))

draymond_green_shot_chart

pdf(file = "../images/draymond-green-shot-chart.pdf", width = 6.5, height = 5)
draymond_green_shot_chart
dev.off()




court_file <- "../images/nba-court.jpg"
court_image <- rasterGrob( readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))

andre_iguodala_shot_chart <- ggplot(data = andre, aes(x = x, y = y, color=shot_made_flag)) + 
  annotation_custom(court_image, -300, 300, -55, 430) + 
  geom_point(shape=18, size=1) + 
  ylim(-55, 430) +
  ggtitle('Shot Chart:  Andre Iguodala (2016 season)') + 
  theme_light()+
  scale_color_manual(values = c("shot_no" = "#6c568f", "shot_yes" = "#ffcf40"))+
  theme(legend.position="top", legend.key = element_rect(colour = 'purple', fill = 'white', size = 0.5, linetype='dashed'))

andre_iguodala_shot_chart

pdf(file = "../images/andre-iguodala--shot-chart.pdf", width = 6.5, height = 5)
andre_iguodala_shot_chart
dev.off()









court_file <- "../images/nba-court.jpg"
court_image <- rasterGrob( readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))

gsw_shot_charts<- ggplot(data = table1, aes(x = x, y = y, color=shot_made_flag)) + 
  annotation_custom(court_image, -300, 300, -55, 430) + 
  geom_point(shape=18, size=1) + 
  ylim(-55, 430) +
  ggtitle('Shot Chart:  GSW (2016 season)') + 
  theme_classic()+
  scale_color_manual(values = c("shot_no" = "#6c568f", "shot_yes" = "#ffcf40"))+
  theme(legend.position="top", legend.key = element_rect(colour = 'purple', fill = 'white', size = 0.5, linetype='dashed'))+
  facet_grid(~name)

gsw_shot_charts


pdf(file = "../images/gsw-shot-charts.pdf", width = 8, height = 7)
gsw_shot_charts
dev.off()


ggsave(filename = "../images/gsw-shot-charts.png", plot=gsw_shot_charts, device= "png", width = 8, height = 7)







