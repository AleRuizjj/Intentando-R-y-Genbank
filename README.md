# Intentando-R-y-Genbank
Descargando secuencias de Genbank a través de R 

##########
#######busco en internet wiii######

setwd("C:/Users/Lenovo/Desktop")
#Escribo el gen que necesito.
Bufo_melanostictus_CXCR4 <- ("Bufo melanostictus[Organism] AND CXCR4[gene]" )

Bufo <-  entrez_search(db="nuccore", term=Bufo_melanostictus_CXCR4, retmax=40)
Bufo$ids
Bufo_melanostictus_CXCR4_seq<- entrez_fetch(db="nuccore", id=Bufo$ids, rettype="fasta")


