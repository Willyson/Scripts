#!/bin/bash

# Parametros 

CAMINHO_PARAM_1="arquivoNomeSaida.txt"
CAMINHO_PARAM_2="arquivoNomeSaida2.txt"
ARQUIVO_PARAM="arquivoParam.txt"

SESSION_1="[SESSION2]"
SESSION_2="[SESSION3]"

NUMERO_LINHA_SESSION_1=$(grep -rin $SESSION_2 $ARQUIVO_PARAM)

echo $NUMERO_LINHA_SESSION_1


