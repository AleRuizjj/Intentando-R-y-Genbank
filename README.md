## Intentando-R-y-Genbank ##
Descargando secuencias de Genbank a través de R 

## Llamo a la matriz de datos ##

datos <- read.csv("daza2016.csv", sep=";")

colnames(datos)<-c("taxa","12S","16S","COI","CYTB","CXCR4","NCX1","POMC","RAG1","SLLC8A3","TYR")
head(datos,0L)

##Un For salvaje aparece ##

taxa<-read.csv("taxa.csv", sep=";")

for(i in 1:length(datos$taxa))
      datos$taxa<-(download.file(paste("https://www.ncbi.nlm.nih.gov/nuccore/?term=",taxa$taxa[1], sep="")),"C:/Users/Lenovo/Google Drive/Alejandra/Daza_2016"
))
wininet) 

##For fallido..###

#######busco en internet wiii######

install.packages("rentrez" )
setwd("C:/Users/Lenovo/Desktop")

## Escribo la taxa con el gen ##

Bufo_melanostictus_CXCR4 <- ("Bufo melanostictus[Organism] AND CXCR4[gene]" )

##Lo busco en GenBank ##

Bufo <-  entrez_search(db="nuccore", 
                       term=Bufo_melanostictus_CXCR4, 
                       retmax=40)
#Llamo los Ids (NCBI)

Bufo$ids  #Aparecen solo los que tienen voucher¿?

## En formato Fasta ##

Bufo_melanostictus_CXCR4_seq <- entrez_fetch(db="nuccore", 
                                            id=Bufo$ids, 
                                            rettype="fasta")
## Descargo lo que obtuve ##

write(Bufo_melanostictus_CXCR4_seq, 
      "Bufo_melanostictus_CXCR4.fasta", 
      sep="\n")

##Ahora la misma sp pero con 12s ## 

Bufo_melanostictus_12s <- ("Bufo melanostictus[Organism] AND 12S[ARN]" )

Bufo_12s <-  entrez_search(db="nuccore", 
                       term=Bufo_melanostictus_12s, 
                       retmax=100)
Bufo_12s$ids

Bufo_melanostictus_12s_seq <- entrez_fetch(db="nuccore", 
                                             id=Bufo_12s$ids, 
                                             rettype="fasta")
## Descargo en Fasta ##
write(Bufo_melanostictus_12s_seq, 
      "Bufo_melanostictus_12s.fasta", 
      sep="\n")



.... Pienso como hacer un for
