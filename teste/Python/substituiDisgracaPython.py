
#arquivoData = open("C:\\Users\\usuario.sp\\Desktop\\teste\\Python\\BIM_ATM_DATA_PERIODO_EXECUCAO.txt", "r")

#linhas=[]

#for linha in arquivoData:
 #    linhas.append(linha)


#arquivoParametros = open("C:\\Users\\usuario.sp\\Desktop\\teste\\Python\\WKF_BIM_EXTRACAO_ATM_SESSION.template.txt", "r")

#for linha in arquivoParametros:
 #   if(linha[:11] == "$ParamDataI" or linha[:11] == "$ParamDataF"):
  #      print(linha)



def localizaLinha(path, procurado):
    
    arquivo = open("C:\\Users\\usuario.sp\\Desktop\\teste\\Python\\WKF_BIM_EXTRACAO_ATM_SESSION.template.txt", "r")
    sizeProcurado = len(procurado)
    linhas={}
    cont=0

    for linha in arquivo:
        if linha[:sizeProcurado] == procurado:
            
            print(linha)

        cont+=1

   
    print(linha)

    
    pass

localizaLinha("C:\\Users\\usuario.sp\\Desktop\\teste\\Python\\WKF_BIM_EXTRACAO_ATM_SESSION.template.txt", "$ParamData")


