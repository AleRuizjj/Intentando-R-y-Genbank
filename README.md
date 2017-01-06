# Intentando-R-y-Genbank
Descargando secuencias de Genbank a través de R 

##########
#######busco en internet wiii######

setwd("C:/Users/Lenovo/Desktop")

install.packages("rentrez" )

Bufo_melanostictus <- ("Bufo melanostictus[Organism]" ),

Bufo <-  entrez_search(db="nuccore", term=Bufo_melanostictus, retmax=40),

Bufo$ids
