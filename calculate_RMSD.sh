#!/bin/bash

nconf=4005


#RMSD_sum=0
#RMSD_sum_core=0
#RMSD_sum_Cterminus=0
#RMSD_sum_Nterminus=0
RMSD_sum_BCloop=0
#RMSD_sum_DEloop=0
#RMSD_sum_EFloop=0
RMSD_sum_FGloop=0
#RMSD_sum_square_diff=0
#RMSD_sum_square_diff_core=0
#RMSD_sum_square_diff_Cterminus=0
#RMSD_sum_square_diff_Nterminus=0
#RMSD_sum_square_diff_DEloop=0
#RMSD_sum_square_diff_EFloop=0
#echo $RMSD_sum
#echo $RMSD_sum_core
#echo $RMSD_sum_Cterminus
#echo $RMSD_sum_Nterminus
echo $RMSD_sum_BCloop
#echo $RMSD_sum_DEloop
#echo $RMSD_sum_EFloop
echo $RMSD_sum_FGloop


i=1
while [ $i -le $nconf ]; do
if [ $i -lt 10 ]
then
   #rms.pl -out ca -fit  4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-000$i.pdb >> D76N_I2-pH7p2_chain-RMSD.dat
   #rms.pl -out ca -l 6:83 -fit 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-000$i.pdb >> D76N_I2-pH7p2_chain-RMSD_core.dat
   #rms.pl -out ca -l 21:83 -fit 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-000$i.pdb >> D76N_I2-pH7p2_chain-RMSD_core.dat
   #rms.pl -out ca -l 84:99 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-000$i.pdb >> D76N_I2-pH7p2_chain-RMSD_C-terminus.dat
   #rms.pl -out ca -l  6:20 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-000$i.pdb >> D76N_I2-pH7p2_chain-RMSD_N-terminus.dat
   rms.pl -out ca -l  29:35 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-000$i.pdb >> D76N_I2-pH7p2_chain-RMSD_BC-loop.dat
   #rms.pl -out ca -l  56:62 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-000$i.pdb >> D76N_I2-pH7p2_chain-RMSD_DE-loop.dat
   #rms.pl -out ca -l  69:78 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-000$i.pdb >> D76N_I2-pH7p2_chain-RMSD_EF-loop.dat
   rms.pl -out ca -l  84:90 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-000$i.pdb >> D76N_I2-pH7p2_chain-RMSD_FG-loop.dat   
elif [ $i -lt 100 ]
then
   #rms.pl -out ca -fit  4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-00$i.pdb >> D76N_I2-pH7p2_chain-RMSD.dat
   #rms.pl -out ca -l 6:83 -fit 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-00$i.pdb >> D76N_I2-pH7p2_chain-RMSD_core.dat
   #rms.pl -out ca -l 21:83 -fit 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-00$i.pdb >> D76N_I2-pH7p2_chain-RMSD_core.dat
   #rms.pl -out ca -l 84:99 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-00$i.pdb >> D76N_I2-pH7p2_chain-RMSD_C-terminus.dat
   #rms.pl -out ca -l  6:20 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-00$i.pdb >> D76N_I2-pH7p2_chain-RMSD_N-terminus.dat
   rms.pl -out ca -l  29:35 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-00$i.pdb >> D76N_I2-pH7p2_chain-RMSD_BC-loop.dat
   #rms.pl -out ca -l  56:62 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-00$i.pdb >> D76N_I2-pH7p2_chain-RMSD_DE-loop.dat
   #rms.pl -out ca -l  69:78 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-00$i.pdb >> D76N_I2-pH7p2_chain-RMSD_EF-loop.dat
   rms.pl -out ca -l  84:90 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-00$i.pdb >> D76N_I2-pH7p2_chain-RMSD_FG-loop.dat      
elif [ $i -lt 1000 ]
then
   #rms.pl -out ca -fit  4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-0$i.pdb >> D76N_I2-pH7p2_chain-RMSD.dat
   #rms.pl -out ca -l 6:83 -fit 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-0$i.pdb >> D76N_I2-pH7p2_chain-RMSD_core.dat
   #rms.pl -out ca -l 21:83 -fit 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-0$i.pdb >> D76N_I2-pH7p2_chain-RMSD_core.dat
   #rms.pl -out ca -l 84:99 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-0$i.pdb >> D76N_I2-pH7p2_chain-RMSD_C-terminus.dat
   #rms.pl -out ca -l  6:20 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-0$i.pdb >> D76N_I2-pH7p2_chain-RMSD_N-terminus.dat
   rms.pl -out ca -l  29:35 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-0$i.pdb >> D76N_I2-pH7p2_chain-RMSD_BC-loop.dat
   #rms.pl -out ca -l  56:62 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-0$i.pdb >> D76N_I2-pH7p2_chain-RMSD_DE-loop.dat
   #rms.pl -out ca -l  69:78 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-0$i.pdb >> D76N_I2-pH7p2_chain-RMSD_EF-loop.dat 
   rms.pl -out ca -l  84:90 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-0$i.pdb >> D76N_I2-pH7p2_chain-RMSD_FG-loop.dat        
else
   #rms.pl -out ca -fit  4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-$i.pdb >> D76N_I2-pH7p2_chain-RMSD.dat
   #rms.pl -out ca -l 6:83 -fit 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-$i.pdb >> D76N_I2-pH7p2_chain-RMSD_core.dat
   #rms.pl -out ca -l 21:83 -fit 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-$i.pdb >> D76N_I2-pH7p2_chain-RMSD_core.dat
   #rms.pl -out ca -l 84:99 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-$i.pdb >> D76N_I2-pH7p2_chain-RMSD_C-terminus.dat
   #rms.pl -out ca -l  6:20 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-$i.pdb >> D76N_I2-pH7p2_chain-RMSD_N-terminus.dat
   rms.pl -out ca -l  29:35 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-$i.pdb >> D76N_I2-pH7p2_chain-RMSD_BC-loop.dat
   #rms.pl -out ca -l  56:62 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-$i.pdb >> D76N_I2-pH7p2_chain-RMSD_DE-loop.dat
   #rms.pl -out ca -l  69:78 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-$i.pdb >> D76N_I2-pH7p2_chain-RMSD_EF-loop.dat 
   rms.pl -out ca -l  84:90 -fitxl 4FXL_D76N_b2m.pdb D76N-I2-pH7p2-chain-$i.pdb >> D76N_I2-pH7p2_chain-RMSD_FG-loop.dat            
fi
let i=i+1
done

#awk '{print $1}' D76N_I2-pH7p2_chain-RMSD.dat > D76N-I2-pH7p2_chain_RMSD.dat
#awk '{print $1}' D76N_I2-pH7p2_chain-RMSD_core.dat > D76N-I2-pH7p2_chain_RMSD_core.dat
#awk '{print $1}' D76N_I2-pH7p2_chain-RMSD_C-terminus.dat > D76N-I2-pH7p2_chain_RMSD_C-terminus.dat
#awk '{print $1}' D76N_I2-pH7p2_chain-RMSD_N-terminus.dat > D76N-I2-pH7p2_chain_RMSD_N-terminus.dat
awk '{print $1}' D76N_I2-pH7p2_chain-RMSD_BC-loop.dat > D76N-I2-pH7p2_chain_RMSD_BC-loop.dat
#awk '{print $1}' D76N_I2-pH7p2_chain-RMSD_DE-loop.dat > D76N-I2-pH7p2_chain_RMSD_DE-loop.dat
#awk '{print $1}' D76N_I2-pH7p2_chain-RMSD_EF-loop.dat > D76N-I2-pH7p2_chain_RMSD_EF-loop.dat
awk '{print $1}' D76N_I2-pH7p2_chain-RMSD_FG-loop.dat > D76N-I2-pH7p2_chain_RMSD_FG-loop.dat

#rm D76N_I2-pH7p2_chain-RMSD.dat
#rm D76N_I2-pH7p2_chain-RMSD_core.dat
#rm D76N_I2-pH7p2_chain-RMSD_C-terminus.dat
#rm D76N_I2-pH7p2_chain-RMSD_N-terminus.dat
#rm D76N_I2-pH7p2_chain-RMSD_BC-loop.dat
#rm D76N_I2-pH7p2_chain-RMSD_DE-loop.dat
#rm D76N_I2-pH7p2_chain-RMSD_EF-loop.dat
#rm D76N_I2-pH7p2_chain-RMSD_FG-loop.dat

i=1
while [ $i -le $nconf ]; do
#RMSD[$i]=`head -$i D76N-I2-pH7p2_chain_RMSD.dat | tail -1` 
#echo ${RMSD[$i]}
#RMSD_core[$i]=`head -$i D76N-I2-pH7p2_chain_RMSD_core.dat | tail -1`
#echo ${RMSD_core[$i]}
#RMSD_Cterminus[$i]=`head -$i D76N-I2-pH7p2_chain_RMSD_C-terminus.dat | tail -1`
#echo ${RMSD_Cterminus[$i]}
#RMSD_Nterminus[$i]=`head -$i D76N-I2-pH7p2_chain_RMSD_N-terminus.dat | tail -1`
#echo ${RMSD_Nterminus[$i]}
RMSD_BCloop[$i]=`head -$i D76N-I2-pH7p2_chain_RMSD_BC-loop.dat | tail -1`
echo ${RMSD_BCloop[$i]}
#RMSD_DEloop[$i]=`head -$i D76N-I2-pH7p2_chain_RMSD_DE-loop.dat | tail -1`
#echo ${RMSD_DEloop[$i]}
#RMSD_EFloop[$i]=`head -$i D76N-I2-pH7p2_chain_RMSD_EF-loop.dat | tail -1`
#echo ${RMSD_EFloop[$i]}
RMSD_FGloop[$i]=`head -$i D76N-I2-pH7p2_chain_RMSD_FG-loop.dat | tail -1`
echo ${RMSD_FGloop[$i]}


#RMSD_sum=$(echo "$RMSD_sum+${RMSD[$i]}" | bc -l) 
#echo $RMSD_sum
#RMSD_sum_core=$(echo "$RMSD_sum_core+${RMSD_core[$i]}" | bc -l) 
#echo $RMSD_sum_core
#RMSD_sum_Cterminus=$(echo "$RMSD_sum_Cterminus+${RMSD_Cterminus[$i]}" | bc -l) 
#echo $RMSD_sum_Cterminus
#RMSD_sum_Nterminus=$(echo "$RMSD_sum_Nterminus+${RMSD_Nterminus[$i]}" | bc -l) 
#echo $RMSD_sum_Nterminus
RMSD_sum_BCloop=$(echo "$RMSD_sum_BCloop+${RMSD_BCloop[$i]}" | bc -l) 
echo $RMSD_sum_BCloop
#RMSD_sum_DEloop=$(echo "$RMSD_sum_DEloop+${RMSD_DEloop[$i]}" | bc -l) 
#echo $RMSD_sum_DEloop
#RMSD_sum_EFloop=$(echo "$RMSD_sum_EFloop+${RMSD_EFloop[$i]}" | bc -l) 
#echo $RMSD_sum_EFloop
RMSD_sum_FGloop=$(echo "$RMSD_sum_FGloop+${RMSD_FGloop[$i]}" | bc -l) 
echo $RMSD_sum_FGloop

 
let i=i+1
done
#rm D76N-I2-pH7p2_chain_RMSD.dat
#rm D76N-I2-pH7p2_chain_RMSD_core.dat
#rm D76N-I2-pH7p2_chain_RMSD_C-terminus.dat
#rm D76N-I2-pH7p2_chain_RMSD_N-terminus.dat
#rm D76N-I2-pH7p2_chain_RMSD_BC-loop.dat
#rm D76N-I2-pH7p2_chain_RMSD_DE-loop.dat
#rm D76N-I2-pH7p2_chain_RMSD_EF-loop.dat
#rm D76N-I2-pH7p2_chain_RMSD_FG-loop.dat


#RMSD_mean=$(echo "$RMSD_sum/$nconf" | bc -l)  
#echo ${RMSD_mean} >  D76N-I2-pH7p2_chain_RMSD_mean.dat

#RMSD_mean_core=$(echo "$RMSD_sum_core/$nconf" | bc -l)  
#echo ${RMSD_mean_core} >  D76N-I2-pH7p2_chain_RMSD_core_mean.dat

#RMSD_mean_Cterminus=$(echo "$RMSD_sum_Cterminus/$nconf" | bc -l)  
#echo ${RMSD_mean_Cterminus} >  D76N-I2-pH7p2_chain_RMSD_C-terminus_mean.dat

#RMSD_mean_Nterminus=$(echo "$RMSD_sum_Nterminus/$nconf" | bc -l)  
#echo ${RMSD_mean_Nterminus} >  D76N-I2-pH7p2_chain_RMSD_N-terminus_mean.dat

RMSD_mean_BCloop=$(echo "$RMSD_sum_BCloop/$nconf" | bc -l)  
echo ${RMSD_mean_BCloop} >  D76N-I2-pH7p2_chain_RMSD_BC-loop_mean.dat

#RMSD_mean_DEloop=$(echo "$RMSD_sum_DEloop/$nconf" | bc -l)  
#echo ${RMSD_mean_DEloop} >  D76N-I2-pH7p2_chain_RMSD_DE-loop_mean.dat

#RMSD_mean_EFloop=$(echo "$RMSD_sum_EFloop/$nconf" | bc -l)  
#echo ${RMSD_mean_EFloop} >  D76N-I2-pH7p2_chain_RMSD_EF-loop_mean.dat

RMSD_mean_FGloop=$(echo "$RMSD_sum_FGloop/$nconf" | bc -l)  
echo ${RMSD_mean_FGloop} >  D76N-I2-pH7p2_chain_RMSD_FG-loop_mean.dat


#i=1
#while [ $i -le $nconf ]; do
#RMSD_diff[$i]=$(echo "${RMSD[$i]}-$RMSD_mean" | bc -l)
#RMSD_square_diff[$i]=$(echo "${RMSD_diff[$i]}^2" | bc -l)
#RMSD_sum_square_diff=$(echo "${RMSD_sum_square_diff}+${RMSD_square_diff[$i]}" | bc -l)

#RMSD_diff_core[$i]=$(echo "${RMSD_core[$i]}-$RMSD_mean_core" | bc -l)
#RMSD_square_diff_core[$i]=$(echo "${RMSD_diff_core[$i]}^2" | bc -l)
#RMSD_sum_square_diff_core=$(echo "${RMSD_sum_square_diff_core}+${RMSD_square_diff_core[$i]}" | bc -l)

#RMSD_diff_Cterminus[$i]=$(echo "${RMSD_Cterminus[$i]}-$RMSD_mean_Cterminus" | bc -l)
#RMSD_square_diff_Cterminus[$i]=$(echo "${RMSD_diff_Cterminus[$i]}^2" | bc -l)
#RMSD_sum_square_diff_Cterminus=$(echo "${RMSD_sum_square_diff_Cterminus}+${RMSD_square_diff_Cterminus[$i]}" | bc -l)

#RMSD_diff_Nterminus[$i]=$(echo "${RMSD_Nterminus[$i]}-$RMSD_mean_Nterminus" | bc -l)
#RMSD_square_diff_Nterminus[$i]=$(echo "${RMSD_diff_Nterminus[$i]}^2" | bc -l)
#RMSD_sum_square_diff_Nterminus=$(echo "${RMSD_sum_square_diff_Nterminus}+${RMSD_square_diff_Nterminus[$i]}" | bc -l)

#RMSD_diff_DEloop[$i]=$(echo "${RMSD_DEloop[$i]}-$RMSD_mean_DEloop" | bc -l)
#RMSD_square_diff_DEloop[$i]=$(echo "${RMSD_diff_DEloop[$i]}^2" | bc -l)
#RMSD_sum_square_diff_DEloop=$(echo "${RMSD_sum_square_diff_DEloop}+${RMSD_square_diff_DEloop[$i]}" | bc -l)

#RMSD_diff_EFloop[$i]=$(echo "${RMSD_EFloop[$i]}-$RMSD_mean_EFloop" | bc -l)
#RMSD_square_diff_EFloop[$i]=$(echo "${RMSD_diff_EFloop[$i]}^2" | bc -l)
#RMSD_sum_square_diff_EFloop=$(echo "${RMSD_sum_square_diff_EFloop}+${RMSD_square_diff_EFloop[$i]}" | bc -l)

#let i=i+1
#done


#RMSD_variance=$(echo "${RMSD_sum_square_diff}/$nconf" | bc -l)
#RMSD_std_dev=$(echo "sqrt ${RMSD_variance}" | bc -l)
#RMSD_std_error_mean=$(echo "${RMSD_std_dev}/$nconf" | bc -l) 
#echo ${RMSD_std_error_mean} >>  D76N-I2-pH7p2_chain_RMSD_mean.dat

#RMSD_variance_core=$(echo "${RMSD_sum_square_diff_core}/$nconf" | bc -l)
#RMSD_std_dev_core=$(echo "sqrt ${RMSD_variance_core}" | bc -l)
#RMSD_std_error_mean_core=$(echo "${RMSD_std_dev_core}/$nconf" | bc -l) 
#echo ${RMSD_std_error_mean_core} >> D76N-I2-pH7p2_chain_RMSD_core_mean.dat

#RMSD_variance_Cterminus=$(echo "${RMSD_sum_square_diff_Cterminus}/$nconf" | bc -l)
#RMSD_std_dev_Cterminus=$(echo "sqrt ${RMSD_variance_Cterminus}" | bc -l)
#RMSD_std_error_mean_Cterminus=$(echo "${RMSD_std_dev_Cterminus}/$nconf" | bc -l) 
#echo ${RMSD_std_error_mean_Cterminus} >>  D76N-I2-pH7p2_chain_RMSD_C-terminus_mean.dat

#RMSD_variance_Nterminus=$(echo "${RMSD_sum_square_diff_Nterminus}/$nconf" | bc -l)
#RMSD_std_dev_Nterminus=$(echo "sqrt ${RMSD_variance_Nterminus}" | bc -l)
#RMSD_std_error_mean_Nterminus=$(echo "${RMSD_std_dev_Nterminus}/$nconf" | bc -l) 
#echo ${RMSD_std_error_mean_Nterminus} >>  D76N-I2-pH7p2_chain_RMSD_N-terminus_mean.dat

#RMSD_variance_DEloop=$(echo "${RMSD_sum_square_diff_DEloop}/$nconf" | bc -l)
#RMSD_std_dev_DEloop=$(echo "sqrt ${RMSD_variance_DEloop}" | bc -l)
#RMSD_std_error_mean_DEloop=$(echo "${RMSD_std_dev_DEloop}/$nconf" | bc -l) 
#echo ${RMSD_std_error_mean_DEloop} >>  D76N-I2-pH7p2_chain_RMSD_DE-loop_mean.dat

#RMSD_variance_EFloop=$(echo "${RMSD_sum_square_diff_EFloop}/$nconf" | bc -l)
#RMSD_std_dev_EFloop=$(echo "sqrt ${RMSD_variance_EFloop}" | bc -l)
#RMSD_std_error_mean_EFloop=$(echo "${RMSD_std_dev_EFloop}/$nconf" | bc -l) 
#echo ${RMSD_std_error_mean_EFloop} >>  D76N-I2-pH7p2_chain_RMSD_EF-loop_mean.dat
