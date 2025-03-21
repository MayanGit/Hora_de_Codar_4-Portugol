//1 ok,2 ok,3 ok,4 ok,5 ok,6 ok,7 ok,8 ok,9 ok,10 ok,11 ok,12 ok,13 ok

programa
{
	
   	real saldo = 150.00// Float
		cadeia nome
		inteiro senha = 3589

	funcao inicio() {
    
    escreva("Qual seu nome? ")
    leia(nome)
    escreva("Olá ",nome," é um prazer ter você aqui!\n")

		opcoes()
	}
  funcao opcoes(){

    inteiro opcao 
	
		escreva("Escolha uma opção:\n")
		escreva("1. Ver saldo\n")
		escreva("2. Ver extrato\n")
		escreva("3. Fazer depósito\n")
		escreva("4. Fazer saque\n")
    escreva("5. Fazer transferência\n")
		escreva("6. Sair\n")
		leia(opcao)

		escreva("A opção selecionada foi: " +opcao + "\n")

     escolha(opcao){
       caso 1:
        verSaldo()
       pare 
			 caso 2:
        verExtrato()
       pare 
       caso 3:
        fazerDeposito()
       pare 
       caso 4:
        fazerSaque()
       pare 
       caso 5:
        fazerTransferencia()
       pare 
       caso 6:
        sair()
       pare 
       caso contrario:
        erro()
     }


  }

	funcao verExtrato(){

			cadeia senha1

		escreva("Digite a senha? ")
		leia(senha1)

		enquanto(senha1!=senha){
			escreva("Senha inválida!\n")
			verExtrato()
		}
		
		escreva("Saque: R$-150,00")
		escreva("Depósito: R$2000,00")
		escreva("Saque: R$-800,00")
		escreva("Transferência: R$-500,00")
		escreva("Pix recebido: R$350,00")
		escreva("Compra: R$-60,00")
		
		opcoes()
	}

	funcao verSaldo(){
		cadeia senha1

		escreva("Digite a senha? ")
		leia(senha1)

		enquanto(senha1!=senha){
			escreva("Senha inválida!\n")
			verSaldo()
		}
	    escreva("Seu saldo atual é: ", saldo, "\n")
	    opcoes()
	}
	
	funcao fazerDeposito() {

		real deposito

		escreva("Qual o valor para depósito? ")
		leia(deposito)
		
		se (deposito <= 0){
			erro()
		} senao {
			saldo = saldo + deposito
			verSaldo()
		}
		
	}
	
	funcao fazerSaque(){
	
		real saque, resto
		cadeia senha1

		 escreva("Digite a senha? ")
		 leia(senha1)

		 enquanto(senha1!=senha){
			escreva("Senha inválida!\n")
			fazerSaque()
		}
	
		escreva("Qual o valor para saque? ")
		leia(saque)
	
		resto = saldo-saque

		se(resto>0){
			se (saque <= 0){
	        erro()
		}
 			senao {
			saldo = saldo - saque
			verSaldo()
		}
		}
		senao{
			erro()
		}
	}

  funcao fazerTransferencia(){
	
		real transferencia, resto
		cadeia senha1

		escreva("Digite a senha? ")
		leia(senha1)

		enquanto(senha1!=senha){
			escreva("Senha inválida!\n")
			fazerTransferencia()
		}
	
		escreva("Qual o valor para transferência? ")
		leia(transferencia)
	
	  resto = saldo-transferencia

		se(resto>0){
		se (transferencia <= 0){
	        erro()
		}
 	senao {
			saldo = saldo - transferencia
			verSaldo()
		}
		}
		senao{
			erro()
		}
	}

	funcao erro() {
		escreva("Operação inválida!\n")
		opcoes()
	}

	funcao sair(){
		escreva(nome,", foi um prazer ter você por aqui!")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 47; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */