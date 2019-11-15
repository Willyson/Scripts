#!/bin/bash

arquivo=BIM_ATM_DATA_PERIODO_EXECUCAO.txt


cont=0;

for paramData in $(cat $arquivo); 
do    
    #sed -i 's/^$ParamDataInicio=/'$paramData'/' WKF_BIM_EXTRACAO_ATM_SESSION.template.txt
    
    if [ $cont == 0 ];then
        dataInicio=$paramData
        dataInicioOld=$(sed -n '/^$ParamDataInicio=/p' WKF_BIM_EXTRACAO_ATM_SESSION.template.txt)

        sed -i 's/'$dataInicioOld'/'$dataInicio'/' WKF_BIM_EXTRACAO_ATM_SESSION.template.txt

    else 
        dataFim=$paramData
        dataFimOld=$(sed -n '/^$ParamDataFim=/p' WKF_BIM_EXTRACAO_ATM_SESSION.template.txt)

        sed -i 's/'$dataFimOld'/'$dataFim'/' WKF_BIM_EXTRACAO_ATM_SESSION.template.txt

    fi

    let cont=$cont+1;
  
done


