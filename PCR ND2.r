#####PCR ND2 LSU

#Para este proyecto usamos muestras preservadas en etanol.
#Primero retiramos el etanol y dejamos las muestras secar (tapa abierta),
#en ocasiones dejándolas algunos minutos en un horno, con la finalidad de eliminar la mayor cantidad de etanol. 
#Para el proceso de extracción de ADN usamos el kit Invitrogen PureLink Genomic DNA kit 
#y el protocolo descrito a continuación. 
#el ADN extraído fue amplificado para cinco marcadores moleculares.
#Dos mitocondriales ND2 (1041 pb), Cyt b (1045 pb) y tres nucleares MUSK-Z (700 pb), TGFB2 (560 pb) y BF5 (554 pb).
#La cantidad de los diferentes componente del PCR se calcularon con la función funcion_pcr

# funcion_pcr
# x= número de muestras
# gen= "nd2","cytb","musk","tgfb2","bf5"
pcr= function(x,gen){
  #nd2 1041 pb
  #cytb 1045 pb
  #musk 700 pb
  #tgfb2 560 pb
  #bf5 554 pb
  if(gen=="nd2"){
    a=c("Agua UP","Buffer (10 X)","dNTPs (10 uM)", "P 1 (10 uM)","P 2 (10 uM)","Taq (5 U)","Volumen Total (+1 ADN)")
    b=c(19.875,2.5,0.5,0.5,0.5,0.125)
    x = x
    c = b * x + ((b*x)*0.05)
    b=c(b,sum(b))
    c=c(c,sum(c))
    d=c(b,c)
    nd2=matrix(d, nrow = 7,ncol = 2)
    nd2=`row.names<-`(nd2,a)
    e=c(1,x)
    nd2=`colnames<-`(nd2,e)
    nd2
    return(nd2)
  }
  if(gen=="cytb"){
    a=c("Agua UP","Buffer (10 X)","P H16064 (10 uM)","P L14828 (10 uM)","MgCl2 (50 mM)","dNTPs (10 uM)","BSA (10 X)","Taq (5 U)","Volumen Total (+1 ADN)")
    b=c(16.65,2.5,1,1,0.75,0.5,0.5,0.1)
    c=b*x+((b*x)*0.05)
    b=c(b,sum(b))
    c=c(c,sum(c))
    d=c(b,c)
    cytb=matrix(d, nrow = 9,ncol = 2)
    cytb=`row.names<-`(cytb,a)
    e=c(1,x)
    cytb=`colnames<-`(cytb,e)
    cytb
    return(cytb)
  }
  if(gen=="musk"){
    a=c("Agua","Buffer (10X)","P MUSK-I3F (0.4uM)","P MUSK-I3R (0.4uM)","MgCl2 (1.5mM)","dNTPs (0.2uM)","BSA (0.2X)","Taq (0.1U)","Volumen Total (+2.5ADN)")
    b=c(16.15,2.5,1,1,0.75,0.5,0.5,0.1)
    c=b*x+((b*x)*0.05)
    b=c(b,sum(b))
    c=c(c,sum(c))
    d=c(b,c)
    musk=matrix(d, nrow = 9,ncol = 2)
    musk=`row.names<-`(musk,a)
    e=c(1,x)
    musk=`colnames<-`(musk,e)
    musk
    return(musk)
  }
  if(gen=="tgfb2"){
    a=c("Agua","Buffer (10 X)","P TGFB2.5F (10 uM)","P TGFB2.6R (10 uM)","MgCl2 (50 mM)","dNTPs (10 uM)","Taq (5 U)","Volumen Total (+2ADN)")
    b=c(12.1,2,1,1,0.8,0.7,0.4)
    c=b*x+((b*x)*0.05)
    b=c(b,sum(b))
    c=c(c,sum(c))
    d=c(b,c)
    tgfb2=matrix(d, nrow = 8,ncol = 2)
    tgfb2=`row.names<-`(tgfb2,a)
    e=c(1,x)
    tgfb2=`colnames<-`(tgfb2,e)
    tgfb2
    return(tgfb2)
  }
  if(gen=="bf5"){
    a=c("Agua","Buffer (1X)","MgCl2 (1.5mM)","dNTPs (0.2uM)","P1 (0.4uM)","P2 (0.4uM)","Taq (0.1U)","Volumen Total (+3ADN)")
    b=c(15.8,2.5,1.5,1,0.5,0.5,0.2)
    c=b*x+((b*x)*0.05)
    b=c(b,sum(b))
    c=c(c,sum(c))
    d=c(b,c)
    bf5=matrix(d, nrow = 8,ncol = 2)
    bf5=`row.names<-`(bf5,a)
    e=c(1,x)
    bf5=`colnames<-`(bf5,e)
    bf5
    return(bf5)
  }
}

# Para nd2 siguiendo la formula de LSU, hacer idealmente:
# 56, 24, 8, 40, 72 muestras idealmente. Sumar una muestra por cada 8.
# 64, 28, 10, 46, 82 RESPECTIVAMENTE. incluyendo C- y exceso.

pcr(16,"nd2")
