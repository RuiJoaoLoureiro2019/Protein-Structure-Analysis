#!/bin/bash  

#ENSSTRUCTS = number of conformations in intermediate ensembles
#D76N-NAT: 1399
#D76N-I1: 514
#D76N-I2: 2496

nconf=1399
naa=99

j=0
while [ $j -le $naa ]; do 
sasa_sum[$j]=0
echo ${sasa_sum[$j]}
let j=j+1
done

i=1
while [ $i -le $nconf ]; do 
if [ $i -lt 10 ]
then
  ./naccess D76N_NAT_chain-000$i.pdb
  sed -i '/Relative accessibilites/d' D76N_NAT_chain-000$i.rsa
  sed -i '/File of summed (Sum) and % (per.) accessibilities for/d' D76N_NAT_chain-000$i.rsa
  sed -i '/NUM/d' D76N_NAT_chain-000$i.rsa
  sed -i '/ABS/d' D76N_NAT_chain-000$i.rsa
  sed -i '/END  Absolute sums over single chains surface/d' D76N_NAT_chain-000$i.rsa
  sed -i '/CHAIN/d' D76N_NAT_chain-000$i.rsa
  sed -i '/END  Absolute sums over all chains/d' D76N_NAT_chain-000$i.rsa
  sed -i '/TOTAL/d' D76N_NAT_chain-000$i.rsa
  awk '{print $5}' D76N_NAT_chain-000$i.rsa > SASA-000$i.dat
  j=0
  while [ $j -le $naa ]; do
  h=$((j + 1))
  sasa[$j]=`head -$h SASA-000$i.dat | tail -1`
  echo ${sasa[$j]}
  echo ${sasa[$j]} >> B2M_D76N_NAT_SASA-$j.dat
  sasa_sum[$j]=$(echo "${sasa_sum[$j]} + ${sasa[$j]}" | bc -l)
  echo ${sasa_sum[$j]}
  let j=j+1
  done
  rm D76N_NAT_chain-000$i.rsa
  rm D76N_NAT_chain-000$i.asa
  rm D76N_NAT_chain-000$i.log
  rm SASA-000$i.dat
elif [ $i -lt 100 ]
then
  ./naccess D76N_NAT_chain-00$i.pdb
  sed -i '/Relative accessibilites/d' D76N_NAT_chain-00$i.rsa
  sed -i '/File of summed (Sum) and % (per.) accessibilities for/d' D76N_NAT_chain-00$i.rsa
  sed -i '/NUM/d' D76N_NAT_chain-00$i.rsa
  sed -i '/ABS/d' D76N_NAT_chain-00$i.rsa
  sed -i '/END  Absolute sums over single chains surface/d' D76N_NAT_chain-00$i.rsa
  sed -i '/CHAIN/d' D76N_NAT_chain-00$i.rsa
  sed -i '/END  Absolute sums over all chains/d' D76N_NAT_chain-00$i.rsa
  sed -i '/TOTAL/d' D76N_NAT_chain-00$i.rsa
  awk '{print $5}' D76N_NAT_chain-00$i.rsa > SASA-00$i.dat
  j=0
  while [ $j -le $naa ]; do
  h=$((j + 1))
  sasa[$j]=`head -$h SASA-00$i.dat | tail -1`
  echo ${sasa[$j]}
  echo ${sasa[$j]} >> B2M_D76N_NAT_SASA-$j.dat
  sasa_sum[$j]=$(echo "${sasa_sum[$j]} + ${sasa[$j]}" | bc -l)
  echo ${sasa_sum[$j]}
  let j=j+1
  done
  rm D76N_NAT_chain-00$i.rsa
  rm D76N_NAT_chain-00$i.asa
  rm D76N_NAT_chain-00$i.log
  rm SASA-00$i.dat
elif [ $i -lt 1000 ]
then
  ./naccess D76N_NAT_chain-0$i.pdb
  sed -i '/Relative accessibilites/d' D76N_NAT_chain-0$i.rsa
  sed -i '/File of summed (Sum) and % (per.) accessibilities for/d' D76N_NAT_chain-0$i.rsa
  sed -i '/NUM/d' D76N_NAT_chain-0$i.rsa
  sed -i '/ABS/d' D76N_NAT_chain-0$i.rsa
  sed -i '/END  Absolute sums over single chains surface/d' D76N_NAT_chain-0$i.rsa
  sed -i '/CHAIN/d' D76N_NAT_chain-0$i.rsa
  sed -i '/END  Absolute sums over all chains/d' D76N_NAT_chain-0$i.rsa
  sed -i '/TOTAL/d' D76N_NAT_chain-0$i.rsa
  awk '{print $5}' D76N_NAT_chain-0$i.rsa > SASA-0$i.dat
  j=0
  while [ $j -le $naa ]; do
  h=$((j + 1))
  sasa[$j]=`head -$h SASA-0$i.dat | tail -1`
  echo ${sasa[$j]}
  echo ${sasa[$j]} >> B2M_D76N_NAT_SASA-$j.dat
  sasa_sum[$j]=$(echo "${sasa_sum[$j]} + ${sasa[$j]}" | bc -l)
  echo ${sasa_sum[$j]}
  let j=j+1
  done
  rm D76N_NAT_chain-0$i.rsa
  rm D76N_NAT_chain-0$i.asa
  rm D76N_NAT_chain-0$i.log
  rm SASA-0$i.dat
else 
  ./naccess D76N_NAT_chain-$i.pdb
  sed -i '/Relative accessibilites/d' D76N_NAT_chain-$i.rsa
  sed -i '/File of summed (Sum) and % (per.) accessibilities for/d' D76N_NAT_chain-$i.rsa
  sed -i '/NUM/d' D76N_NAT_chain-$i.rsa
  sed -i '/ABS/d' D76N_NAT_chain-$i.rsa
  sed -i '/END  Absolute sums over single chains surface/d' D76N_NAT_chain-$i.rsa
  sed -i '/CHAIN/d' D76N_NAT_chain-$i.rsa
  sed -i '/END  Absolute sums over all chains/d' D76N_NAT_chain-$i.rsa
  sed -i '/TOTAL/d' D76N_NAT_chain-$i.rsa
  awk '{print $5}' D76N_NAT_chain-$i.rsa > SASA-$i.dat
  j=0
  while [ $j -le $naa ]; do
  h=$((j + 1))
  sasa[$j]=`head -$h SASA-$i.dat | tail -1`
  echo ${sasa[$j]}
  echo ${sasa[$j]} >> B2M_D76N_NAT_SASA-$j.dat
  sasa_sum[$j]=$(echo "${sasa_sum[$j]} + ${sasa[$j]}" | bc -l)
  echo ${sasa_sum[$j]}
  let j=j+1
  done
  rm D76N_NAT_chain-$i.rsa
  rm D76N_NAT_chain-$i.asa
  rm D76N_NAT_chain-$i.log
  rm SASA-$i.dat
fi
let i=i+1
done

j=0
sasa_total=0
while [ $j -le $naa ]; do
sasa_mean[$j]=$(echo "${sasa_sum[$j]} / $nconf" | bc -l)
echo ${sasa_mean[$j]}
echo ${sasa_mean[$j]} >> B2M_D76N_NAT_SASA.dat
sasa_total=$(echo "${sasa_total} + ${sasa_mean[$j]}" | bc -l)
let j=j+1
done

echo ${sasa_total} >> B2M_D76N_NAT_SASA_total.dat
#( IFS=$'\n'; echo "${sasa_mean[*]}" > B2M_D76N_NAT_SASA.dat )
#printf "%f\n" "${sasa_mean[@]}" > B2M_D76N_NAT_SASA.dat



