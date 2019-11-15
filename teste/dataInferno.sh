#!/bin/bash

diaExecucao=$(date +"%d")

diaSemanaExecucao=$(date +"%w")


#Verifica se o dia da execucao e menor igual a 6

if [ $diaExecucao -le 6 ]; then

    #Dias para o primeiro dia do mês 
    dias=$( expr $diaExecucao - 1 )

    dataInicio=$(date --date='+'$dias' day ago' +%Y%m%d)
    ParamDataFim=$(date +%Y%m%d)
    

else

    
    if [ $diaSemanaExecucao == 6 ]; then

        
        #Execução no sábado
        #Pega data do dia da execução até o domingo
        
        ParamDataInicio=$(date --date='6 day ago' +%Y%m%d)
        ParamDataFim=$(date +%Y%m%d)
        
        
    else

        #Execução no último dia do mês 
        dias=$( expr $diaSemanaExecucao / 1 )
        
        ParamDataInicio=$(date --date='+'$dias' day ago' +%Y%m%d)
        ParamDataFim=$(date +%Y%m%d)

    fi

   
fi




# Gera arquivo com datas atualizadas 
printf '$ParamDataInicio=%s\r\n' $ParamDataInicio > BIM_ATM_DATA_PERIODO_EXECUCAO.txt
printf '$ParamDataFim=%s\r\n' $ParamDataFim >> BIM_ATM_DATA_PERIODO_EXECUCAO.txt