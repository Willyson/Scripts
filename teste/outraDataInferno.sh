#!/bin/bash

#mes=`date +%m`
#ano=`date +%Y`

#ultimodia=`cal $MONTH $YEAR | grep -v '[A-Za-z]'|wc -w`
#dataUltimoDia=$ano$mes$ultimodia

#dataAtual=`date +%Y%m%d`
dataAtual='20191101'
dataEnvio=$(date +%Y%m)01




if [ "$dataAtual" == "$dataEnvio" ];then
#	cp /opt/pcenter_work/TgtFiles/pjibim/ATM/Destino.txt /isilon/sibim/BIM_DESTINO_ATM_BI.txt
#	rm /opt/pcenter_work/TgtFiles/pjibim/ATM/Destino.txt
#	exit 0
fi