from datetime import date

dataAtual = date.today().strftime('%Y%m%d')


with open('dataAtual.txt', 'w') as arquivo:
    arquivo.write('$dataAtual=' + dataAtual + '\n' )

arquivo.close()
