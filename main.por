programa
{
	
	
	
	funcao inicio()
	{
	    inteiro menu = -1
		real CDBs
		real Acoes
		real fundos_imobiliarios
		real stocks
		real reits
		
		real capital
		real porcent = 100.00

		resumo()
		
		escreva("Digite o capital de investimento\n")
		leia(capital)
		
		escreva("Otimo agora, vamos agora separa e em porcentagem para cara campo a ser investido\n você tem 100% para investir")
		escreva("Temos a seguintes opções CDBs, Ações, Fundos imobiliarios, Stocks, Reits\n")
		
		enquanto (menu != 0){
		
    	    escreva("Por favor digite quantos % você vai querer investir em CDB")
    	    leia(CDBs)
    	    porcent = porcent - CDBs
    	    se (porcent < 0){
    	        escreva("Você ultrapassou seu limite de investimento")
    	    }
    	    senao se (pocent == 0){
    	        escreva("Voce ultilizou todo o saldo em CDBs")
    	        Acoes = 0
    	        fundos_imobiliarios = 0
    	        stocks = 0
    	        reits = 0
    	    }
    	    senao{
                escreva("Por favor digite quantos % você vai querer investir em Açoes")
        	    leia(Acoes)
        	    porcent = porcent - Acoes
        	    se(porcent < 0){
        	            
        	        }
        	    senao se(porcent == 0){
        	        escreva("Voce ultilizou todos os saldo em CDBs e Ações")
        	        fundos_imobiliarios = 0
        	        stocks = 0
        	        reits = 0
        	        }
        	    senao{
            	    escreva("Por favor digite quantos % você vai querer investir em fundos imobiliarios")
            	    leia(fundos_imobiliarios)
            	    porcent = porcent - fundos_imobiliarios
            	    se(porcent < 0){
            	        escreva("Você ultrapassou seu limite de investimento")
            	    }senao se(porcent == 0){
                        escreva("Voce ultilizou todos os saldo em CDBs, Ações e Fundos Imobiliarios")
            	        
            	    }
            	    escreva("Por favor digite quantos % você vai querer investir em Stocks")
            	    leia(stocks)
            	    porcent = porcent - stocks
            	    escreva("Por favor digite quantos % você vai querer investir em Reits")
            	    leia(reits)
            	    porcent = porcent - reits
        	        
        	    }
        	    
    	    }
    	    
	    
		}
	    
		
	}
	
	funcao vazio resumo(){
	    
	    escreva("GuidanceInvestment\n")
		escreva("Ola você contem 100% dos seu investimentos, vamos separalos como mais se adequa a você\n")
		escreva("por exemplo você investiu R$1500, agora você escolhe a porcentagem deste dinhero e onde ele sera investido\n")
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 151; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
