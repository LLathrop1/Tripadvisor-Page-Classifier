library(rvest)
library(stringr)
library(dplyr)
library(tm)

df<- data.frame(Product = character(),
                Overview = character(),
                Infor = character(),
                nrow = 2232,
                stringsAsFactors = FALSE)
info<- NA
overview<- NA

Products <- read.csv(choose.files(), stringsAsFactors = FALSE)

for (Products in Products){
  url1<- paste("https://www.viator.com/search/",Products,sep="")
  url2<- paste("https://www.viator.com/orion/tours/",Products,"/extra-content", sep="")
} 

for (x in url1[1706:length(url1)]){
  overview[x]<- read_html(x, "html5lib") %>% html_node("body > div.container-fluid > div:nth-child(3) > div.row.mt-lg-4 > div.col-lg-9 > div:nth-child(7)") %>% html_text()
}  
   
for(y in url2[1705:length(url2)]){
  info[y]<- read_html(y, "html5lib") %>% html_text()
}

df$Product<- Products


private tour/activity
matrix()