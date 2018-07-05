library(paleoTS)

my.mean <- vector(mode="numeric", length=n.bins)  # this is a vector that will hold number and has the same length as our timescale
my.var <- vector(mode="numeric", length=n.bins)
my.n <- vector(mode="numeric", length=n.bins)
my.time <- timescale$age_bottom  # we don't really need to make a separate variable for this, but just for clarity I have.  Also not that I've used age_bottom (rather than interval midpoint or age_top) so that the duration of each stage are calculated by paleoTS

 for(i in 1:n.bins){
	temp.data <- log10(sizeData$max_vol[sizeData$fad_age > timescale$age_top[i] & sizeData$lad_age < timescale$age_bottom[i]])
	my.mean[i] = mean(temp.data)
	my.var[i] = var(temp.data)
	my.n[i] = length(temp.data)
}

for(i in 1:n.bins){
 temp.data <- log10(sizeData$max_vol[sizeData$fad_age > timescale$age_top[i] & sizeData$lad_age < timescale$age_bottom[i]])
 my.mean[i] = mean(temp.data)
 my.var[i] = var(temp.data)
 my.n[i] = length(temp.data)
 }
 my.mean
  [1] 3.315132 3.988595 3.988595 3.988595 3.976554 3.941587 3.920384 3.895270 3.894743 3.852767 3.848488 3.780037 3.778282 3.779602 3.772482 3.650449 3.674664 3.701610
 [19] 3.578428 3.425488 3.325361 3.292725 3.612574 3.794722 3.759474 3.790157 3.809790 3.751039 3.806306 3.687829 3.452851 3.606484 3.674944 3.707962 3.944685 3.852963
 [37] 3.774199 3.748019 3.595968 3.714267 3.782484 3.904431 3.787259 3.824222 3.658658 3.684342 3.710231 3.551497 3.541501 3.783168 3.828350 3.671832 3.267449 3.164002
 [55] 3.267656 3.320771 3.344601 3.334024 3.301407 3.224952 3.164276 3.092828 3.087236 3.127461 3.127158 3.084224 3.237143 3.083542 3.244847 3.281663 3.119574 3.126632
 [73] 3.212667 3.104443 3.054701 2.958182 3.116653 3.116653 3.107858 3.103599 2.973713 2.973713 2.974425 2.837249 2.833874 2.703972 2.745352 2.802708 2.751513 2.536654
 [91] 2.583634 2.306170 2.177882 2.301986 2.544374 2.548446 2.685074 2.684776 2.631855 2.356335
 fit3models(my.ts, method="Joint", pool=FALSE)
Error in if (p0[3] <= 0) p0[3] <- 1e-07 : 
  missing value where TRUE/FALSE needed
In addition: Warning messages:
1: In mean.default(dy) : argument is not numeric or logical: returning NA
2: In Ops.factor(dy, 2) : ‘^’ not meaningful for factors
 my.ts = as.paleoTS(mm=my.mean, vv=my.var, nn=my.n, tt=my.time, oldest="last")
 fit3models(my.ts, method="Joint", pool=FALSE)

Comparing 3 models [n = 100, method = Joint]

            logL K      AICc Akaike.wt
GRW    -15.08226 3  36.41453     0.299
URW    -15.29476 2  34.71324     0.701
Stasis -64.02240 2 132.16851     0.000
 plot(timescale$age_bottom, my.mean, xlim=c(541,0), type="o", pch=16, xlab="Geologic time (Ma)", ylab=expression(paste("Mean body size (log"[10],"mm)")))
 for(i in 1:n.bins) {
 ci <- 1.96 * sqrt(my.var[i]) / sqrt(my.n[i])
 # 2 points will define our confidence interval lines so let's just make x and y vectors to make the lines() command look neater
 my.x <- rep(timescale$age_bottom[i], 2)  # rep() repeats a value.  Since we want a vertical line, both points will have the same x-value
 my.y <- c(my.mean[i] + ci, my.mean[i] - ci)
 lines(my.x, my.y, lwd=0.75) # ldw is line width and here we're plotting CI lines that are 0.75 times as thick as the default line (i.e., 25% thinner)
 ?rep(
 g
 SADF
Error: unexpected symbol in:
"g
SADF"
 ?rep(
 ggad
 sasd
Error: unexpected symbol in:
"ggad
sasd"
 ?rep()
 for(i in 1:n.bins) {
 ci <- 1.96 * sqrt(my.var[i]) / sqrt(my.n[i])
 # 2 points will define our confidence interval lines so let's just make x and y vectors to make the lines() command look neater
 my.x <- rep(timescale$age_bottom[i], 2)  # rep() repeats a value.  Since we want a vertical line, both points will have the same x-value
 my.y <- c(my.mean[i] + ci, my.mean[i] - ci)
lines(my.x, my.y, lwd=0.75) # ldw is line width and here we're plotting CI lines that are 0.75 times as thick as the default line (i.e., 25% thinner)



