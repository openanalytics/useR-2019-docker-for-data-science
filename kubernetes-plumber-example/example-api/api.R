
#* UseR 2019
#* @get /api/whereami
function(){
  list(msg = "This API speaks only French, use /api/ousuisje")
}

#* UseR 2019
#* @get /api/ousuisje
function(){
  list(msg = "UseR2019! Bonjour!")
}

#* Echo back the input
#* @param msg The message to echo
#* @get /api/echo
function(msg=""){
  list(msg = paste0("The message is: '", msg, "'"))
}

#* Plot a histogram
#* @png
#* @get /api/plot
function(){
  rand <- rnorm(100)
  hist(rand)
}

#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @post /api/sum
function(a, b){
  as.numeric(a) + as.numeric(b)
}
