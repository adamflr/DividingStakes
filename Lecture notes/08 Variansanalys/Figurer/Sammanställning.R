library(magick)
img1 <- image_read("Föreläsningar/08 Variansanalys/Figurer/Skärmbild (107).png")
image_crop(img1, "225x280") %>% 
  image_crop("-100-100") -> img1

img2 <- image_read("Föreläsningar/08 Variansanalys/Figurer/Skärmbild (108).png")
image_crop(img2, "296x280") %>% 
  image_crop("-180-100") -> img2

img3 <- image_read("Föreläsningar/08 Variansanalys/Figurer/Skärmbild (109).png")
image_crop(img3, "225x280") %>% 
  image_crop("-100-100") -> img3

img <- image_append(c(img1, img2, img3))
image_write(img, "Föreläsningar/08 Variansanalys/Figurer/Biometri_tabell789.png")
