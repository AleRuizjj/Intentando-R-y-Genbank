## Universidad Industrial de Santander 
## Manejo de base de datos, (R con sangre y genes
## Alejandra Ruiz J.



### Llamo a la matriz de datos de Daza

datos<- read.csv("daza2016.csv", sep=";")

colnames(datos)<-c("taxa","12S","16S","COI","CYTB","CXCR4","NCX1","POMC","RAG1","SLC8A3","TYR")

head(datos,1L)
 
############### Un For salvaje aparece ##############

taxa<-read.csv("taxa.csv", sep=";")
head(taxa,2L)

for(i in 1:length(datos$taxa))
      datos$taxa<-(download.file(paste("https://www.ncbi.nlm.nih.gov/nuccore/?term=",taxa$taxa[1], sep="")),"C:/Users/Lenovo/Google Drive/Alejandra/Daza_2016"
))
wininet)
### For fallido..###

#######busco en internet wiii######

install.packages("rentrez" )
setwd("C:/Users/Lenovo/Desktop")


### Solo para Bufo ##

##Escribo la taxa con el gen.

Bufo_melanostictus_CXCR4 <- ("Bufo melanostictus[Organism] AND CXCR4[gene]" )

##Lo busco en GenBank

Bufo <-  entrez_search(db="nuccore", 
                       term=Bufo_melanostictus_CXCR4, 
                       retmax=40)
#Llamo los Ids (NCBI)

Bufo$ids  #Aparecen solo los que tienen voucher¿?

#### En formato Fasta

Bufo_melanostictus_CXCR4_seq <- entrez_fetch(db="nuccore", 
                                            id=Bufo$ids, 
                                            rettype="fasta")
### Descargo lo que obtuve.

write(Bufo_melanostictus_CXCR4_seq, 
      "Bufo_melanostictus_CXCR4.fasta", 
      sep="\n")

## Ahora la misma sp pero con 12s 

Bufo_melanostictus_12s <- ("Bufo melanostictus[Organism] AND 12S[ARN]" )

Bufo_12s <-  entrez_search(db="nuccore", 
                       term=Bufo_melanostictus_12s, 
                       retmax=100)
Bufo_12s$ids

Bufo_melanostictus_12s_seq <- entrez_fetch(db="nuccore", 
                                             id=Bufo_12s$ids, 
                                             rettype="fasta")
## Descargo en Fasta
write(Bufo_melanostictus_12s_seq, 
      "Bufo_melanostictus_12s.fasta", 
      sep="\n")

## Ahora con 16S

Bufo_melanostictus_16s <- ("Bufo melanostictus[Organism] AND 16S" )
Bufo_16s <-  entrez_search(db="nuccore", 
                           term=Bufo_melanostictus_16s, 
                           retmax=100)
Bufo_16s$ids

Bufo_melanostictus_16s_seq <- entrez_fetch(db="nuccore", 
                                           id=Bufo_16s$ids, 
                                           rettype="fasta")
write(Bufo_melanostictus_16s_seq, 
      "Bufo_melanostictus_16s.fasta", 
      sep="\n")

## Otro gen, COI

Bufo_melanostictus_COI <- ("Bufo melanostictus[Organism] AND COI[gene]" )
Bufo_COI <-  entrez_search(db="nuccore", 
                           term=Bufo_melanostictus_COI, 
                           retmax=100)
Bufo_COI$ids

Bufo_melanostictus_COI_seq <- entrez_fetch(db="nuccore", 
                                           id=Bufo_COI$ids, 
                                           rettype="fasta")
write(Bufo_melanostictus_COI_seq, 
      "Bufo_melanostictus_COI.fasta", 
      sep="\n")

## CYTB, cytochrome b

Bufo_melanostictus_CYTB <- ("Bufo melanostictus[Organism] AND cytochrome b" )
Bufo_CYTB <-  entrez_search(db="nuccore", 
                           term=Bufo_melanostictus_CYTB, 
                           retmax=100)
Bufo_CYTB$ids

Bufo_melanostictus_CYTB_seq <- entrez_fetch(db="nuccore", 
                                           id=Bufo_CYTB$ids, 
                                           rettype="fasta")
write(Bufo_melanostictus_CYTB_seq, 
      "Bufo_melanostictus_CYTB.fasta", 
      sep="\n")

## NCX1

Bufo_melanostictus_NCX1 <- ("Bufo melanostictus[Organism] AND NCX1[gene]" )
Bufo_NCX1 <-  entrez_search(db="nuccore", 
                            term=Bufo_melanostictus_NCX1, 
                            retmax=100)
Bufo_NCX1$ids

Bufo_melanostictus_NCX1_seq <- entrez_fetch(db="nuccore", 
                                            id=Bufo_NCX1$ids, 
                                            rettype="fasta")
write(Bufo_melanostictus_NCX1_seq, 
      "Bufo_melanostictus_NCX1.fasta", 
      sep="\n")

## POMC

Bufo_melanostictus_POMC <- ("Bufo melanostictus[Organism] AND POMC[gene]" )
Bufo_POMC <-  entrez_search(db="nuccore", 
                            term=Bufo_melanostictus_POMC, 
                            retmax=200)
Bufo_POMC$ids

Bufo_melanostictus_POMC_seq <- entrez_fetch(db="nuccore", 
                                            id=Bufo_POMC$ids, 
                                            rettype="fasta")
write(Bufo_melanostictus_POMC_seq, 
      "Bufo_melanostictus_POMC.fasta", 
      sep="\n")

## RAG1

Bufo_melanostictus_RAG1 <- ("Bufo melanostictus[Organism] AND RAG1[gene]" )
Bufo_RAG1 <-  entrez_search(db="nuccore", 
                            term=Bufo_melanostictus_RAG1, 
                            retmax=200)
Bufo_RAG1$ids

Bufo_melanostictus_RAG1_seq <- entrez_fetch(db="nuccore", 
                                            id=Bufo_RAG1$ids, 
                                            rettype="fasta")
write(Bufo_melanostictus_RAG1_seq, 
      "Bufo_melanostictus_RAG1.fasta", 
      sep="\n")

## SLC8A3

Bufo_melanostictus_SLC8A3 <- ("Bufo melanostictus[Organism] AND SLC8A3[gene]" )
Bufo_SLC8A3 <-  entrez_search(db="nuccore", 
                            term=Bufo_melanostictus_SLC8A3, 
                            retmax=200)
Bufo_SLC8A3$ids

Bufo_melanostictus_SLC8A3_seq <- entrez_fetch(db="nuccore", 
                                            id=Bufo_SLC8A3$ids, 
                                            rettype="fasta")
write(Bufo_melanostictus_SLC8A3_seq, 
      "Bufo_melanostictus_SLC8A3.fasta", 
      sep="\n")

## TYR

Bufo_melanostictus_TYR <- ("Bufo melanostictus[Organism] AND tyr[gene]" )
Bufo_TYR <-  entrez_search(db="nuccore", 
                              term=Bufo_melanostictus_TYR, 
                              retmax=200)
Bufo_TYR$ids
Bufo_melanostictus_TYR_seq <- entrez_fetch(db="nuccore", 
                                              id=Bufo_TYR$ids, 
                                              rettype="fasta")
write(Bufo_melanostictus_TYR_seq, 
      "Bufo_melanostictus_TYR.fasta", 
      sep="\n")

Pristimantis_boulengeri_MHUAA8952 <- ("Pristimantis boulengeri[Organism] AND COI[gene]")

Pboulengeri <- entrez_search(db="nuccore", 
              term=Pristimantis_boulengeri_MHUAA8952, 
              retmax=1000)

Pboulengeri$ids
Pboulengeri_COI_seq <- entrez_fetch(db="nuccore", 
                                           id=Pboulengeri$ids, 
                                           rettype="fasta")

## Otro for salvaje aparece ##

taxa <- as.character(datos$taxa) 
org <- "[Organism] AND"
genes <- c("12S","16S","COI[gene]", "cytochrome b", "CXCR4[gene]", "NCX1[gene]", "POMC[gene]", "RAG1[gene]", "SLC8A3[gene]", "tyrosine")
           
sporg <- paste(taxa, org)
sporg[1]


for(i in 1:length(sporg[1:2]))
  {
    for(j in 1:length(genes[1:2]))
    {
        y <- paste(sporg[i], genes[j])
        losids <- entrez_search(db="nuccore", 
                      term=y, 
                      retmax=1000)
        cosito <- entrez_fetch(db="nuccore", 
                     id= losids$ids, 
                     rettype="fasta")
        write(cosito, 
              paste(y,".fasta"), 
              sep="\n")

      }
  }

## For aceptado. ## pero y los voucher ?
## Ahora un for mas complejo, con if para que me imprima con voucher y no imprima los que no tienen nada

#i es variable que corre por las filitas
#j tambien es variable
#solosp son las especies con el voucher y su número separadas (3 colunmas)
#esto busca los ids de NCBI
#Paste es para concatenar
#if: como los ids se dan en caracter(cuando existen), pasa a imprimirlo, si no, (list()) no hace nada.


for(i in 1:length(sporg))   
{
  for(j in 1:length(genes))  
  {
    if(solosp[i,2]!="")       
    { p <- paste(solosp$Taxon[i],"[Organims] AND", voucher, numero, genes[j])  
    losidsvouch <- entrez_search(db="nuccore",  
                            term=p, 
                            retmax=1000)
    cositovouch <- entrez_fetch(db="nuccore",    
                           id= losidsvouch$ids, 
                           rettype="fasta")
    if (is.character(losidsvouch$ids))   
    {
    write(cositovouch,          
          paste(p,".fasta"), 
          sep="\n")
    } 
    } else {
      
    y <- paste(sporg[i], genes[j])       
    losids <- entrez_search(db="nuccore", 
                            term=y, 
                            retmax=1000)
    cosito <- entrez_fetch(db="nuccore", 
                           id= losids$ids, 
                           rettype="fasta")
    if(is.character(losids$ids))
      {
    write(cosito, 
          paste(y,".fasta"), 
          sep="\n")
      }
    }
  }
}

