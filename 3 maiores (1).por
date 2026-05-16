programa {
  inclua biblioteca Tipos -->t
  real num1, num2, num3
  cadeia entrada
  funcao inicio() {
    lerNum1()
  }
  funcao lerNum1(){
  escreva("digite o primeiro número:")
  leia(entrada)
        se(t.cadeia_e_real(entrada) ou t.cadeia_e_inteiro(entrada, 10)){
          num1 = t.cadeia_para_real(entrada)
          lerNum2()
        }senao{
          escreva("Erro: '", entrada, "' não é um número válido!")
          lerNum1()
        }
}
funcao lerNum2(){
  escreva("digite o segundo número:")
  leia(entrada)
  se(t.cadeia_e_real(entrada) ou t.cadeia_e_inteiro(entrada, 10)){
          num2 = t.cadeia_para_real(entrada)
          lerNum3()
        }senao{
          escreva("Erro: '", entrada, "' não é um número válido!")
          lerNum2()
        }
}
funcao lerNum3(){
    escreva("digite o terceiro número:")
  leia(entrada)
  se(t.cadeia_e_real(entrada) ou t.cadeia_e_inteiro(entrada, 10)){
          num3 = t.cadeia_para_real(entrada)
          maiorNumero()
        }senao{
          escreva("Erro: '", entrada, "' não é um número válido!")
          lerNum3()
        }
}
funcao maiorNumero(){
  se(num1 > num2 e num1 > num3){
    escreva("O primeiro número digitado foi ", num1, " e ele é o maior entre os três valores.")
  }se(num2 > num1 e num2 > num3){
    escreva("O segundo número digitado foi ", num2, " e ele é o maior entre os três valores.")
  }se(num3 > num1 e num3 > num2){
    escreva("O terceiro número digitado foi ", num3, " e ele é o maior entre os três valores.")
  }senao se(num1 == num2 e num1 > num3){
    escreva("O primeiro e o segundo número são iguais (", num1, ") e são maiores que o terceiro número (", num3, ").")
    
 }senao se(num1 == num3 e num1 > num2){
    escreva("O primeiro e o terceiro número são iguais (", num1, ") e são maiores que o segundo número (", num2, ").")
    
 }senao se(num2 == num3 e num2 > num1){
    escreva("O segundo e o terceiro número são iguais (", num2, ") e são maiores que o primeiro número (", num1, ").")
 }senao se(num1 == num2 e num2 == num3){
    escreva("Os três números digitados são iguais: ", num1)
 }
}
}


