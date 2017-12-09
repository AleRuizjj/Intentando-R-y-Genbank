setwd("/media/aleu/AleDocs/Alejandra/DazaAle/Script_R/")
##Ubico directorio


library("rentrez")
library("ape")

##Llamo la lista de datos 

datos <- read.csv("daza2016.csv", sep=";")

#Llamo la lista de sp
solosp <- read.table("solosp.csv", sep=";", head=TRUE)

#Asigno un vector a los taxones de la lista de datos
taxa <- as.character(datos$Taxon) 

## El modo para que R busque en Genbank en sp[Organism]
org <- "[Organism] AND"

#Uno la especie con el modo de busqueda [Organism]
sporg <- paste(taxa, org)
sporg[28]

#Ubico los genes con el modo de busqueda de R [gene]
genes <- c("12S",
           "16S",
           "COI[gene]", 
           "cytochrome b", 
           "CXCR4[gene]", 
           "NCX1[gene]", 
           "POMC[gene]", 
           "RAG1[gene]", 
           "SLC8A3[gene]",
           "tyrosine")


## En dado caso que requiera buscar con voucher especifico, el modo correto para la busqueda es AND [Al fields], para el voucher y el numero 

aa <- "[All Fields]"
voucher <- paste("voucher[All Fields]",solosp[i,2],aa, "AND")
numero <- paste(solosp[i,3],aa)

##Le recuerdo a R cual es mi Setwd

#setwd("C:/Users/Lenovo/Google Drive/Alejandra/Daza_2016")

#####

for(i in 1:length(sporg))
  for(j in 1:length(genes)) 
  { 
  if(solosp[i,2]!=" ") 
    { 
    p <- paste(solosp$Taxon[],"[Organims] AND", voucher, numero, genes[j])
      
    losidsvouch <- entrez_search(db="nuccore", 
                                 term=p,
                                 retmax=1000) 
      
    ConVou <- entrez_fetch(db="nuccore", 
                                  id= losidsvouch$ids, 
                                  rettype="fasta") 
      
    if (is.character(losidsvouch$ids)) 
        { 
        write(ConVou, 
              paste(genes[j],".fasta"), 
              sep=" ", append = TRUE) 
        } 
      } else { 
        y <- paste(sporg[i], genes[j])
        losids <- entrez_search(db="nuccore", 
                          term=y, 
                          retmax=1000)
  SinVou <- entrez_fetch(db="nuccore", 
                         id= losids$ids, 
                         rettype="fasta")
  if(is.character(losids$ids))
  {
    write(SinVou, 
          paste(y,".fasta"),append = TRUE, 
          sep=" ")
  }
      }
  } 
}
