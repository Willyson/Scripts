#Execuções aos sábados e no último dia do mês 

#Verifica se é um sábado de execução 

from datetime import date, timedelta
import calendar

# Função para formatar data YYYYMMDD
def formataData(data):
    return str(data.year) + adicionaZero(data.month) + adicionaZero(data.day) 

def adicionaZero(data):
    if data <= 9:
        return "0" + str(data)
    else:
        return str(data)

#Adiciona dias a uma data
def adicionaDiasData(data,dias):
    return data + timedelta(days=dias)


def escreveArquivo(texto, nomeArquivo):

    novoArquivo = open(nomeArquivo, 'w')
    novoArquivo.write(texto)

    novoArquivo.close()
    pass 


#dataAtual = date.today()
#diaSemana = (dataAtual.weekday())
#dataAtualFormatada = formataData(dataAtual) 
#ultimoDiaMes = calendar.monthrange(dataAtual.year , dataAtual.month)[1]
ParamDataInicio=""
ParamDataFim=""

#Testes
dataAtual = date(year=2019, month=11, day=2)
diaSemana = dataAtual.weekday()
ultimoDiaMes = calendar.monthrange(dataAtual.year , dataAtual.month)[1]

#Verifica se é um sábado 

if diaSemana == 5:

    if dataAtual.day <= 6:
        #Primeira semana do mês 
        ParamDataInicio = adicionaDiasData(dataAtual, -(dataAtual.day - 1) )

    else: 
        ParamDataInicio = adicionaDiasData(dataAtual, -6)
        

elif( dataAtual.day == ultimoDiaMes ): 
    
    diasVoltaDomingo = diaSemana + 1 
    ParamDataInicio = adicionaDiasData(dataAtual, -diasVoltaDomingo)

#Parametro de data fim 
ParamDataFim=dataAtual


#Extração para arquivo
texto = "$ParamDataInicio=" + formataData(ParamDataInicio) + "\n$ParamDataFim="+ formataData(ParamDataFim)
escreveArquivo(texto, "C:\\Users\\usuario.sp\\Desktop\\teste\\Python\\BIM_ATM_DATA_PERIODO_EXECUCAO.txt")

