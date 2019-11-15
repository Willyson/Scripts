#!/bin/bash

# As extrações ocorrerão apenas nos finais de semana e no último dia do mês.

mes=`date +%m`
ano=`date +%Y`
ultimodia=`cal $MONTH $YEAR | grep -v '[A-Za-z]'|wc -w`
dataExecucao=$ano$mes$ultimodia



#dataAtual=`date +%Y%m%d`
dataAtual='20191130'
#dataExecucao=$(date -d "-$(date +%d) days" +%Y%m%d)
#dataDiaSemana=$(date +%w)
dataDiaSemana=$(date -d '20191130' +%w)





#if [ "$dataAtual" == "$dataExecucao" ] || [ "$dataDiaSemana" == 6 ]; then
#    exit 0
#else 
#    exit 1
#fi

echo $dataExecucao