# Analisis del acervo de estaciones geodesicas de INEGI

## Instalar y cargar el paquete Tidyverse

install.packages("tidyverse")
library(tidyverse)

## Importacion y creacion de los dataframes

### Dataframe de la red geodesica horizontal

horizontal <- rbind(
  read_csv("aguascalientes.csv", locale=locale(encoding="latin1")),
  read_csv("baja_california.csv", locale=locale(encoding="latin1")),
  read_csv("baja_california_sur.csv", locale=locale(encoding="latin1")),
  read_csv("campeche.csv", locale=locale(encoding="latin1")),
  read_csv("cdmx.csv", locale=locale(encoding="latin1")),
  read_csv("chiapas.csv", locale=locale(encoding="latin1")),
  read_csv("chihuahua.csv", locale=locale(encoding="latin1")),
  read_csv("coahuila.csv", locale=locale(encoding="latin1")),
  read_csv("colima.csv", locale=locale(encoding="latin1")),
  read_csv("durango.csv", locale=locale(encoding="latin1")),
  read_csv("guanajuato.csv", locale=locale(encoding="latin1")),
  read_csv("guerrero.csv", locale=locale(encoding="latin1")),
  read_csv("hidalgo.csv", locale=locale(encoding="latin1")),
  read_csv("jalisco.csv", locale=locale(encoding="latin1")),
  read_csv("mexico.csv", locale=locale(encoding="latin1")),
  read_csv("michoacan.csv", locale=locale(encoding="latin1")),
  read_csv("morelos.csv", locale=locale(encoding="latin1")),
  read_csv("nayarit.csv", locale=locale(encoding="latin1")),
  read_csv("nuevo_leon.csv", locale=locale(encoding="latin1")),
  read_csv("oaxaca.csv", locale=locale(encoding="latin1")),
  read_csv("puebla.csv", locale=locale(encoding="latin1")),
  read_csv("queretaro.csv", locale=locale(encoding="latin1")),
  read_csv("quintana_roo.csv", locale=locale(encoding="latin1")),
  read_csv("san_luis_potosi.csv", locale=locale(encoding="latin1")),
  read_csv("sinaloa.csv", locale=locale(encoding="latin1")),
  read_csv("sonora.csv", locale=locale(encoding="latin1")),
  read_csv("tabasco.csv", locale=locale(encoding="latin1")),
  read_csv("tamaulipas.csv", locale=locale(encoding="latin1")),
  read_csv("tlaxcala.csv", locale=locale(encoding="latin1")),
  read_csv("veracruz.csv", locale=locale(encoding="latin1")),
  read_csv("yucatan.csv", locale=locale(encoding="latin1")),
  read_csv("zacatecas.csv", locale=locale(encoding="latin1"))
)

glimpse(horizontal)

### Dataframe de la red geodesica vertical

vertical <- rbind(
  read_csv("aguascalientes.csv", locale=locale(encoding="latin1")),
  read_csv("baja_california.csv", locale=locale(encoding="latin1")),
  read_csv("baja_california_sur.csv", locale=locale(encoding="latin1")),
  read_csv("campeche.csv", locale=locale(encoding="latin1")),
  read_csv("cdmx.csv", locale=locale(encoding="latin1")),
  read_csv("chiapas.csv", locale=locale(encoding="latin1")),
  read_csv("chihuahua.csv", locale=locale(encoding="latin1")),
  read_csv("coahuila.csv", locale=locale(encoding="latin1")),
  read_csv("colima.csv", locale=locale(encoding="latin1")),
  read_csv("durango.csv", locale=locale(encoding="latin1")),
  read_csv("guanajuato.csv", locale=locale(encoding="latin1")),
  read_csv("guerrero.csv", locale=locale(encoding="latin1")),
  read_csv("hidalgo.csv", locale=locale(encoding="latin1")),
  read_csv("jalisco.csv", locale=locale(encoding="latin1")),
  read_csv("mexico.csv", locale=locale(encoding="latin1")),
  read_csv("michoacan.csv", locale=locale(encoding="latin1")),
  read_csv("morelos.csv", locale=locale(encoding="latin1")),
  read_csv("nayarit.csv", locale=locale(encoding="latin1")),
  read_csv("nuevo_leon.csv", locale=locale(encoding="latin1")),
  read_csv("oaxaca.csv", locale=locale(encoding="latin1")),
  read_csv("puebla.csv", locale=locale(encoding="latin1")),
  read_csv("queretaro.csv", locale=locale(encoding="latin1")),
  read_csv("quintana_roo.csv", locale=locale(encoding="latin1")),
  read_csv("san_luis_potosi.csv", locale=locale(encoding="latin1")),
  read_csv("sinaloa.csv", locale=locale(encoding="latin1")),
  read_csv("sonora.csv", locale=locale(encoding="latin1")),
  read_csv("tabasco.csv", locale=locale(encoding="latin1")),
  read_csv("tamaulipas.csv", locale=locale(encoding="latin1")),
  read_csv("tlaxcala.csv", locale=locale(encoding="latin1")),
  read_csv("veracruz.csv", locale=locale(encoding="latin1")),
  read_csv("yucatan.csv", locale=locale(encoding="latin1")),
  read_csv("zacatecas.csv", locale=locale(encoding="latin1"))
)

### Dataframe de la red geodesica gravimetrica

gravimetrica <- rbind(
  read_csv("aguascalientes.csv", locale=locale(encoding="latin1")),
  read_csv("baja_california.csv", locale=locale(encoding="latin1")),
  read_csv("baja_california_sur.csv", locale=locale(encoding="latin1")),
  read_csv("campeche.csv", locale=locale(encoding="latin1")),
  read_csv("cdmx.csv", locale=locale(encoding="latin1")),
  read_csv("chiapas.csv", locale=locale(encoding="latin1")),
  read_csv("chihuahua.csv", locale=locale(encoding="latin1")),
  read_csv("coahuila.csv", locale=locale(encoding="latin1")),
  read_csv("colima.csv", locale=locale(encoding="latin1")),
  read_csv("durango.csv", locale=locale(encoding="latin1")),
  read_csv("guanajuato.csv", locale=locale(encoding="latin1")),
  read_csv("guerrero.csv", locale=locale(encoding="latin1")),
  read_csv("hidalgo.csv", locale=locale(encoding="latin1")),
  read_csv("jalisco.csv", locale=locale(encoding="latin1")),
  read_csv("mexico.csv", locale=locale(encoding="latin1")),
  read_csv("michoacan.csv", locale=locale(encoding="latin1")),
  read_csv("morelos.csv", locale=locale(encoding="latin1")),
  read_csv("nayarit.csv", locale=locale(encoding="latin1")),
  read_csv("nuevo_leon.csv", locale=locale(encoding="latin1")),
  read_csv("oaxaca.csv", locale=locale(encoding="latin1")),
  read_csv("puebla.csv", locale=locale(encoding="latin1")),
  read_csv("queretaro.csv", locale=locale(encoding="latin1")),
  read_csv("quintana_roo.csv", locale=locale(encoding="latin1")),
  read_csv("san_luis_potosi.csv", locale=locale(encoding="latin1")),
  read_csv("sinaloa.csv", locale=locale(encoding="latin1")),
  read_csv("sonora.csv", locale=locale(encoding="latin1")),
  read_csv("tabasco.csv", locale=locale(encoding="latin1")),
  read_csv("tamaulipas.csv", locale=locale(encoding="latin1")),
  read_csv("tlaxcala.csv", locale=locale(encoding="latin1")),
  read_csv("veracruz.csv", locale=locale(encoding="latin1")),
  read_csv("yucatan.csv", locale=locale(encoding="latin1")),
  read_csv("zacatecas.csv", locale=locale(encoding="latin1"))
)

### Exportacion de los dataframes a archivos .csv
write_csv(x = horizontal, file = "/Users/rvargas8711/acervo_inegi/horizontal.csv")
write_csv(x = vertical, file = "/Users/rvargas8711/acervo_inegi/vertical.csv")
write_csv(x = gravimetrica, file = "/Users/rvargas8711/acervo_inegi/gravimetrica.csv")