programa {
	funcao inicio() {
		real carteiras[5] = {0.0,0.0,0.0,0.0,0.0}
		real capital = 0.0
		real porcentagem = 0.0
		real porcentagem_total= 0.0
		resumo()

		leia(porcentagem_total)
		atribuir_valores(carteiras, porcentagem)
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

	funcao real calc_porcentagem(real valor, real &carteiras[]){
		real total_invest = 0.0
		inteiro contador
		para (contador = 0; contador < 5 ; contador++){
			total_invest = total_invest + carteiras[contador]
		}
		
		retorne (valor * 100)/total_invest
	}
	
	funcao atribuir_valores(real &carteiras[], real &porcentagem){
		inteiro contador = -2
		enquanto(contador != -1){
			se(carteiras[0] == 0.0 e carteiras[1] == 0 e carteiras[2] == 0 e carteiras[3] == 0 e carteiras[4] == 0 e porcentagem <= 100.0){
				escreva("-----------------------------------------------------------\n")
				escreva("Você ainda não possui investimento em nenhuma carteira.\nvamo distribuir sua porcentagem de investimento\n")
				escreva("-----------------------------------------------------------\n")
				carteiras[0] = atribuir_CDBs(porcentagem)
				carteiras[1] = atribuir_Acoes(porcentagem)
				carteiras[2] = atribuir_Fundos_Imobiliarios(porcentagem)
				carteiras[3] = atribuir_Stocks(porcentagem) 
				carteiras[4] = atribuir_Reits(porcentagem)
				contador = -1
			}senao{
				escreva("Total de Percentual Investido: ",porcentagem,"quando este valo chegar a \n")
				escreva("-----------------------------------------------------------\n")
				escreva("quais das carteiras você deseja investir\n")
				escreva("(1) - CDBs| Objetivos pretendido(",carteiras[0],") Objetivo atual(",calc_porcentagem(carteiras[0],carteiras),"%)\n")
				escreva("(2) - Ações| Objetivos pretendido(",carteiras[1],") Objetivo atual(", calc_porcentagem(carteiras[1],carteiras),"%)\n")
				escreva("(3) - Fundos Imobiliários| Objetivos pretendido(",carteiras[2],") Objetivo atual(", calc_porcentagem(carteiras[1],carteiras),"%)\n")
				escreva("(4) - Stocks| Objetivos pretendido(",carteiras[3],") Objetivo atual(", calc_porcentagem(carteiras[3],carteiras),"%)\n")
				escreva("(5) - Reits| Objetivos pretendido(",carteiras[4],") Objetivo atual(", calc_porcentagem(carteiras[4],carteiras),"%)\n")
				escreva("(0) - SAIR|\n")
				escreva("-----------------------------------------------------------\n")
				escreva("Digite a Opção: \n")
				leia(contador)
				escolha(contador){
					caso 1:
						carteiras[0] = atribuir_CDBs(porcentagem)
						contador = -2 
					pare
					caso 2:
						carteiras[1] = atribuir_Acoes(porcentagem)
						contador = -2 
					pare
					caso 3:
						carteiras[2] = atribuir_Fundos_Imobiliarios(porcentagem)
						contador = -2 
					pare
					caso 4:
						carteiras[3] = atribuir_Stocks(porcentagem)
						contador = -2 
					pare
					caso 5:
						carteiras[4] = atribuir_Reits(porcentagem)
						contador = -2 	
					pare
					caso 0:
					contador = -1 
					pare
				}
		escreva("-----------------------------------------------------------\n")
		}
	}
}	
	funcao real atribuir_CDBs(real &porcentagem){
		real valor
		se(porcentagem >= 100.0){
			retorne 0.0
		}senao{
			escreva("-----------------------------------------------------------\n")
			escreva("Total de Percentual Investido: ",porcentagem,"\n")
			escreva("-----------------------------------------------------------\n")
			escreva("qual é a porcentagem você deseja investir na \ncarteira de CDBs\n")
			leia(valor)
			se(valor <= 0.0){
				escreva("voce não ira investir na carteira de CDBs\n")
				retorne 0.0
			}senao{
				se (valor >= 0.0 e porcentagem <= 100.01 e valor + porcentagem >= 100.01){
					escreva("voce não tem credito para investir nesta carteira\n")
	                	retorne 0.0
				}senao{
					se(valor >= 0.0 e porcentagem <= 100.01 e valor + porcentagem <= 100.01){
						porcentagem = porcentagem + valor
						retorne valor
					}
				}
			}
			retorne 0.0
		}
	}
	funcao real atribuir_Acoes(real &porcentagem){
		real valor
		se(porcentagem >= 100.0){
			retorne 0.0
		}senao{
			escreva("-----------------------------------------------------------\n")
			escreva("Total de Percentual Investido: ",porcentagem,"\n")
			escreva("-----------------------------------------------------------\n")
			escreva("qual é a porcentagem você deseja investir na \ncarteira de Açoes\n")
			leia(valor)
			se(valor <= 0.0){
				escreva("voce não ira investir na carteira de Açoes\n")
				escreva("-----------------------------------------------------------\n")
				retorne 0.0
			}senao {
				se (valor >= 0.0 e porcentagem <= 100.01 e valor + porcentagem >= 100.01){
				escreva("voce não tem credito para investir nesta carteira\n")
				escreva("-----------------------------------------------------------\n")
				retorne 0.0
				}senao{
					se(valor >= 0.0 e porcentagem <= 100.01 e valor + porcentagem <= 100.01){
						porcentagem = porcentagem + valor
						retorne valor
					}
				}
			}
		retorne 0.0
		}
	}
	funcao real atribuir_Fundos_Imobiliarios(real &porcentagem){
		real valor
		se(porcentagem >= 100.0){
			retorne 0.0
		}senao{
			escreva("-----------------------------------------------------------\n")
			escreva("Total de Percentual Investido: ",porcentagem,"\n")
			escreva("-----------------------------------------------------------\n")
			escreva("qual é a porcentagem você deseja investir na \ncarteira de Fundos Imobiliários\n")
			leia(valor)
			se(valor <= 0.0){
				escreva("voce não ira investir na carteira de \nFundos Imobiliários\n")
				escreva("-----------------------------------------------------------\n")
				retorne 0.0
			}senao {
				se (valor >= 0.0 e porcentagem <= 100.01 e valor + porcentagem >= 100.01){
					escreva("voce não tem credito para investir nesta carteira\n")
					escreva("-----------------------------------------------------------\n")
					retorne 0.0
				}senao{
					se(valor >= 0.0 e porcentagem <= 100.01 e valor + porcentagem <= 100.01){
						porcentagem = porcentagem + valor
					retorne valor
					}
				}
			}
			retorne 0.0
		}
	}
	funcao real atribuir_Stocks (real &porcentagem){
		real valor
		se(porcentagem >= 100.0){
			retorne 0.0
		}senao{
			escreva("-----------------------------------------------------------\n")
			escreva("Total de Percentual Investido: ",porcentagem,"\n")
			escreva("-----------------------------------------------------------\n")
			escreva("qual é a porcentagem você deseja investir na carteira de Stocks \n")
			leia(valor)
			se(valor <= 0.0){
				escreva("voce não ira investir na carteira de Stocks \n")
				escreva("-----------------------------------------------------------\n")
				retorne 0.0
			}senao {
				se (valor >= 0.0 e porcentagem <= 100.01 e valor + porcentagem >= 100.01){
					escreva("voce não tem credito para investir nesta carteira\n")
					escreva("-----------------------------------------------------------\n")
					retorne 0.0
				}senao{
					se(valor >= 0.0 e porcentagem <= 100.01 e valor + porcentagem <= 100.01){
						porcentagem = porcentagem + valor
						retorne valor
					}
				}
			}
			retorne 0.0
		}
	}
	funcao real atribuir_Reits (real &porcentagem){
		real valor
		se(porcentagem >= 100.0){
			retorne 0.0
		}senao{
			escreva("-----------------------------------------------------------\n")
			escreva("Total de Percentual Investido: ",porcentagem,"\n")
			escreva("-----------------------------------------------------------\n")
			escreva("qual é a porcentagem você deseja investir na carteira de Reits \n")
			leia(valor)
			se(valor <= 0.0){
				escreva("voce não ira investir na carteira de Reits \n")
				escreva("-----------------------------------------------------------\n")
				retorne 0.0
			}senao {
				se (valor >= 0.0 e porcentagem <= 100.01 e valor + porcentagem >= 100.01){
					escreva("voce não tem credito para investir nesta carteira\n")
					escreva("-----------------------------------------------------------\n")
					retorne 0.0
				}senao{
					se(valor >= 0.0 e porcentagem <= 100.01 e valor + porcentagem <= 100.01){
						porcentagem = porcentagem + valor
						retorne valor
					}
				}
			}
			retorne 0.0
		}
	}
}
