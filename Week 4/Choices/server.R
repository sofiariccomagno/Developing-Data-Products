library(shiny)
shinyServer(function(input,output){
  output$text1<- renderText({
  bur<-ifelse(input$burger, "Burger", "")
  ch<-ifelse(input$chinese,"Chinese food","")
  fc<-ifelse(input$fc,"Fish and Chips", "")
  kfc<-ifelse(input$friedchicken, "Fried Chicken", "")
  ind<-ifelse(input$indian, "Indian", "")
  it<-ifelse(input$italian, "Italian food", "")
  jap<-ifelse(input$japanese, "Japanese food", "")
  keb<-ifelse(input$kebab, "Kebab", "")
  mex<-ifelse(input$mexican, "Mexican food", "")
  thai<-ifelse(input$thai, "Thai food", "")
 choices<-c(bur,ch,fc,kfc,ind,it,jap,keb,mex,thai)
 choices[choices==""] <- NA
 choices <- na.omit(choices)
 if(length(choices) != 0) {
   sample(choices,1)
 }
 })
  output$text2<- renderText({"To use the app, simply select whichever options you are undecided about and then click Go to have the app decide for you."})
})