library(magick)

dir = 'C:/Users/Admin/Desktop/convertFile'
#fl = list.files(dir, full.names = TRUE, pattern = '.JPG')
fl = list.files(dir, full.names = TRUE, pattern = '.tif')

img = image_read(fl) # read from vector of paths

image_write(img, format="pdf", file.path('C:/Users/Admin/Desktop/PDFy', 'file.pdf'))

print(img)
