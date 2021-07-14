programa {
	funcao inicio() {
	    real carteiras[5] = {0.0,0.0,0.0,0.0,0.0}
	    real porcentagem = 0.0
		resumo()
		atribuir_valores(carteiras, porcentagem)
	}
	
	funcao resumo(){
	    escreva("___________________________________________________________\n")
	    escreva("GuidanceInvestment\n")
	    escreva("-----------------------------------------------------------\n")
	    escreva("este software tem como finalidade te ajudar no controle dos\nseu investimentos em cada carteira.\n")
	    escreva("nosso software trabalha com 5 tipos de carteira dentre elas\nsão:\nCDBs\nAções\nFundos Imobiliários\nStocks\nReits\n")
	    escreva("-----------------------------------------------------------\n")
	}
	
	funcao atribuir_valores(real &carteiras[], real &porcentagem){
	    se(carteiras[0] == 0.0 e carteiras[1] == 0 e carteiras[2] == 0 e carteiras[3] == 0 e carteiras[4] == 0){
	        escreva("-----------------------------------------------------------\n")
	        escreva("Você ainda não possui investimento em nenhuma carteira.\nvamo distribuir sua porcentagem de investimento\n")
	        escreva("-----------------------------------------------------------\n")
	    }
	}
	
	funcao real atribuir_CDBs(real &porcentagem){
	    
	    escreva("qual é a porcentagem você deseja investir CDBs")
        se(valor <= 0.0){
            escreva("voce não ira investir na carteira CDBs")
            retorne 0.0
        }senao {
            se (valor > 0.0 e porcentagem < 100.0 e valor + porcentagem > 100){
                escreva("voce não tem credito para investir nesta carteira")
                retorne 0.0
            }senao{
	            se(valor > 0.0 e porcentagem < 100.0 e valor + porcentagem < 100){
                    porcentagem = porcentagem + valor
                    retorne valor
                }
            }
        }
    }
}
