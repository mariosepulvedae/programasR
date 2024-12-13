#En este script programé las funciones paramétricas de 
#Hamid Naderi Yeganeh (2022) 
#https://www.instagram.com/p/Cg4K3PdoyKO/?igsh=MW50dzk3emt1eWliYw==

library(ggplot2)
n<-10000
t<-matrix(0,1,n)
conteo<-pi/n
i<-1
contar<-0
while(i<n){
  t[i]<-contar
  contar<-contar+conteo 
  i<-i+1
}

x<-matrix(0,1,n)
y<-matrix(0,1,n)
i<-1
while(i<n){
  x[i]<-(4/9)*sin(2*t[i])+(1/3)*((sin(t[i]))^8)*cos(3*t[i])+(1/8)*sin(2*t[i])*(cos(247*t[i]))^4  
  y[i]<-sin(t[i])+(1/3)*((sin(t[i]))^8)*sin(3*t[i])+(1/8)*sin(2*t[i])*(sin(247*t[i]))^4  
  i<-i+1
}

df<-data.frame(x=c(x),y=c(y))
grafico<-ggplot(data=df,mapping = aes(x=x,y=y))+
  geom_point(colour = "#8d35dc")+
  labs(title="Natalia Ramírez",
       x="Te quiero mucho",
       y="Perdóname")+
  theme(text = element_text(family = "times"))
grafico
