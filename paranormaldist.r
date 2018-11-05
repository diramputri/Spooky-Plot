library(ggplot2)
flaps=function(x) sin(5*x)/200
eyes=data.frame(x=c(-1,1),y=0.06)
mouth=data.frame(x=0,y=0.04)

ggplot(mapping=aes(x=c(-10,10)))+
  geom_area(stat="function",fun=flaps,fill="white")+
  geom_area(stat="function",fun=dnorm,fill="white",
            args=list(mean=0,sd=4))+
  geom_point(data=eyes,aes(x=x,y=y),size=5)+
  geom_point(data=mouth,aes(x=x,y=y),size=15)+
  labs(title="Paranormal Distribution")
