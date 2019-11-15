#!/bin/bash

segunda=$(date -d '20191104')
terca=$(date -d '20191105')
quarta=$(date -d '20191106')
quinta=$(date -d '20191107')
sexta=$(date -d '20191108')
sabado=$(date -d '20191109')
domingo=$(date -d '20191110')

echo "Segunda   -> " `date -d '20191104' +%w `
echo "Terça     -> " `date -d '20191105' +%w `
echo "Quarta    -> " `date -d '20191106' +%w `
echo "Quinta    -> " `date -d '20191107' +%w `
echo "Sexta     -> " `date -d '20191108' +%w `
echo "Sabado    -> " `date -d '20191109' +%w `
echo "Domingo   -> " `date -d '20191110' +%w `
