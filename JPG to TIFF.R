
library(jpeg)
library(tiff)

### ścieżka do pliku gdzie znajdują się pliki JPG

  folder <- "C:/Users/User1/Desktop/aparat/JPGy/"
  
### stworzenie listy plików
  
  lista <- list.files(path = folder)

### pętla która wykonuje konwersję
  
  for(i in (1:length(lista))) {
  
  # wczytywanie pliku w formie JPG
    
  skan <- readJPEG(source=paste0(folder,lista[i]), native = FALSE)

  # zapis pliku w formie TIFF
  
  writeTIFF(skan, paste0("C:/Users/User1/Desktop/aparat/","skan_",i,".tif"),compression ="LZW",reduce = TRUE)

  # usunięcie zdjęć z obszaru roboczego
  rm(skan)
}
