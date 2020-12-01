library(tseries); library(forecast); library(FitARMA); library(fGarch);
library(MASS); library(FitAR); library(timeSeries); library(numDeriv);
library(reporttools); library(xtable); library(rugarch); library(lmtest); library(KFAS);
library(methods); library(vars); library(tsoutliers); library(FKF); library(astsa);
library(EMD); library(hht); library(Rlibeemd); library(ggplot2); library(reshape);
library(randtests); library(moments); library(tseriesChaos); library(fpp);
library(Rssa); library(doBy); library(psychometric); library(TStools); library(ineq);
library(plot3D); library(caret); library(RSNNS); library(nonlinearTseries);
library(psych); library(xlsx);


#A.2 r codes for simulation
#The following codes are used in chapter 4 for simulation for four different scenarios
#and for different number of observations:
################## Scenario I ########################
c11=500; # Used different number of observations i.e. 50, 500, 1000, 2000, 5000, 10000
set.seed(123); # select seed to repeat the experiment with the same observations
z11= rnorm(c11, mean = 0, sd = 0.4); #To get the random numbers from normal distribution
t11=seq(0, 10, length.out = c11);
y11=sin(2*pi*t11); #To get the sin function values for deterministic component.
add11=z11+y11; # To get the noise time series
par(mfrow=c(3,1), mar=c(4.1,3.1,2.1,1.1)) # Plot all the above three series
plot(y11,type="l", ylab="Sine wave")
plot(z11,type="l", ylab="e(0,0.4)")
plot(add11,type="l", xlab="Time", ylab="Sin(2pi)+e(0,0.4)")
