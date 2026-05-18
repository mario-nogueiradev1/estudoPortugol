programa {
  inclua biblioteca Tipos -->t

  real nota1, recebeNota, notaCalculo, n, mediaFinal
  real posicao
  cadeia posicaoNota, recebeQuantidadesNotas ,nomeAluno

  funcao inicio() {
    quantasNotas()
    calcularNota()
  }
  funcao quantasNotas(){
    escreva("Digite o nome do aluno: ")
    leia(nomeAluno)
    escreva("Digite quantas notas o aluno tem: ")
    leia(recebeQuantidadesNotas)
    se(t.cadeia_e_inteiro(recebeQuantidadesNotas, 10)){
          posicao = t.cadeia_para_real(recebeQuantidadesNotas)
          escreva("a nota escrita",posicao)
          inserirNota()
        }senao{
          escreva("Erro: '", recebeQuantidadesNotas, "' não é um número válido!")
          quantasNotas()
        }
  }
  funcao inserirNota(){
    n=1
    recebeNota=0

    enquanto(n <= posicao){
    escreva("\nDigite a ",n,"ª nota \n")
    leia(nota1)

      se(nota1 <= 10 e nota1 >= 0){
      recebeNota = nota1 + recebeNota  

      nota1=0
      n=n+1
      }senao{
      escreva("esse numero é maior que 10 ou menor que zero")
      posicao +1
      }
    }
  }
  funcao calcularNota(){
    mediaFinal = recebeNota/posicao
    escreva("A média final do aluno",nomeAluno, " é: ",mediaFinal)
  }

}
