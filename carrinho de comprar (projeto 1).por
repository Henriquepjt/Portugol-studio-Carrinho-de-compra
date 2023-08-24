/*
*    Este � um c�digo com prop�sito acad�mico, com o intuito de criarmos um carrinho de compras,
*    em que ao inicarmos o programa ser� exibido um catalogo de 4 (quatro) produtos ao usu�rio.
*    --------------------------------------------
*    C�digo         Descri��o               Pre�o
*    1              Pendrive 32GB         R$49.90
*    2              Teclado USB           R$24.90
*    3              Cartucho HP1220       R$68.90
*    4              Mouse Bluetooth      R$119.90
*    --------------------------------------------
*    Digite o c�digo do produto:
*
*
*    Em seguida o usu�rio digita o c�digo do produto desejado e a quantidade.
*    --------------------------------------------
*    C�digo         Descri��o               Pre�o
*    1              Pendrive 32GB         R$49.90
*    2              Teclado USB           R$24.90
*    3              Cartucho HP1220       R$68.90
*    4              Mouse Bluetooth      R$119.90
*    --------------------------------------------
*    Digite o c�digo do produto:
*    --------------------------------------------
*    Digite a quantidade do produto:
*    
*    Ap�s essa etapa o usu�rio v� uma mensagem informadno a quantidade e o produto que foram 
*    adicionados ao carrinho, com duas op��es de como deseja prosseguir.
*
*    --------------------------------------------
*    Voc� adicionou ao carrinho:
*    10 unidades do produto Teclado USB
*    O que deseja fazer?
*    --------------------------------------------
*    (1) Adicionar outro produto
*    (2) Ver o carrinho de compras
*
*    Caso cliente escolha a primeira op��o, ser� mostrado o catalogo e o processo ser� inicado
*    novamente. Caso o usu�rio escolha a op��o 2 (dois), ser� mostrado ao usu�rio uma tela 
*    mostrando os produtos, suas respectivas quantidades e o pre�o total de sua compra, com mais
*    3 (tr�s) op��es de como prosseguir.
*
*    --------------------------------------------
*    Seu carrinho de compras
*    Descri��o                Quantidade
*    Pendrive 32GB            2
*    Teclado USB              3
*    Valor total do carrinho:            R$174.50
*    --------------------------------------------
*    O que deseja fazer?
*    --------------------------------------------
*    (1) Adicionar outro produto
*    (2) Limpar carrinho de compras
*    (3) Sair
*
*    Caso a op��o 1 (um) seja a escolhida, o catalogo de produtos ser� mostrado ao cliente e o
*    processo de adicionar um produto ao carrinho come�a novamente. Caso a op��o 2 (dois) seja
*    escolhida, o carrinho ser� limpo e o programa come�a novamente. Caso op��o 3 (tr�s) seja
*    escolhida o programa finaliza.
*
*/
programa {
  inclua biblioteca Matematica --> m
  funcao inicio() {

    cadeia c1 = "Pendrive 32GB" , c2 = "Teclado USB", c3 = "Cartucho HP1220", c4 = "Mouse Bluetooth"
    inteiro op, op2, op3, q1 = 0, q2 = 0, q3 = 0, q4 = 0, qnt = 0
    real valor = 0
    logico i = falso
  
      enquanto(i==falso){ 

        limpa()
        qnt = 0
        op3 = 1 
        
        //=-=-Mostra a tabela de itens e pre�o para o cliente-=-=
        escreva("--------------------------------------------------\n")
        escreva(" C�digo            Descri��o             Pre�o  \n")
        escreva(" 1                 Pendrive 32GB         R$49.90\n")
        escreva(" 2                 Teclado USB           R$24.90\n")
        escreva(" 3                 Cartucho HP1220       R$68.90\n")
        escreva(" 4                 Mouse Bluetooth       R$119.90\n")
        escreva("--------------------------------------------------\n")

        escreva("Digite o c�digo do produto: ")

        leia(op)
        
        //=-=-Analiza qual produto foi escolhido-=-=
        escolha(op){

          caso 1: 
          
            escreva("--------------------------------------------------\n")
            escreva("Digite a quantidade do produto:")
            leia(qnt)
            enquanto(qnt<1){
            limpa()
            escreva("--------------------------------------------------\n")
            escreva(" C�digo            Descri��o             Pre�o  \n")
            escreva(" 1                 Pendrive 32GB         R$49.90\n")
            escreva(" 2                 Teclado USB           R$24.90\n")
            escreva(" 3                 Cartucho HP1220       R$68.90\n")
            escreva(" 4                 Mouse Bluetooth       R$119.90\n")
            escreva("--------------------------------------------------\n")

            escreva("Digite o c�digo do produto: 1 ")

            escreva("\n--------------------------------------------------\n")
            escreva("Digite a quantidade do produto:")
            leia(qnt)

            }
            q1 = q1+qnt
            valor = valor+(qnt*49.90)
            limpa()
            escreva("Voc� adicionou ao carrinho: \n",qnt," unidades do produto ",c1," o que deseja fazer? \n(1) Adicionar outro produto \n(2) Ver o carrinho de compras\n")
            leia(op2)
            enquanto(op2<1 ou op2>2){
              limpa()
              escreva("O que deseja fazer? \n(1) Adicionar outro produto \n(2) Ver o carrinho de compras\n")
              leia(op2)
            }
            se(op2==1){
              i=falso 
              pare
            }
            senao se(op2==2){
              i = verdadeiro
              pare
            }
              
          pare

          caso 2: 
          
            escreva("--------------------------------------------------\n")
            escreva("Digite a quantidade do produto:")
            leia(qnt)
            enquanto(qnt<1){
            limpa()
            escreva("--------------------------------------------------\n")
            escreva(" C�digo            Descri��o             Pre�o  \n")
            escreva(" 1                 Pendrive 32GB         R$49.90\n")
            escreva(" 2                 Teclado USB           R$24.90\n")
            escreva(" 3                 Cartucho HP1220       R$68.90\n")
            escreva(" 4                 Mouse Bluetooth       R$119.90\n")
            escreva("--------------------------------------------------\n")

            escreva("Digite o c�digo do produto: 2 ")

            escreva("\n--------------------------------------------------\n")
            escreva("Digite a quantidade do produto:")
            leia(qnt)
            }
            

            q2 = q2+qnt
            valor = valor+(qnt*24.90)
            limpa()
            escreva("Voc� adicionou ao carrinho: \n",qnt," unidades do produto ",c2," o que deseja fazer? \n(1) Adicionar outro produto \n(2) Ver o carrinho de compras\n")
            leia(op2)
            
            enquanto(op2<1 ou op2>2){
              limpa()
              escreva("O que deseja fazer? \n(1) Adicionar outro produto \n(2) Ver o carrinho de compras\n")
              leia(op2)
            }

            se(op2==1){
              i=falso 
              pare
            }
            senao se(op2==2){
              i = verdadeiro
              pare
            }
              
          pare

          caso 3: 
          
            escreva("--------------------------------------------------\n")
            escreva("Digite a quantidade do produto:")
            leia(qnt)
            enquanto(qnt<1){
            limpa()
            escreva("--------------------------------------------------\n")
            escreva(" C�digo            Descri��o             Pre�o  \n")
            escreva(" 1                 Pendrive 32GB         R$49.90\n")
            escreva(" 2                 Teclado USB           R$24.90\n")
            escreva(" 3                 Cartucho HP1220       R$68.90\n")
            escreva(" 4                 Mouse Bluetooth       R$119.90\n")
            escreva("--------------------------------------------------\n")

            escreva("Digite o c�digo do produto: 3 ")

            escreva("\n--------------------------------------------------\n")
            escreva("Digite a quantidade do produto:")
            leia(qnt)
            }  

            q3 = q3+qnt
            valor = valor+(qnt*68.90)
            limpa()
            escreva("Voc� adicionou ao carrinho: \n",qnt," unidades do produto ",c3," o que deseja fazer? \n(1) Adicionar outro produto \n(2) Ver o carrinho de compras\n")
            leia(op2)

            enquanto(op2<1 ou op2>2){
              limpa()
              escreva("O que deseja fazer? \n(1) Adicionar outro produto \n(2) Ver o carrinho de compras\n")
              leia(op2)
            }

            se(op2==1){
              i=falso 
              pare
            }
            senao se(op2==2){
              i = verdadeiro
              pare
            }
              
          pare

          caso 4:
          
            escreva("--------------------------------------------------\n")
            escreva("Digite a quantidade do produto:")
            leia(qnt)
            enquanto(qnt<1){
            limpa()
            escreva("--------------------------------------------------\n")
            escreva(" C�digo            Descri��o             Pre�o  \n")
            escreva(" 1                 Pendrive 32GB         R$49.90\n")
            escreva(" 2                 Teclado USB           R$24.90\n")
            escreva(" 3                 Cartucho HP1220       R$68.90\n")
            escreva(" 4                 Mouse Bluetooth       R$119.90\n")
            escreva("--------------------------------------------------\n")

            escreva("Digite o c�digo do produto: 4 ")

            escreva("\n--------------------------------------------------\n")
            escreva("Digite a quantidade do produto:")
            leia(qnt)
            }

            q4 = q4+qnt
            valor = valor+(qnt*119.90)
            limpa()
            escreva("Voc� adicionou ao carrinho: \n",qnt," unidades do produto ",c4," o que deseja fazer? \n(1) Adicionar outro produto \n(2) Ver o carrinho de compras\n")
            leia(op2)

            enquanto(op2<1 ou op2>2){
              limpa()
              escreva("O que deseja fazer? \n(1) Adicionar outro produto \n(2) Ver o carrinho de compras\n")
              leia(op2)
            }

            se(op2==1){
              i=falso 
              pare
            }
            senao se(op2==2){
              i = verdadeiro
              pare
            }
              
          pare

          caso contrario //=-=-Caso contrario volta pro inicio do loop-=-=
          i = falso 
          pare
        }

        limpa()

        //=-=-Carrinho de compras-=-=
        escreva("-------------------------------------------\n")
        escreva("Seu carrinho de compras\n"                    )
        escreva("\nDescri��o                        Quantidade\n")

        //-=-=Escolhe o que vai mostrar no carrinho 
        se(q1>0){
          escreva(c1,"                        ",q1"\n")
        }

        se(q2>0){
          escreva("\n",c2,"                          ",q2"\n")
        }  

        se(q3>0){
          escreva("\n",c3,"                      ",q3"\n")
        }

        se(q4>0){
          escreva("\n",c4,"                      ",q4"\n")
        }

        escreva("\n\nValor total do carrinho           R$",valor =m.arredondar(valor,2),"\n")
        escreva("-------------------------------------------\n")
        escreva("O que deseja fazer?\n")
        escreva("-------------------------------------------\n")
        escreva("(1) Adicionar outro produto\n")
        escreva("(2) Limpar carrinho de compras\n")
        escreva("(3) Sair\n")

        se(i==verdadeiro){
          leia(op3)
        }
        
        enquanto(op3<1 ou op3>3){
        leia(op3)
          escreva("O que deseja fazer?\n"                        )
          escreva("-------------------------------------------\n")
          escreva("\n"                                           )
          escreva("(1) Adicionar outro produto\n"                )
          escreva("(2) Limpar carrinho de compras\n"             )
          escreva("(3) Sair\n"                                   )
        }

        escolha(op3){

          caso 1:

            i =  falso 
          pare

          caso 2:

            op3 = 0
            q1 = 0
            q2 = 0
            q3 = 0
            q4 = 0
            valor = 0
            i = falso 
            
          pare

          caso 3:

          limpa()
          i = verdadeiro
          pare
        }
      }
  }
}
