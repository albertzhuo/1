x <- read.csv("temp.csv")
library(ggplot2)
library(ggrepel)
library(ggsci)
library(cowplot)
library(Rmisc)
l1=ggplot(x,aes(x=gene,y=mean,fill=group))+geom_bar(position="dodge",stat="identity")+
  scale_fill_npg()+theme_bw()+theme(axis.text.y = element_text(size = 20, face = "bold", vjust = 0.5, hjust = 0.5, angle = 315))+theme(panel.grid =element_blank())+
  theme(panel.grid =element_blank())+theme(axis.title.x = element_blank())+
  theme(axis.title.y = element_blank())+theme(  axis.text = element_text(face = "bold",size = 12))
l1
f <- read.csv("temp1.csv",skip=1,nrows = 7,header=FALSE)
g <- read.csv("temp1.csv",skip=8,nrows = 7,header =FALSE)
hi <- read.csv("temp1.csv",skip=15,nrows = 14,header =FALSE)
j <-  read.csv("temp1.csv",skip=29,nrows = 7,header =FALSE)
l2=ggplot(f,aes(x=V2,y=V3,fill=V1))+geom_bar(position="dodge",stat="identity")+
  scale_fill_npg()+theme_bw()+theme(axis.text = element_blank())+theme(panel.grid =element_blank())+
  theme(axis.title.x = element_blank())+theme(axis.text.y = element_text(size = 20, face = "bold", vjust = 0.5, hjust = 0.5, angle = 315))+
  theme(axis.title.y = element_blank())+theme(  axis.text = element_text(face = "bold",size = 12))+
  theme(axis.ticks = element_blank())+guides(fill=FALSE)
l2
l3=ggplot(g,aes(x=V2,y=V3,fill=V1))+geom_bar(position="dodge",stat="identity")+
  scale_fill_npg()+theme_bw()+theme(axis.text = element_blank())+theme(panel.grid =element_blank())+
  theme(axis.title.x = element_blank())+theme(axis.text.y = element_text(size = 20, face = "bold", vjust = 0.5, hjust = 0.5, angle = 315))+
  theme(axis.title.y = element_blank())+theme(  axis.text = element_text(face = "bold",size = 12))+
  theme(axis.ticks = element_blank()) +guides(fill=FALSE)
l3
l4=ggplot(hi,aes(x=V2,y=V3,fill=V1))+geom_bar(position="dodge",stat="identity")+
  scale_fill_npg()+theme_bw()+theme(axis.text = element_blank())+theme(panel.grid =element_blank())+
  theme(axis.title.x = element_blank())+theme(axis.text.y = element_text(size = 20, face = "bold", vjust = 0.5, hjust = 0.5, angle = 315))+
  theme(axis.title.y = element_blank())+theme(  axis.text = element_text(face = "bold",size = 12))+
  theme(axis.ticks = element_blank()) +guides(fill=FALSE)
l4
l5=ggplot(j,aes(x=V2,y=V3,fill=V1))+geom_bar(position="dodge",stat="identity")+
  scale_fill_npg()+theme_bw()+theme(axis.text = element_blank())+theme(panel.grid =element_blank())+
  theme(axis.title.x = element_blank())+theme(axis.text.y = element_text(size = 20, face = "bold", vjust = 0.5, hjust = 0.5, angle = 315))+
  theme(axis.title.y = element_blank())+theme(  axis.text = element_text(face = "bold",size = 12))+
  theme(axis.ticks = element_blank()) +guides(fill=FALSE)
l5
gg <- ggdraw() + 
  draw_plot(l1, 0, 0.5, 1, 0.5)+draw_plot(l2, 0, 0, 0.2, 0.5)+ draw_plot(l3, 0.2, 0, 0.2, 0.5)+ draw_plot(l4, 0.4, 0, 0.4, 0.5)+ draw_plot(l5, 0.8, 0, 0.2, 0.5)
gg


