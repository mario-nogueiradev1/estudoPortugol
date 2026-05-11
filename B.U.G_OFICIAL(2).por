programa
{
    inclua biblioteca Util-->u 
    inclua biblioteca Texto-->t
  inteiro vida = 300
  inteiro ataque = 20
  inteiro defesa = 10
  inteiro vel = 15
  logico buff = falso
  logico gift = falso
  cadeia estado = "op"

  // Variaveis inimigos
  inteiro inimigo_vida = 0 
  inteiro inimigo_ataque = 0
  inteiro inimigo_vel = 0

  // Variaveis de funcionamento do jogo
  logico malware_def = falso
  logico spyware_def = falso
  logico trojan_def = falso
  inteiro evasiva = 0
  inteiro turnos_infectado = 5
  logico rodar = verdadeiro
  inteiro pontos = 0
  inteiro tent = 0
  inteiro pontos_add = 400
  logico visitouPortal1 = falso
logico visitouPortal2 = falso
logico visitouPortal3 = falso

  funcao usarItem()
{
    mostrarInventarioBatalha()

    inteiro escolhaItem
    leia(escolhaItem)

    se (escolhaItem > 0 e escolhaItem <= qtdItens){

        cadeia item = inventario[escolhaItem - 1]

        limpa()
        escreva("Você usou: ", item, "\n")

        se (item == "Bit Sword"){
            inimigo_vida -= (ataque + 20)
            escreva("Ataque pesado! mais 20 de dano!\n")
        }
        senao se (item == "Arco e flecha"){
            inimigo_vida -= (ataque + 10)
            escreva("Ataque a distância! mais 10 dano!\n")
        }
        senao se (item == "Taser Elétrico"){
            inimigo_ataque -= 10
            escreva("Inimigo enfraquecido! ataques inimigos agora mais fracos!\n")
        }
        senao se (item == "Holly staff"){
            vida += 50
            escreva("Cura forte! mais 50 de vida!\n")
        }
                senao se (item == "Shotgun"){
            inimigo_vida -= (ataque + 30)
            escreva("ataque forte! mais 50 de dano!\n")
        }
     
           senao {
        escreva("Escolha inválida!\n")
    }
}}
funcao mostrarInventarioBatalha()
{
    escreva("\n===== ESCOLHA SUA ARMA =====\n")

    se (qtdItens == 0){
        escreva("Inventário vazio!\n")
    } senao {
        para (inteiro i = 0; i < qtdItens; i++){
            escreva(i+1, " - ", inventario[i], "\n")
        }
    }

    escreva("\nEscolha o item: ")
}
    funcao inicio()
    {

        inteiro pontuacao=0

        escreverDigitando("                                     🎮 Biblioteca do SENAC                                    ")
        escreverDigitando("                                        Novembro de 2026                                        ")

        u.aguarde(3000)
        limpa()
escreva("                              ___________________________\n")
escreva("                              |   ___        ___        |\n")
escreva("                              |  |___|      |___|       |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              |______      ________     |\n")
escreva("                              |  |   |    |   |   |     |\n")
escreva("                              |__|___| [] |___|___|     |\n")
escreva("                              ~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
escreva("                              ___________________________\n")
escreva("                              |_________________________|\n")       

u.aguarde(3000)
limpa()


escreva("                              ___________________________\n")
escreva("                              |   ___        ___        |\n")
escreva("                              |  |___|      |___|       |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva(" Lucas: Cara…                 |_________________________|\n")
escreva("  isso não tá rodando!        | [=] [=] [=] [=] [=]     |\n")
escreva("   Eu segui exatamente        |_________________________|\n")
escreva(" o que o professor falou!     | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              |______      ________     |\n")
escreva("                              |  |   |    |   |   |     |\n")
escreva("                              |__|___| [] |___|___|     |\n")
escreva("                              ~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
escreva("                              ___________________________\n")
escreva("                              |_________________________|\n")

        u.aguarde(3000)
        limpa()

escreva("                              ___________________________\n")
escreva("                              |   ___        ___        |\n")
escreva("                              |  |___|      |___|       |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva(" Lucas: Cara…                 |_________________________|\n")
escreva("  isso não tá rodando!        | [=] [=] [=] [=] [=]     |\n")
escreva("   Eu segui exatamente        |_________________________|\n")
escreva(" o que o professor falou!     | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva(" Marcos: Eu acho que          |______      ________     |\n")
escreva("  o erro tá no banco…         |  |   |    |   |   |     |\n")
escreva("    ou no código… ou…         |__|___| [] |___|___|     |\n")
escreva("        em tudo 😐            ~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
escreva("                              ___________________________\n")
escreva("                              |_________________________|\n")
        u.aguarde(3000)
        limpa()
escreva("                              ___________________________\n")
escreva("                              |   ___        ___        |\n")
escreva("                              |  |___|      |___|       |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva("                              | [=] [=] [=] [=] [=]     |\n")
escreva(" Lucas: Cara…                 |_________________________|   Lucas: A entrega é HOJE!\n")
escreva("  isso não tá rodando!        | [=] [=] [=] [=] [=]     |      Se isso não funcionar,\n")
escreva("   Eu segui exatamente        |_________________________|        a gente tá ferrado!\n")
escreva(" o que o professor falou!     | [=] [=] [=] [=] [=]     |\n")
escreva("                              |_________________________|\n")
escreva(" Marcos: Eu acho que          |______      ________     |\n")
escreva("  o erro tá no banco…         |  |   |    |   |   |     |\n")
escreva("    ou no código… ou…         |__|___| [] |___|___|     |\n")
escreva("        em tudo 😐            ~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
escreva("                              ___________________________\n")
escreva("                              |_________________________|\n")

       escreva("Pressione ENTER para continuar...")
        continuar()

  inteiro contadorTela
  contadorTela = 0
enquanto (contadorTela < 4){
escreva("   ____________________________________________\n")
escreva("  |                                            |\n")
escreva("  |   _________________________________        |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |_________________________________|       |\n")
escreva("  |____________________________________________|\n")
escreva("            |                      |\n")
escreva("            |        ______        |\n")
escreva("            |_______|______|_______|\n")
        u.aguarde(1000)
        limpa()
escreva("   ____________________________________________\n")
escreva("  |                                            |\n")
escreva("  |   _________________________________        |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |    ███████ ███████ ███████ ███████      |\n")
escreva("  |  |    █       █     █ █     █ █     █      |\n")
escreva("  |  |    █████   ███████ ███████ █     █      |\n")
escreva("  |  |    █       █   █   █   █   █     █      |\n")
escreva("  |  |    ███████ █    █  █    █  ███████      |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |_________________________________|       |\n")
escreva("  |____________________________________________|\n")
escreva("            |                      |\n")
escreva("            |        ______        |\n")
escreva("            |_______|______|_______|\n")
        u.aguarde(1000)
        limpa()
contadorTela = (contadorTela+1)
}
  contadorTela = 0
enquanto (contadorTela < 4){
escreva("   ____________________________________________\n")
escreva("  |                                            |\n")
escreva("  |   _________________________________        |\n")
escreva("  |  |                                 |       |    Marcos: Olha isso! Mais erro! \n")
escreva("  |  |                                 |       |    Como que aumenta o erro quando a \n")
escreva("  |  |                                 |       |    gente tenta consertar?!\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |_________________________________|       |\n")
escreva("  |____________________________________________|\n")
escreva("            |                      |\n")
escreva("            |        ______        |\n")
escreva("            |_______|______|_______|\n")
        u.aguarde(1000)
        limpa()
escreva("   ____________________________________________\n")
escreva("  |                                            |\n")
escreva("  |   _________________________________        |\n")
escreva("  |  |                                 |       |    Marcos: Olha isso! Mais erro! \n")
escreva("  |  |    ███████ ███████ ███████ ███████      |    Como que aumenta o erro quando a \n")
escreva("  |  |    █       █     █ █     █ █     █      |    gente tenta consertar?!\n")
escreva("  |  |    █████   ███████ ███████ █     █      |\n")
escreva("  |  |    █       █   █   █   █   █     █      |\n")
escreva("  |  |    ███████ █    █  █    █  ███████      |\n")
escreva("  |  |                                 |       |\n")
escreva("  |  |_________________________________|       |\n")
escreva("  |____________________________________________|\n")
escreva("            |                      |\n")
escreva("            |        ______        |\n")
escreva("            |_______|______|_______|\n")
        u.aguarde(1000)
        limpa()

        escreva("\n")
contadorTela = (contadorTela+1)
}
        continuar()

escreva("         _________________________                     ____________________\n")
escreva("        |  _____________________  |                    |                  |\n")
escreva("        | |   _  _    _    _    | |                    |       DONEDA     |\n")
escreva("        | |  |_ |_|  | |  | |   | |     Vocês estão tentando    ⭐        |\n")
escreva("        | |  |_ |  | |  | |_|   | |       resolver tudo ao     &&&&&      |\n")
escreva("        | |_____________________| |        mesmo tempo… esse  | o o |     |\n")
escreva("        |_________________________|          é o problema     |  ^  |     |\n")
escreva("         _________|___|_____________                   |      | |-| |     |\n")
escreva("        |  [=][=][=][=][=][=][=]  |                    |      |_____|     |\n")
escreva("        | [=][=][=][=][=][=][=]   |                    |        | |       |\n")
escreva("        |_________________________|                    |      __| |__     |\n")
escreva(" |_____________________________________________|       |     |  | |  |    |\n")
escreva(" |_____________________________________________|       |     |  | |  |    |\n")
escreva("    | |                                   | |          |        | |       |\n")
escreva("    | |                                   | |          |        | |       |\n")
escreva("    | |                                   | |          |       /   \\      |\n")
escreva("    | |                                   | |          |      /     \\     |\n")
escreva("  __| |__                               __| |__        |                  |\n")
escreva(" |_______|                             |_______|       |                  |\n")
        u.aguarde(3500)
        limpa()

escreva("  lucas                marcos\n")
escreva(" {=====} Doneda!        _______  \n")
escreva(" | o o | Ainda bem que  | o o |  \n")
escreva(" |  ^  | você chegou!   |  () |  \n")
escreva(" | --- | Salva a gente! | === |  \n")
escreva(" |_____|    ---------   |_____|  \n")
escreva("   | |     |         |    | |    \n")
escreva(" __| |__   |         |  __| |__  \n")
escreva("|  | |  |  |_________| |  | |  | \n")
escreva("|  | |__|______|__|____|__| |  | \n")
escreva("   | |                    | |    \n")
escreva("  /   \\                  /   \\  \n")
escreva(" /_____\\                /_____\\  \n")
        u.aguarde(3500)
        limpa()
escreva("  lucas                marcos\n")
escreva(" {=====}                _______  \n")
escreva(" | o o |                | o o | Sério… virou um caos.\n")
escreva(" |  ^  |                |  () |  Nada funciona.   \n")
escreva(" | --- |                | === |  \n")
escreva(" |_____|    ---------   |_____|  \n")
escreva("   | |     |         |    | |    \n")
escreva(" __| |__   |         |  __| |__  \n")
escreva("|  | |  |  |_________| |  | |  | \n")
escreva("|  | |__|______|__|____|__| |  | \n")
escreva("   | |                    | |    \n")
escreva("  /   \\                  /   \\  \n")
escreva(" /_____\\                /____ \\  \n")
        u.aguarde(3500)
        limpa()

escreva("  ___________________________________________ \n")
escreva(" |                                           |\n")
escreva(" |    int main() {                           |\n")
escreva(" |                                           |\n")
escreva(" |                                           |\n")
escreva(" |                                           |\n")
escreva(" |                                           |\n")
escreva(" |   {=====}          &&&&&       _______    |\n")
escreva(" |   |     |        |      |      |     |    |\n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("     |     |        |      |      |     |  \n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("    __|__|___       __|__|___     __|__|___  \n")
escreva("    |________|     |________|    |________| \n")
escreva("    |        |     |        |    |        |\n")
escreva("    |________|     |________|    |________|\n")
escreva("       | |            | |            | |    \n")
escreva("      /   \\          /   \\          /   \\ \n")
escreva("     ||   ||        ||   ||        ||   ||  \n")

        u.aguarde(3500)
        limpa()

escreva("  ___________________________________________ \n")
escreva(" |                                           |\n")
escreva(" |    int main() {                           |\n")
escreva(" |      while(system_online) {               |\n")
escreva(" |                                           |\n")
escreva(" |                                           |\n")
escreva(" |                                           |\n")
escreva(" |   {=====}          &&&&&       _______    |\n")
escreva(" |   |     |        |      |      |     |    |\n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("     |     |        |      |      |     |  \n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("    __|__|___       __|__|___     __|__|___  \n")
escreva("    |________|     |________|    |________| \n")
escreva("    |        |     |        |    |        |\n")
escreva("    |________|     |________|    |________|\n")
escreva("       | |            | |            | |    \n")
escreva("      /   \\          /   \\          /   \\ \n")
escreva("     ||   ||        ||   ||        ||   ||  \n")

        u.aguarde(3500)
        limpa()

escreva("  ___________________________________________ \n")
escreva(" |                                           |\n")
escreva(" |    int main() {                           |\n")
escreva(" |      while(system_online) {               |\n")
escreva(" |        if(error_detected) {               |\n")
escreva(" |                                           |\n")
escreva(" | Lucas:ta funcionando?                     |\n")
escreva(" |   {=====}          &&&&&       _______    |\n")
escreva(" |   |     |        |      |      |     |    |\n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("     |     |        |      |      |     |  \n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("    __|__|___       __|__|___     __|__|___  \n")
escreva("    |________|     |________|    |________| \n")
escreva("    |        |     |        |    |        |\n")
escreva("    |________|     |________|    |________|\n")
escreva("       | |            | |            | |    \n")
escreva("      /   \\          /   \\          /   \\ \n")
escreva("     ||   ||        ||   ||        ||   ||  \n")

        u.aguarde(3500)
        limpa()
escreva("  ___________________________________________ \n")
escreva(" |       ____     ____       ____     _____  |\n")
escreva(" |      |        |    |     |    |    |    | |\n")
escreva(" |      |____    |    |     |    |    |    | |\n")
escreva(" |      |        |    \\    |    \\   |    | |\n")
escreva(" |      |_____   |     \\   |     \\  |____| |\n")
escreva(" |                                Marco:parece que piorou\n")
escreva(" |   {=====}          &&&&&       _______    |\n")
escreva(" |   |     |        |      |      |     |    |\n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("     |     |        |      |      |     |  \n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("    __|__|___       __|__|___     __|__|___  \n")
escreva("    |________|     |________|    |________| \n")
escreva("    |        |     |        |    |        |\n")
escreva("    |________|     |________|    |________|\n")
escreva("       | |            | |            | |    \n")
escreva("      /   \\          /   \\          /   \\ \n")
escreva("     ||   ||        ||   ||        ||   ||  \n")
        u.aguarde(3500)
        limpa()
escreva("  ___________________________________________ \n")
escreva(" |       ____     ____       ____     _____  |\n")
escreva(" |      |        |    |     |    |    |    | |\n")
escreva(" |      |____    |    |     |    |    |    | |\n")
escreva(" |      |        |    \\    |    \\   |    | |\n")
escreva(" |      |_____   |     \\   |     \\  |____| |\n")
escreva(" |                   Doneda:ótimo            |\n")
escreva(" |   {=====}          &&&&&       _______    |\n")
escreva(" |   |     |        |      |      |     |    |\n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("     |     |        |      |      |     |  \n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("    __|__|___       __|__|___     __|__|___  \n")
escreva("    |________|     |________|    |________| \n")
escreva("    |        |     |        |    |        |\n")
escreva("    |________|     |________|    |________|\n")
escreva("       | |            | |            | |    \n")
escreva("      /   \\          /   \\          /   \\ \n")
escreva("     ||   ||        ||   ||        ||   ||  \n")
        u.aguarde(3500)
        limpa()
escreva("  ___________________________________________ \n")
escreva(" |       ____     ____       ____     _____  |\n")
escreva(" |      |        |    |     |    |    |    | |\n")
escreva(" |      |____    |    |     |    |    |    | |\n")
escreva(" |      |        |     \\   |    \\   |    | |\n")
escreva(" |      |_____   |      \\  |     \\  |____| |\n")
escreva(" |  Lucas:ÓTIMO?!?!                          |\n")
escreva(" |   {=====}          &&&&&       _______    |\n")
escreva(" |   |     |        |      |      |     |    |\n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("     |     |        |      |      |     |  \n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("    __|__|___       __|__|___     __|__|___  \n")
escreva("    |________|     |________|    |________| \n")
escreva("    |        |     |        |    |        |\n")
escreva("    |________|     |________|    |________|\n")
escreva("       | |            | |            | |    \n")
escreva("      /   \\          /   \\          /   \\ \n")
escreva("     ||   ||        ||   ||        ||   ||  \n")
        u.aguarde(3500)
        limpa()
escreva("  ___________________________________________ \n")
escreva(" |       ____     ____       ____     _____  |\n")
escreva(" |      |        |    |     |    |    |    | |\n")
escreva(" |      |____    |    |     |    |    |    | |\n")
escreva(" |      |        |     \\   |    \\   |    | |\n")
escreva(" |      |_____   |      \\  |     \\  |____| |\n")
escreva(" |                   Doneda: Agora sabemos exatamente onde está o problema.                          \n")
escreva(" |   {=====}          &&&&&       _______    |\n")
escreva(" |   |     |        |      |      |     |    |\n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("     |     |        |      |      |     |  \n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("    __|__|___       __|__|___     __|__|___  \n")
escreva("    |________|     |________|    |________| \n")
escreva("    |        |     |        |    |        |\n")
escreva("    |________|     |________|    |________|\n")
escreva("       | |            | |            | |    \n")
escreva("      /   \\          /   \\          /   \\ \n")
escreva("     ||   ||        ||   ||        ||   ||  \n")
        u.aguarde(3500)
        limpa()
escreva("  ___________________________________________ \n")
escreva(" |       ____     ____       ____     _____  |\n")
escreva(" |      |        |    |     |    |    |    | |\n")
escreva(" |      |____    |    |     |    |    |    | |\n")
escreva(" |      |        |     \\   |    \\   |    | |\n")
escreva(" |      |_____   |      \\  |     \\  |____| |\n")
escreva(" |                   Doneda: Vamos tentar de novo                          \n")
escreva(" |   {=====}          &&&&&       _______    |\n")
escreva(" |   |     |        |      |      |     |    |\n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("     |     |        |      |      |     |  \n")
escreva("     |_____|        |______|      |_____|  \n")
escreva("    __|__|___       __|__|___     __|__|___  \n")
escreva("    |________|     |________|    |________| \n")
escreva("    |        |     |        |    |        |\n")
escreva("    |________|     |________|    |________|\n")
escreva("       | |            | |            | |    \n")
escreva("      /   \\          /   \\          /   \\ \n")
escreva("     ||   ||        ||   ||        ||   ||  \n")
        u.aguarde(3500)
        escreva("\n")
        continuar()

escreva("   ____________________________________________\n")
escreva("  |   ______________________________________   |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  | int main() {                         |  |    Doneda ⭐: Agora prestem atencao...\n")
escreva("  |  |     while(system_online) {           |  |\n")
escreva("  |  |        if(error_detected) {          |  |\n")
escreva("  |  |            reset_signal();           |  |\n")
escreva("  |  |            override_core();          |  |\n")
escreva("  |  |    }                                 |  |\n")
escreva("  |  | } // WARNING: UNSTABLE SYSTEM        |  |\n")
escreva("  |  |______________________________________|  |\n")
escreva("  |____________________________________________|\n")
escreva("            |                      |\n")
escreva("            |        ______        |\n")
escreva("            |_______|______|_______|\n")
        u.aguarde(3500)
        limpa()

escreva("   ____________________________________________\n")
escreva("  |   ______________________________________    |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  | int main() {                         |  |\n")
escreva("  |  |     while(system_online) {           |  |\n")
escreva("  |  |        if(error_detected) {          |  |    Doneda ⭐: Vamos analisar o problema desde a raiz.\n")
escreva("  |  |            reset_signal();           |  |\n")
escreva("  |  |            override_core();          |  |\n")
escreva("  |  |    }                                 |  |\n")
escreva("  |  | } // WARNING: UNSTABLE SYSTEM        |  |\n")
escreva("  |  |______________________________________|  |\n")
escreva("  |____________________________________________|\n")
escreva("            |                      |\n")
escreva("            |        ______        |\n")
escreva("            |_______|______|_______|\n")
        u.aguarde(3500)
        limpa()

escreva("   ____________________________________________\n")
escreva("  |   ______________________________________   |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  | int main() {                         |  |Doneda ⭐: Pessoal as linhas estao apagando do nada\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |        if(error_detected) {          |  |Lucas: Tem alguma coisa de errado \n")
escreva("  |  |            reset_signal();           |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |    }                                 |  |\n")
escreva("  |  | } // WARNING: UNSTABLE SYSTEM        |  |\n")
escreva("  |  |______________________________________|  |\n")
escreva("  |____________________________________________|\n")
escreva("            |                      |\n")
escreva("            |        ______        |\n")
escreva("            |_______|______|_______|\n")
        u.aguarde(3500)
        limpa()

escreva("   ____________________________________________\n")
escreva("  |   ______________________________________   |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |                                      |  |Doneda ⭐: Vou ver se tem algum programa atrapalhando nosso código\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |    pesquisando arquivos suspeitos    |  |\n")
escreva("  |  |                ...                   |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |______________________________________|  |\n")
escreva("  |____________________________________________|\n")
escreva("            |                      |\n")
escreva("            |        ______        |\n")
escreva("            |_______|______|_______|\n")
        u.aguarde(3500)
        limpa()
escreva("   ____________________________________________\n")
escreva("  |   ______________________________________   |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |                                      |  |Doneda ⭐: Pessoal Achei uma pasta suspeita\n")
escreva("  |  |   |---|                              |  |             ela se chama B.U.G\n")
escreva("  |  |   |---|                              |  |\n")
escreva("  |  |   B.U.G                              |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |______________________________________|  |\n")
escreva("  |____________________________________________|\n")
escreva("            |                      |\n")
escreva("            |        ______        |\n")
escreva("            |_______|______|_______|\n")
        u.aguarde(3500)
        limpa()

escreva("   ____________________________________________\n")
escreva("  |   ______________________________________   |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |                                      |  |Lucas: Abre ele e vê oque tem\n")
escreva("  |  |   |---|                              |  |\n")
escreva("  |  |   |---|                              |  |\n")
escreva("  |  |   B.U.G                              |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |______________________________________|  |\n")
escreva("  |____________________________________________|\n")
escreva("            |                      |\n")
escreva("            |        ______        |\n")
escreva("            |_______|______|_______|\n")
        u.aguarde(3500)
        limpa()
escreva("   ____________________________________________\n")
escreva("  |   ______________________________________   |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |   |---|                              |  |Lucas: Abre ele e vê oque tem\n")
escreva("  |  |   |---|                              |  |\n")
escreva("  |  |   B.U.G                              |  |Marco: Não, não, deleta ela!\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |                                      |  |\n")
escreva("  |  |______________________________________|  |\n")
escreva("  |____________________________________________|\n")
escreva("            |                      |\n")
escreva("            |        ______        |\n")
escreva("            |_______|______|_______|\n")
        u.aguarde(3500)
        limpa()

        escreverDigitando("Doneda abre o explorador de arquivo")
        escreverDigitando("Ele percebe que tem uma pasta chamada 'B.U.G'!")
        escreverDigitando("Oque voce deseja fazer:")
        escreverDigitando("1: Abrir a pasta")
        escreverDigitando("2: Excluir a pasta")
        escreva("\nEscolha: ")
        

        inteiro pasta
        leia(pasta)
        
        se(pasta==1){
          escreva("\n")
          escreverDigitando("Doneda decide abrir a pasta suspeita e imediatamente uma imagem desconhecida cobre a tela, algo invadiu o PC..")
          
          pontuacao = (pontuacao + 15)

        }
        senao{
          escreva("\n")
          escreverDigitando("Doneda tenta excluir a pasta")
          escreverDigitando("uma...duas...três vezes, mas a pasta simplesmente não apaga") 
          escreverDigitando("Derrepente uma imagem desconhecida cobre a tela, algo invadiu o PC..")
          pontuacao = (pontuacao + 5)
        }

        continuar()

          contadorTela=0
          enquanto(contadorTela < 4){
          escreva("   ____________________________________________\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |                 bug                 |  |\n")
          escreva("  |  |             ___________             |  |\n")
          escreva("  |  |            |           |            |  |\n")
          escreva("  |  |            |(0)     (0)|            |  |\n")
          escreva("  |  |            |___      __|            |  |\n")
          escreva("  |  |                |____|               |  |\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |_____________________________________|  |\n")
          escreva("  |___________________________________________|\n")
          escreva("            |                      |\n")
          escreva("            |        ______        |\n")
          escreva("            |_______|______|_______|\n")
                  u.aguarde(1000)
                  limpa()

          escreva("   ____________________________________________\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |_____________________________________|  |\n")
          escreva("  |___________________________________________|\n")
          escreva("            |                      |\n")
          escreva("            |                      |\n")
          escreva("            |_______|______|_______|\n")
                  u.aguarde(1000)
                  limpa()
                  contadorTela = contadorTela+1
          }
          contadorTela=0
          enquanto(contadorTela < 8){
          escreva("   ____________________________________________\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |                 bug                 |  |Doneda ⭐: Tem algo errado aqui...😨\n")
          escreva("  |  |             ___________             |  |\n")
          escreva("  |  |            |           |            |  |\n")
          escreva("  |  |            |(0)     (0)|            |  |\n")
          escreva("  |  |            |___      __|            |  |\n")
          escreva("  |  |                |____|               |  |\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |_____________________________________|  |\n")
          escreva("  |___________________________________________|\n")
          escreva("            |                      |\n")
          escreva("            |        ______        |\n")
          escreva("            |_______|______|_______|\n")
                  u.aguarde(500)
                  limpa()

          escreva("   ____________________________________________\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |Doneda ⭐: Tem algo errado aqui...😨\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |_____________________________________|  |\n")
          escreva("  |___________________________________________|\n")
          escreva("            |                      |\n")
          escreva("            |        ______        |\n")
          escreva("            |_______|______|_______|\n")
                  u.aguarde(500)
                  limpa()
                  contadorTela = contadorTela+1
          }
          contadorTela=0
          enquanto(contadorTela < 16){
          escreva("   ____________________________________________\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |                 bug                 |  |Doneda ⭐: Isso nao e um erro comum.😨\n")
          escreva("  |  |             ___________             |  |\n")
          escreva("  |  |            |           |            |  |\n")
          escreva("  |  |            |(0)     (0)|            |  |\n")
          escreva("  |  |            |___      __|            |  |\n")
          escreva("  |  |                |____|               |  |\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |_____________________________________|  |\n")
          escreva("  |___________________________________________|\n")
          escreva("            |                      |\n")
          escreva("            |        ______        |\n")
          escreva("            |_______|______|_______|\n")
                  u.aguarde(250)
                  limpa()

          escreva("   ____________________________________________\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |Doneda ⭐: Isso nao e um erro comum.😨\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |_____________________________________|  |\n")
          escreva("  |___________________________________________|\n")
          escreva("            |                      |\n")
          escreva("            |        ______        |\n")
          escreva("            |_______|______|_______|\n")
                  u.aguarde(250)
                  limpa()
                  contadorTela = contadorTela+1
          }
          contadorTela=0
          enquanto(contadorTela < 32){
          escreva("   ____________________________________________\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |                 bug                 |  |Lucas: EI— O QUE TA ACONTECENDO?! 😱\n")
          escreva("  |  |             ___________             |  |\n")
          escreva("  |  |            |           |            |  |\n")
          escreva("  |  |            |(0)     (0)|            |  |\n")
          escreva("  |  |            |___      __|            |  |\n")
          escreva("  |  |                |____|               |  |\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |_____________________________________|  |\n")
          escreva("  |___________________________________________|\n")
          escreva("            |                      |\n")
          escreva("            |        ______        |\n")
          escreva("            |_______|______|_______|\n")
                  u.aguarde(125)
                  limpa()

          escreva("   ____________________________________________\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |Lucas: EI— O QUE TA ACONTECENDO?! 😱\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |_____________________________________|  |\n")
          escreva("  |___________________________________________|\n")
          escreva("            |                      |\n")
          escreva("            |        ______        |\n")
          escreva("            |_______|______|_______|\n")
                  u.aguarde(125)
                  limpa()
                  contadorTela = contadorTela+1
          }
          contadorTela=0
          enquanto(contadorTela < 64){
          escreva("   ____________________________________________\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |                 bug                 |  |Marcos: O doneda estar sendo puxado pelo pc!!! 😱\n")
          escreva("  |  |             ___________             |  |\n")
          escreva("  |  |            |           |            |  |\n")
          escreva("  |  |            |(0)     (0)|            |  |\n")
          escreva("  |  |            |___      __|            |  |\n")
          escreva("  |  |                |____|               |  |\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |_____________________________________|  |\n")
          escreva("  |___________________________________________|\n")
          escreva("            |                      |\n")
          escreva("            |        ______        |\n")
          escreva("            |_______|______|_______|\n")
                  u.aguarde(75)
                  limpa()

          escreva("   ____________________________________________\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |Marcos: O doneda estar sendo puxado pelo pc!!! 😱\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |_____________________________________|  |\n")
          escreva("  |___________________________________________|\n")
          escreva("            |                      |\n")
          escreva("            |        ______        |\n")
          escreva("            |_______|______|_______|\n")
                  u.aguarde(75)
                  limpa()
                  contadorTela = contadorTela+1
          }
          contadorTela=0
          enquanto(contadorTela < 80){
          escreva("   ____________________________________________\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |                 bug                 |  |Doneda ⭐: Pessoal me segurem😨\n")
          escreva("  |  |             ___________             |  |\n")
          escreva("  |  |            |           |            |  |\n")
          escreva("  |  |            |(0)     (0)|            |  |\n")
          escreva("  |  |            |___      __|            |  |\n")
          escreva("  |  |                |____|               |  |\n")
          escreva("  |  |                                     |  |\n")
          escreva("  |  |_____________________________________|  |\n")
          escreva("  |___________________________________________|\n")
          escreva("            |                      |\n")
          escreva("            |        ______        |\n")
          escreva("            |_______|______|_______|\n")
                  u.aguarde(36)
                  limpa()

          escreva("   ____________________________________________\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |Doneda ⭐: Pessoal me segurem😨\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |█████████████████████████████████████|  |\n")
          escreva("  |  |_____________________________________|  |\n")
          escreva("  |___________________________________________|\n")
          escreva("            |                      |\n")
          escreva("            |        ______        |\n")
          escreva("            |_______|______|_______|\n")
                  u.aguarde(36)
                  limpa()
                  contadorTela = contadorTela+1
          }
          u.aguarde(6000)

          escreva("███████╗███████╗███╗   ██╗ █████╗  ██████╗     ███████╗███████╗██████╗ ██████╗  ██████╗ ███████╗ ██████╗\n")
          escreva("██╔════╝██╔════╝████╗  ██║██╔══██╗██╔════╝     ██╔════╝██╔════╝██╔══██╗██╔══██╗██╔═══██╗██╔════╝██╔════╝\n")
          escreva("███████╗█████╗  ██╔██╗ ██║███████║██║          ███████╗█████╗  ██████╔╝██████╔╝██║   ██║███████╗██║     \n")
          escreva("╚════██║██╔══╝  ██║╚██╗██║██╔══██║██║          ╚════██║██╔══╝  ██╔═══╝ ██╔══██╗██║   ██║╚════██║██║     \n")
          escreva("███████║███████╗██║ ╚████║██║  ██║╚██████╗     ███████║███████╗██║     ██║  ██║╚██████╔╝███████║╚██████╗\n")
          escreva("╚══════╝╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝     ╚══════╝╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚══════╝ ╚═════╝\n")

          u.aguarde(2000)
          limpa()

          escreva("███████╗██╗   ██╗████████╗███████╗████████╗ █████╗  ██████╗██╗  ██╗     ██████╗  █████╗ ███╗   ███╗███████╗███████╗\n")
          escreva("██╔════╝██║   ██║╚══██╔══╝██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝    ██╔════╝ ██╔══██╗████╗ ████║██╔════╝██╔════╝\n")
          escreva("█████╗  ██║   ██║   ██║   ███████╗   ██║   ███████║██║     █████╔╝     ██║  ███╗███████║██╔████╔██║█████╗  ███████╗\n")
          escreva("██╔══╝  ██║   ██║   ██║   ╚════██║   ██║   ██╔══██║██║     ██╔═██╗     ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝  ╚════██║\n")
          escreva("██║     ╚██████╔╝   ██║   ███████║   ██║   ██║  ██║╚██████╗██║  ██╗    ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗███████║\n")
          escreva("╚═╝      ╚═════╝    ╚═╝   ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝     ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚══════╝\n")
          escreva("\n")
          escreva("\n")

          escreva("                  █████╗ ██████╗ ██████╗ ███████╗███████╗███████╗███╗   ██╗████████╗ █████╗ \n")
          escreva("                 ██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝████╗  ██║╚══██╔══╝██╔══██╗\n")
          escreva("                 ███████║██████╔╝██████╔╝█████╗  ███████╗█████╗  ██╔██╗ ██║   ██║   ███████║\n")
          escreva("                 ██╔══██║██╔═══╝ ██╔══██╗██╔══╝  ╚════██║██╔══╝  ██║╚██╗██║   ██║   ██╔══██║\n")
          escreva("                 ██║  ██║██║     ██║  ██║███████╗███████║███████╗██║ ╚████║   ██║   ██║  ██║\n")
          escreva("                 ╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝\n")

          u.aguarde(3000)
          limpa()

          escreva("\n")
          escreva("\n")
          escreva("=============================================================================================\n\n")
          escreva("                                ██████╗     ██╗   ██╗     ██████╗                              \n")
          escreva("                                ██╔══██╗    ██║   ██║    ██╔════╝                              \n")
          escreva("                      👾       ██████╔╝    ██║   ██║    ██║  ███╗           👾                \n")
          escreva("                 👾            ██╔══██╗    ██║   ██║    ██║   ██║      👾                     \n")
          escreva("                                ██████╔╝ ██ ╚██████╔╝ ██ ╚██████╔╝                             \n")
          escreva("                                ╚═════╝      ╚═════╝      ╚═════╝                              \n")
           escreva("=============================================================================================\n\n")
          continuar()
          ambientacaoSalaPrincipal()
        }

funcao escreverDigitando(cadeia texto)
{
  inteiro tamanho = t.numero_caracteres(texto)

  para(inteiro i = 0; i < tamanho; i++)
  {
    escreva(t.obter_caracter(texto, i))
    u.aguarde(30)
  }
  escreva("\n")

}
funcao continuar() {
    cadeia enter
    escreva("\n [Pressione ENTER para continuar]")
    leia(enter)
    limpa()
}
 cadeia inventario[10]
 inteiro qtdItens = 0
funcao adicionarItem(cadeia item)
{
    se (qtdItens < 10)
    {
        inventario[qtdItens] = item
        qtdItens++

        escreva("\n>> ITEM ADICIONADO: ", item, " <<\n")
    }
    senao
    {
        escreva("\nInventário cheio!\n")
    }
}
funcao mostrarInventario()
{
    escreva("\n========== INVENTÁRIO ==========\n")

    se (qtdItens == 0)
    {
        escreva("Inventário vazio.\n")
    }
    senao
    {
        para (inteiro i = 0; i < qtdItens; i++)
        {
            escreva(i+1, " - ", inventario[i], "\n")
        }
    }

    escreva("================================\n")

    cadeia pausa
    escreva("Pressione ENTER para voltar...")
    leia(pausa)
    limpa()
    portais()
}

funcao portais()
  {
    inteiro opcao

    enquanto(verdadeiro)
    {
    escreva("                                                                                 .                    \n")
    escreva("                    ::+#-                         : -=**-**=:                         :*+#@@*:.                  \n")
    escreva("             .#+ -*%@#%@@%:                    .:++#@%%*-#@@%+#-.                 .+%@@@%%@@@@#+ .            \n")
    escreva("             #@@%@*-...:+%%=+#-               .+#%%@#-.   .=%@%@#-.             .=.%@@%+:...-*@@@+.=           \n")
    escreva("            =*@@#-:=++++::+@@@%.             =#@%@%= .:---: .+#%@@*.            *#@%*:-+*+*=:-#@@%=           \n")
    escreva("           :@*@*:-*%%%@%#=:=%@*.             *%#@%: :+##*#*=: =@@##-          -:=@%=:+##%#%#*=:*@%-=.         \n")
    escreva("           %@@#.:+%%@@@%**-.+%@#           .+@@@= .+##%%#*+=. +@@%*            =@@@* =##%@%%##*:.#@@%          \n")
    escreva("          -@@%*.-+#%%%%*=+-.-%@%:          *#%@%: .=+###*==-. =@@%*:          =@@%=.+*##%##*#*- *%@@:         \n")
    escreva("         .@%@%=::=****+==-:::##@*          :*@@#. .=++++===-. :#@@=.         ==@@#-.=*####***+-.=%@#+.        \n")
    escreva("          *@@#+.::-=-:.:-::.:*@@:          -#@@#: .:---:---:. :%@%#+         +@@@%-.-+++=-=++=: =%@@@:        \n")
    escreva("          +%##=:.:...  ..::.=*%%#%         :*@@%=. .....::..  +%@@*=        ++@@@%*..:-::.:::: .*%@@%+=       \n")
    escreva("        -#*#@#*-....:::.....=***@@:       :+%@%%-.     ...    .:#@%%=-       #@@@@#*:   .:..    :+#@@@@=       \n")
    escreva("        :@@%*#*+-.        .-+=%@@@:      .#%%@#%@*.          =%@#@%%#       :*@@@%*+=:         :=+*%@@@+:      \n")
    escreva("       =#@@@@%*+-:-..   .:--=-+%%@@#* =@@@%#*=%#-.      . : #%==*#@@@-     .%@@##**-==-:    .:-=-:+###@@#.     \n")
    escreva("       =%@@@@@%%#*=+===--=+#%@@@@@@#-   :*@@@@@%%#+=-:::.:--=*%@@@@@@*:   -*%@%*@@@@#+++=====+#@@@%*%@%*-     \n")
    escreva("         .:-==+++*#%###%##+*+==--:.        .::===+***+==+*#**+----:.         .:-=+=+###%####%##*===--.        \n")
    escreva("                                                                                                              \n")

    escreva("O que deseja fazer?\n")
        escreva("1 - Entrar no Portal 1\n")
        escreva("2 - Entrar no Portal 2\n")
        escreva("3 - Entrar no Portal 3\n")
        escreva("4 - Abrir Inventário\n")
        
        escreva("\nEscolha: ")

        leia(opcao)
        limpa()

        escolha (opcao)
        {
            caso 1:
            se (visitouPortal1 == verdadeiro)
    {
        escreva("Você já explorou o Portal 1. Deseja explorar novamente?")
        escreva("1 - sim, quero explorar.")
        escreva("2 - não, quero retornar.")
        inteiro resp
        leia(resp)

        se (resp == 1)
        {
            portalSenac()
        }
       
    }
                portalSenac()
                visitouPortal1=verdadeiro
              

            caso 2:
                se (temItem("Chave [1]"))
    {
      se (visitouPortal2 == verdadeiro)
    {
        escreva("Você já explorou o Portal 2. Deseja explorar novamente?")
        escreva("1 - sim, quero explorar.")
        escreva("2 - não, quero retornar.")
        inteiro resp
        leia(resp)

        se (resp == 1)
        {
            portalSenac()
        }
        
    }
        escreverDigitando("Você usa a chave encontrada e o Portal 2 se abre lentamente...\n")
        sistemaRegional()
        visitouPortal2=verdadeiro
    }
    senao
    {
        escreverDigitando("O Portal 2 está bloqueado!\n")
        escreverDigitando("retorne e descubra como desbloquear...\n")
        cadeia pausa
        escreva("Pressione ENTER para retornar...")
        leia(pausa)
        limpa()
        portais()
    }
    pare
            caso 3:
               se (temDoisItens("Chave [1]", "Chave [2]"))
    {
        escreverDigitando("As duas chaves começam a brilhar...\n")
        escreverDigitando("O Portal 3 se abre revelando um caminho desconhecido...\n")
        sistemaNasa()
    }
    senao
    {
        escreverDigitando("O Portal 3 está selado!\n")
        escreverDigitando("São necessárias DUAS chaves para desbloquear...\n")
         cadeia pausa
        escreva("Pressione ENTER para retornar...")
        leia(pausa)
        limpa()
        portais()
    }
    pare

            caso 4:
                mostrarInventario()
                // NÃO usa pare aqui pra sair do loop

        }
    
    }
  }
  
   funcao sistemaNasa()
    {
      escreverDigitando("Você atravessa o último portal...")
      escreverDigitando("O ambiente ao seu redor começa a se distorcer.")
      escreverDigitando("Os sistemas entram em colapso, como se tudo estivesse prestes a desaparecer...\n")

      u.aguarde(1500)

      escreverDigitando("No centro da instabilidade, algo começa a se formar...")
      escreverDigitando("Uma entidade furiosa surge, composta por dados corrompidos.")
      escreverDigitando("É ele...")
      escreverDigitando("O BUG.\n")
      u.aguarde(1500)
limpa()
escreva("                                                                                                              \n")
escreva("                                                      .#                                                      \n")
escreva("                                                     +@*                                                      \n")
escreva("                              .+                   :%@@-                      -.                              \n")
escreva("                               **                 +@@@@:                    -%-                               \n")
escreva("                               :@#              .#@@@@%                   :#@-                                \n")
escreva("                                #@%.           .%@@@@@#                 .*@@=                                 \n")
escreva("                                -@@%.        :*@@@@@@@@=  -           .*@@@+   .:                             \n")
escreva("                                 #@@@-      .@@@@@@@@@@@@=    .     .+@@@@*                                   \n")
escreva("                                 -@@@#  .  *@@@@@%@@%@@@@@#=- .   :=%@@@@# .                                  \n")
escreva("                                  #@@@%:=+#@@@@@%%@@@@@@@@%@@+*. =@@@@@@%:      =                             \n")
escreva("                                .::%@@@@*%@@@@@@#%@@@@@@@#%@@@@#=%@%@@@%:.                                    \n")
escreva("                                   *%@@@@@@@@@@%*#%@@@@@@#@@@@@@@%%@@@#:.                                     \n")
escreva("                                   -@@@@@@@@@@@%+*%@@@%%%%@@@@@@@@@@@%=..                                     \n")
escreva("                                 -==+@@@@@@@@@%#*#%%@%+@@@@%@@@@@@@@%%:                                       \n")
escreva("                                 :=+@@@@@@@@@%#*+*%%@%#@@@@@@@@@@@@@@+:.                                      \n")
escreva("                               -.   *@@@@@@@@@####%@@%@@@@@@@@@@@@@@*.--=+-.                                  \n")
escreva("                                    .%@@@@@@@@@%#%@@@%@%@@@@@@@@@@@@#@%#++%@+                                 \n")
escreva("                                   -.:%%@@@@@@@@#@@@@@%%@@@%@@@@@@@@@*     @@                                 \n")
escreva("                                     .-*@%%@@@@@@@@@@@@@%*=#@@@@%@@@#..   :@@                                 \n")
escreva("                                       .%@++%@@@@@@@%@%+::*@@@%@@@@@*:   .%@=                                 \n")
escreva("                                    -*#%%@@*-+%@@@@@@#=-+#@@%@@@@@*.     #@=                                  \n")
escreva("                                  -#%+:.:@@@@@@@@@@@@@@@@@##@@@@%#:.:  +#%-  .-+-                             \n")
escreva("                                 +@#.  : .=%#@@@@@@@@@@%**#@@@@@- -:.  *+*+*%@%:                              \n")
escreva("                                .@@        -%**%@@@#@*=++@@@@@@%++: :-*@@@@@@+                                \n")
escreva("                                -%#      :=#@@%+==*:==+%@@@@@@@@@@%@@@@@@@@@:                                 \n")
escreva("                                .%%  .=#@@@@@@@@%#=#*@@@@@@%@@@@@@@@@@@@@@#. .                                \n")
escreva("                                 -%=.%@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@@@@@..:=:                               \n")
escreva("                         :#+:   . +#-.%@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@-++     +-                          \n")
escreva("                          -@@@%+- +=++-%@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@@@-: .* .                           \n")
escreva("                           -@@@@@@%#*@%@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@@@@%***                              \n")
escreva("                            -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@%@@@@@%*-                           \n")
escreva("                      :.    -#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@%%%@@@@#%@@@@@@@@@@+=.                        \n")
escreva("                      =:.#=*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%##%%@@@@@@@@@@@@@  :                     \n")
escreva("                        +=-@@@@@@@@@@%@@@@##+%@@@@@@@##%@@@@@@@@@@@@@@@@@@#@*@= =. --                         \n")
escreva("                          :%@#%@**@@#@@@###*%*%@@@@@#%@@@@@@@@@@*%@#%@@%%%@@. *%-                             \n")
escreva("                              .-#*-@#@@*%*=+*@+#@@@@*%%@@%=+*=#+.-=.+%-**                                     \n")
escreva("                                   =.:##*##*#*#%*==*.==-.     .=:   :. .-:                                    \n")
escreva("                                        -.:. .::.                                                             \n")
escreva("                                                                                                              \n")
escreva("                                                                                                              \n")
      escreverDigitando("'Então foi você...'")
      escreverDigitando("'Você destruiu partes do meu sistema... causou falhas... interferiu no meu domínio.'")
      escreverDigitando("'Impressionante... para um humano.'\n")

      u.aguarde(1500)

      escreverDigitando("A entidade se aproxima lentamente...")

      escreverDigitando("'Eu deveria te eliminar agora mesmo!")
      escreverDigitando("'Mas não precisa terminar assim.'")
      escreverDigitando("'Eu posso te deixar ir.'")
      escreverDigitando("'Abrirei um portal para o seu mundo...'")
      escreverDigitando("' E em troca... você me deixa continuar, Oque acha?'\n\n")
      escreverDigitando("Um portal se abre diante de você, do outro lado é possivel ver seus amigos, desesperados tentando te encontrar")
      escreverDigitando("No entanto, caso fuja o BUG continuará com sua de maldade, derrubando e destruindo servidores do mundo todo..")
      escreverDigitando("Você tem uma decisão a fazer.")
      u.aguarde(4000)
      limpa()
      escreva("                                            .#                                                          .:-==++++==--: \n")
escreva("                                           +@*                                                     :=**+=--::::::--=+*#+=: \n")
escreva("                     .+                   :%@@-                      -.                          -+#+-.                 :=*#+: \n")
escreva("                     **                 +@@@@:                    -%-                          .=#+:     :-=+******++=-.    .=#*- \n")
escreva("                     :@#              .#@@@@%                   :#@-                          =#+.   .=+###***********##*=:    -#*: \n")
escreva("                      #@%.           .%@@@@@#                 .*@@=                         :**:   :+#**++==========+****##*-    =#+ \n")
escreva("                      -@@%.        :*@@@@@@@@=  -           .*@@@+   .:                   :#+   .+##+++++=--------:--=+****#*:   :#* \n")
escreva("                       #@@@-      .@@@@@@@@@@@@=    .     .+@@@@*                        :#+   .##++=++==--:---:::::---=++**##=   :#* \n")
escreva("                       -@@@#  .  *@@@@@%@@%@@@@@#=- .   :=%@@@@# .                      .**   :##+++===----::-::::::::::-=+***#=   -#= \n")
escreva("                        #@@@%:=+#@@@@@%%@@@@@@@@%@@+*. =@@@@@@%:                     -***##***####+--------::::::::::::::--+####****##**= \n")
escreva("                      .::%@@@@*%@@@@@@#%@@@@@@@#%@@@@#=%@%@@@%:.                     =############*=-----::-:::::::::::::===############+ \n")
escreva("                         *%@@@@@@@@@@%*#%@@@@@@#@@@@@@@%%@@@#:.                      .-*%%*==%%%#***==-::--::::::::::::::==+**%%%+==%%*-: \n")
escreva("                         -@@@@@@@@@@@%+*%@@@%%%%@@@@@@@@@@@%=..                        =%%-..#@@#**++=-:--::::::::::::::---++*@@%...%%+ \n")
escreva("                       -==+@@@@@@@@@%#*#%%@%+@@@@%@@@@@@@@%%:                          =##:  #@@***+===--:::::::::::::::-::++*@@#   %#+ \n")
escreva("                       :=+@@@@@@@@@%#*+*%%@%#@@@@@@@@@@@@@@+:.                         =##:  #@@*++=====-:::::::::::::::-:-++*@@#   %#+ \n")
escreva("                     -.   *@@@@@@@@@####%@@%@@@@@@@@@@@@@@*.--=+-.                     =##:  #@@**+======-::::::::::::::-:-++*@@#   %#+ \n")
escreva("                          .%@@@@@@@@@%#%@@@%@%@@@@@@@@@@@@#@%#++%@+                    =##:  #@@*+++=====--:::::..::::::-:-++*@@#   %#+ \n")
escreva("                         -.:%%@@@@@@@@#@@@@@%%@@@%@@@@@@@@@*     @@                    =##:  #@@*+++=====---::::.::::::::::+**@@#   %#+ \n")
escreva("                           .-*@%%@@@@@@@@@@@@@%*=#@@@@%@@@#..   :@@                    =##:  #@@*+++=-====---::::::::::::::++*@@#   %#+ \n")
escreva("                             .%@++%@@@@@@@%@%+::*@@@%@@@@@*:   .%@=                    =##:  #@@**++=-===----::::::::::::::=+*@@#   %#+ \n")
escreva("                          -*#%%@@*-+%@@@@@@#=-+#@@%@@@@@*.     #@=                     =##:  #@@***+===-------:::::::::::-:=++@@#   %#+ \n")
escreva("                        -#%+:.:@@@@@@@@@@@@@@@@@##@@@@%#:.:  +#%-  .-+-                =##:  #@@**++=---------:::::::::::--=++@@#   %#+ \n")
escreva("                       +@#.  : .=%#@@@@@@@@@@%**#@@@@@- -:.  *+*+*%@%:                 =##:  #@@**++==------:::::::::::::--=++@@#   %#+ \n")
escreva("                      .@@        -%**%@@@#@*=++@@@@@@%++: :-*@@@@@@+                   =##:  #@@*+=-==---:-::::::::::::----+++@@#   %#+ \n")
escreva("                      -%#      :=#@@%+==*:==+%@@@@@@@@@@%@@@@@@@@@:                    =##:  #@@*+---==--:-::::::::::::::--++*@@#   %#+ \n")
escreva("                      .%%  .=#@@@@@@@@%#=#*@@@@@@%@@@@@@@@@@@@@@#. .                   =##:  #@@*+=--------:::::::-::::::--++*@@#   %#+ \n")
escreva("                       -%=.%@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@@@@@..:=:                  =##:  #@@**+=-------:::::::--:::::-=++*@@#   %#+ \n")
escreva("               :#+:   . +#-.%@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@-++     +-             =##:  #@@***+=-=----::::::::-:::-:-=+**@@#   %#+ \n")
escreva("                -@@@%+- +=++-%@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@@@-: .* .              =##:  #@@***+=-=-----:::::::--::::-=++*@@#   %#+ \n")
escreva("                 -@@@@@@%#*@%@@@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@@@@%***                 =##:  #@@***+=-==----:::::::--:::::-++*@@#   %#+ \n")
escreva("                  -@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@@@%@@@@@%*-              =##:  #@@***+=--==----:::::-----:::-+++@@#   %#+ \n")
escreva("            :.    -#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%@@@%%%@@@@#%@@@@@@@@@@+=.           =##:  #@@***+++=--=-------------:::-+++@@#   %#+ \n")
escreva("            =:.#=*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%##%%@@@@@@@@@@@@@  :        =##:  #@@**+++++=-=--------------:--+++@@#   %#+ \n")
escreva("               =%@@@@@@@@@@@@@@@@@@@@%%@@@%@@@@@@@@@@@@@@%@@@@@@@@@%+#@@@*=+         ..+#%=::#%@#**++++====------======----+**%%#:::%#*.. \n")
escreva("            .+.%#@@%@@@@@@@@@@@@@%@%%@@@@@@@@%#%@@@@@@@@@@@@@@@@@@@@@@#%:.=-         =%%%%%%%%%%%%*+++++=========+++++===-=+%%%%%%%%%%%%* \n")
escreva("              +=-@@@@@@@@@@%@@@@##+%@@@@@@@##%@@@@@@@@@@@@@@@@@@#@*@= =. --        --=++++++++++++=**++++======++++++++++**=++++++++++++=-- \n")
escreva("                 :%@#%@**@@#@@@###*%*%@@@@@#%@@@@@@@@@@*%@#%@@%%%@@. *%-           .%%%%%%%%%%%%%%%%%#*++++++********++++*#%%%%%%%%%%%%%%%%%. \n")
escreva("                    .-#*-@#@@*%*=+*@+#@@@@*%%@@%=+*=#+.-=.+%-**               :---=%%%%%%%%%%%%%%%%%%####################%%%%%%%%%%%%%%%%%%=-: \n")
escreva("                         =.:##*##*#*#%*==*.==-.     .=:   :. .-:           -*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#= \n")
escreva("                             -.:. .::.                                   :#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%- \n")
escreva("                                                                           ************************************************************************** \n")


      inteiro escolhaFinal
      escreva("\nO que você vai fazer?\n")
      escreva("1 - Lutar contra o BUG\n")
      escreva("2 - Aceitar a proposta e fugir\n")
      escreva("\nEscolha: ")
      leia(escolhaFinal)
      limpa()

      se(escolhaFinal==1)
      {
         escreverDigitando("Você encara a entidade sem hesitar.\n\n")
    escreverDigitando("'Se eu te deixar, tudo isso continua.'")
    escreverDigitando("'Eu vou acabar com isso aqui.'\n")
    batalhaNormal3()
      }
      senao{
        escreverDigitando("Você hesita...\n\n")
    escreverDigitando("'eu preciso sair daqui o quanto antes!'.\n\n")

    escreverDigitando("A entidade observa em silêncio...")
    escreverDigitando("Você corre até o portal, o fim é logo ali..\n")

    escreverDigitando("'Boa escolha.'- diz BUG")

    u.aguarde(1000)

    escreverDigitando("Você atravessa o portal e retorna ao mundo real...\n")

    escreverDigitando("Marcos-DONEDA, FINALMENTE VOCÊ APARECEU!.")
    escreverDigitando("Lucas- GRAÇAS A DEUS, OQUE ACONTECEU COM VOCÊ, TA TUDO BEM?")

    escreverDigitando("Doneda-'sim.. eu acho..'\n")
    escreverDigitando("enquanto isso, você olha para a tela do computador")
    escreverDigitando("Nos sistemas... o BUG continua crescendo. Destruindo tudo.")
    escreverDigitando("Sem ninguém para pará-lo.\n")

    escreverDigitando("Ele domina tudo.")
    escreverDigitando("E sua corrupção se espalha ainda mais...\n")
    u.aguarde(4000)
limpa()
           
escreva("             ██╗   ██╗ ██████╗  ██████╗███████╗    ███████╗██╗   ██╗ ██████╗ ██╗██╗   ██╗                    \n")
escreva("             ██║   ██║██╔═══██╗██╔════╝██╔════╝    ██╔════╝██║   ██║██╔════╝ ██║██║   ██║                    \n")
escreva("             ██║   ██║██║   ██║██║     █████╗      █████╗  ██║   ██║██║  ███╗██║██║   ██║                    \n")
escreva("             ╚██╗ ██╔╝██║   ██║██║     ██╔══╝      ██╔══╝  ██║   ██║██║   ██║██║██║   ██║                    \n")
escreva("              ╚████╔╝ ╚██████╔╝╚██████╗███████╗    ██║     ╚██████╔╝╚██████╔ ██║╚██████╔╝                    \n")
escreva("               ╚═══╝   ╚═════╝  ╚═════╝╚══════╝    ╚═╝      ╚═════╝  ╚═════╝ ╚═╝ ╚═════╝     ██   ██   ██    \n")
u.aguarde(1500)
escreva("\n")
escreva("                   ███╗   ███╗ █████╗ ███████╗     ██████╗     ██████╗     ██╗   ██╗     ██████╗\n")
escreva("                   ████╗ ████║██╔══██╗██╔════╝    ██╔═══██╗    ██╔══██╗    ██║   ██║    ██╔════╝\n")
escreva("                   ██╔████╔██║███████║███████╗    ██║   ██║    ██████╔╝    ██║   ██║    ██║  ███╗\n")
escreva("                   ██║╚██╔╝██║██╔══██║╚════██║    ██║   ██║    ██╔══██╗    ██║   ██║    ██║   ██║\n")
escreva("                   ██║ ╚═╝ ██║██║  ██║███████║    ╚██████╔╝    ██████╔╝ ██ ╚██████╔╝ ██ ╚██████╔╝\n")
escreva("                   ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝     ╚═════╝     ╚═════╝      ╚═════╝      ╚═════╝\n")
escreva("\n")
escreva("                          ██████╗ ██████╗ ███╗   ██╗████████╗██╗███╗   ██╗██╗   ██╗ █████╗         \n")
escreva("                         ██╔════╝██╔═══██╗████╗  ██║╚══██╔══╝██║████╗  ██║██║   ██║██╔══██╗        \n")
escreva("                         ██║     ██║   ██║██╔██╗ ██║   ██║   ██║██╔██╗ ██║██║   ██║███████║        \n")
escreva("                         ██║     ██║   ██║██║╚██╗██║   ██║   ██║██║╚██╗██║██║   ██║██╔══██║        \n")
escreva("                         ╚██████╗╚██████╔╝██║ ╚████║   ██║   ██║██║ ╚████║╚██████╔╝██║  ██║        \n")
escreva("                          ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝        \n")
u.aguarde(2000)
limpa()
escreva("                                                                                                              \n")
escreva("                     ██████╗  █████╗ ███╗   ███╗███████╗     ██████╗ ██╗   ██╗███████╗██████╗                 \n")
escreva("                    ██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔═══██╗██║   ██║██╔════╝██╔══██╗                \n")
escreva("                    ██║  ███╗███████║██╔████╔██║█████╗      ██║   ██║██║   ██║█████╗  ██████╔╝                \n")
escreva("                    ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗                \n")
escreva("                    ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ╚██████╔╝ ╚████╔╝ ███████╗██║  ██║                \n")
escreva("                     ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝                \n")
escreva("                                                                                                              \n")
u.aguarde(1500)
cadeia pausa
    escreva("\nPressione ENTER para reiniciar...")
    leia(pausa)
    limpa()

    // reseta tudo
    mortes = 0
    fezPuzzle1 = falso
    fezPuzzle2 = falso

    // volta pro início
    inicio()
      }


    }
    funcao batalhaNormal3() {
    escreverDigitando("Você lembra de tudo que enfrentou até aqui...")
    escreverDigitando("Você não veio até aqui para fugir.")
    escreverDigitando("Você parte pra cima do BUG, é agora ou nunca!")
    logico venceu = batalha_trojan() 

    // Quando a função do Bruno acabar, o código volta para cá:
    se (venceu == verdadeiro) 
    {
      vitoria3()
    } 
    senao 
    {
      derrota3()
    }
  }
funcao logico batalha_trojan(){

    inimigo_vida = 350
    inimigo_ataque = 25
    inimigo_vel = 10
    inteiro pontos_add = 400

    enquanto (vida > 0 e inimigo_vida > 0){
      limpa()
      escreva("\nDoneda: ", vida, " | Trojan: ", inimigo_vida, "\n")
      escreva("1) Atacar\n2) Defender\n3) Curar\n4) Aumentar o ataque\n5) Usar arma\n")

      se(estado == "op"){
      inteiro op
      leia(op)

        // JOGADOR
        evasiva = u.sorteia(0, 100)

        se (op == 1){
          se(evasiva >= 15){
          inimigo_vida -= ataque
          escreva("Você atacou!\n")
          estado = "inimigo"
          } senao {
          escreva("Você errou seu ataque \n")
          estado = "inimigo"
        }
        }
        
        se (op == 2){
          defesa += 5
          escreva("Você se defendeu!\n")
          estado = "inimigo"
        }

        se (op == 3){
          vida += 30
          escreva("Você se curou!\n")
          estado = "inimigo"
        }

        se (op == 4){
          ataque += 10
          escreva("Você aumentou seu Ataque\n")
          buff = verdadeiro
          estado = "inimigo"
        }
         se (op == 5){
        limpa()
        usarItem()
        estado = "inimigo"
        }

        senao{
        escreva("Inválido")
        estado = "op"
        }

        u.aguarde(1000)
        
        }

        // INIMIGO
        se(estado == "inimigo"){
        ataque_trojan()
        u.aguarde(2000)
        estado = "op"
      }
    }
      // RESULTADO
      se (vida <= 0){
      limpa()
      escreva("Você perdeu!\n")
      tent += 1
      resetar()
      u.aguarde(1000)
      retorne falso

      } senao {
        limpa()
        escreva("Você derrotou o Trojan!\n")
        malware_def = verdadeiro
        pontos_add -= 20 * tent
        se(pontos_add <= 0){
          pontos_add = 0
        }
        pontos += pontos_add
        escreva(pontos)
        resetar()
      }
      u.aguarde(1000)
      limpa()
      retorne verdadeiro
      
  }
  funcao logico batalha_trojan_hard(){

    inimigo_vida = 600
    inimigo_ataque = 40
    inimigo_vel = 15
    inteiro pontos_add = 500

    enquanto (vida > 0 e inimigo_vida > 0){

      escreva("\nDoneda: ", vida, " | Trojan HARD: ", inimigo_vida, "\n")
      escreva("1) Atacar\n2) Defender\n3) Curar\n4) Aumentar o ataque\n5) Usar arma\n")

      se(estado == "op"){

      inteiro op
      leia(op)

      evasiva = u.sorteia(0, 100)

      se (op == 1){
        se(evasiva >= 25){
          inimigo_vida -= ataque
          escreva("Você atacou")
        }
        senao {
          escreva("Você errou")
        }
      }

      se (op == 2){
        defesa += 4
        escreva("Sua defesa aumentou")
        estado = "inimigo"
      }

      se (op == 3){
        vida += 20
        escreva("Você se curou")
        estado = "inimigo"
      }

      se (op == 4){
        ataque += 8
        buff = verdadeiro
        escreva("Seu ataque aumentou")
        estado = "inimigo"
      }
      se (op == 5){
        limpa()
        usarItem()
        estado = "inimigo"
        }
      
      senao se (op != 1 ou 2 ou 3 ou 4 ou 5){
        escreva("Inválido")
        estado = "op"
        }
      }

      se (estado == "inimigo"){
        ataque_trojan_hard()
        u.aguarde(1000)
        estado = "op"
      } 
    }

    se (vida <= 0){
      escreva("Você perdeu!\n")
      retorne falso
      resetar()
    } senao {
      escreva("Você venceu!\n")
      pontos += pontos_add
      retorne verdadeiro
      resetar()
    }
}

funcao ataque_trojan_hard(){

    inteiro mov = u.sorteia(0, 100)

    se (mov <= 35 e buff == verdadeiro){ // antes 30
      vida -= inimigo_ataque * 2
      escreva("Trojan usou Punish \n")
    }
    senao se (mov <= 60 e gift != verdadeiro){ // antes 49
      turnos_infectado = 5
      gift = verdadeiro
      escreva("Trojan usou Gregorian Gift")
    }
    senao se (mov <= 90){ // antes 88
      inteiro dano = inimigo_ataque - defesa
      se (dano < 0){
        dano = 0
      }
      vida -= dano
      escreva("Trojan atacou")
    }
    senao {
      escreva("Trojan errou!\n")
    }

    se (gift == verdadeiro){
      vida -= 20 // antes 15
      turnos_infectado -= 1
      escreva("Você ainda está infectado")

      se(turnos_infectado < 0){
        escreva("Sua infecçao passou")
        gift = falso
      }
    }
}
  funcao ataque_trojan(){

    inteiro mov = u.sorteia(0, 100)

    se (mov <= 30 e buff == verdadeiro){ // antes 30
      vida -= inimigo_ataque * 2
      escreva("Trojan usou Punish \n")
      u.aguarde(2000)
      
    }
    senao se (mov <= 49){ // antes 49
      gift = verdadeiro
      escreva("Trojan usou Gregorian Gift")
      u.aguarde(2000)
      
    }
    senao se (mov <= 88){ // antes 88
      inteiro dano = inimigo_ataque - defesa
      se (dano < 0){
        dano = 0
      }
      vida -= dano
      escreva("Trojan atacou")
      u.aguarde(2000)
      
    }
    senao {
      escreva("Trojan errou!\n")
      u.aguarde(2000)
    }
    
    se (gift == verdadeiro){
      vida -= 15 // antes 15
      turnos_infectado -= 1
      escreva("Você foi infectado")

      se(turnos_infectado < 0){
        escreva("Sua infecçao passou")
        gift = falso
      }    
    }
    
}
  funcao vitoria3()
  {
    limpa()
    escreva("====================================\n")
    escreva("*             VITÓRIA              *\n")
    escreva("====================================\n")
    escreverDigitando("O BUG começa a se desfazer...")
    escreverDigitando("Os dados corrompidos desaparecem lentamente...")
    escreverDigitando("Os sistemas começam a se estabilizar.\n")
    escreverDigitando("um ultimo clarão invade sua mente..")
    u.aguarde(3000)
    limpa()
escreva("██╗  ██╗ █████╗ ██████╗ ██╗   ██╗ █████╗ ██████╗ ██████╗ \n")
escreva("██║  ██║██╔══██╗██╔══██╗██║   ██║██╔══██╗██╔══██╗██╔══██╗\n")
escreva("███████║███████║██████╔╝██║   ██║███████║██████╔╝██║  ██║\n")
escreva("██╔══██║██╔══██║██╔══██╗╚██╗ ██╔╝██╔══██║██╔══██╗██║  ██║\n")
escreva("██║  ██║██║  ██║██║  ██║ ╚████╔╝ ██║  ██║██║  ██║██████╔╝\n")
escreva("╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ \n")
u.aguarde(2000)
escreva("              ██╗  █████╗  ██╗  ██╗███████╗\n")
escreva("             ███║ ██╔══██╗ ██║  ██║╚════██║\n")
escreva("             ╚██║ ╚██████║ ███████║    ██╔╝\n")
escreva("              ██║  ╚═══██║ ╚════██║   ██╔╝ \n")
escreva("              ██║  █████╔╝      ██║  ██╔╝  \n")
escreva("              ╚═╝  ╚════╝       ╚═╝  ╚═╝   \n")
u.aguarde(4000)
limpa()

escreva("        {^^^^^^^}   Bennedit: A energia não desaparece;      \n")
escreva("        ( .___. )              ela apenas muda de forma, \n")
escreva("        |   ^   |   como quando a energia elétrica vira luz e calor.\n")
escreva("        |  ---  |        \n")
escreva("        |___VV__|        \n")
escreva("        /|     |\\       \n")
escreva("       / |     | \\      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |_____|  |      \n")
escreva("         |     |         \n")
escreva("         |     |         \n")
escreva("        /       \\        \n")
escreva("       /         \\       \n")
escreva("      /           \\      \n")
escreva("     /             \\     \n")

u.aguarde(5000)
limpa()

escreva("        {^^^^^^^}   Bennedit: Quando você empurra algo, \n")
escreva("        ( .___. )             ele reage com uma força contrária,\n")
escreva("        |   ^   |    mostrando que as forças sempre acontecem em pares.\n")
escreva("        |  ---  |        \n")
escreva("        |___VV__|        \n")
escreva("        /|     |\\       \n")
escreva("       / |     | \\      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |_____|  |      \n")
escreva("         |     |         \n")
escreva("         |     |         \n")
escreva("        /       \\        \n")
escreva("       /         \\       \n")
escreva("      /           \\      \n")
escreva("     /             \\     \n")
u.aguarde(5000)
limpa()

escreva("        {^^^^^^^}   Bennedit: Por hoje é só pessoal, até a próxima aula\n")
escreva("        ( .___. )         \n")
escreva("        |   ^   |   \n")
escreva("        |  ---  |        \n")
escreva("        |___VV__|        \n")
escreva("        /|     |\\       \n")
escreva("       / |     | \\      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |_____|  |      \n")
escreva("         |     |         \n")
escreva("         |     |         \n")
escreva("        /       \\        \n")
escreva("       /         \\       \n")
escreva("      /           \\      \n")
escreva("     /             \\     \n")

u.aguarde(5000)
limpa()

escreva("██████╗ ██╗██████╗ ██╗     ██╗ ██████╗ ████████╗███████╗ ██████╗ █████╗ \n")
escreva("██╔══██╗██║██╔══██╗██║     ██║██╔═══██╗╚══██╔══╝██╔════╝██╔════╝██╔══██╗\n")
escreva("██████╔╝██║██████╔╝██║     ██║██║   ██║   ██║   █████╗  ██║     ███████║\n")
escreva("██╔══██╗██║██╔══██╗██║     ██║██║   ██║   ██║   ██╔══╝  ██║     ██╔══██║\n")
escreva("██████╔╝██║██████╔╝███████╗██║╚██████╔╝   ██║   ███████╗╚██████╗██║  ██║\n")
escreva("╚═════╝ ╚═╝╚═════╝ ╚══════╝╚═╝ ╚═════╝    ╚═╝   ╚══════╝ ╚═════╝╚═╝  ╚═╝\n")
u.aguarde(3000)
limpa()

escreva("Bennedit: Finalmente! Depois de anos de pesquisas e frustrações ")
escreva("   _ _______        _______ _\n")
escreva("  /_/_______/\\-----/\\_______\\_\\\n")
escreva(" / /\\    _  \\ \\---/ /  _    /\\ \\\n")
escreva("/ /  \\  \\_\\  \\ \\-/ /  /_/  /  \\ \\\n")
escreva("/_/ /\\ \\_______\\/-\\/_______/ /\\ \\_\\\n")
escreva("/\\ \\ \\/ /  _    /\\-/\\   _   \\ \\/ / /\\\n")
escreva("/\\ \\ \\  /  /_/  / /-\\ \\  \\_\\  \\  / / /\\\n")
escreva("/  \\ \\_\\/_______/ /---\\ \\_______\\/_/ /  \\\n")
escreva("/ /\\ \\/\\_\\_______\\/-----\\/_______/_/\\/ /\\ \\\n")
escreva("\\ \\/ /\\/_/_______/\\-----/\\_______\\_\\/\\ \\/ /\n")
escreva(" \\  / / /\\    _  \\ \\---/ /  _    /\\ \\ \\  /\n")
escreva("  \\/ / /  \\  \\_\\  \\ \\-/ /  /_/  /  \\ \\ \\/\n")
escreva("   \\/_/ /\\ \\_______\\/-\\/_______/ /\\ \\_\\/\n")
escreva("    \\ \\ \\/ /  _    /\\-/\\   _   \\ \\/ / /\n")
escreva("     \\ \\  /  /_/  / /-\\ \\  \\_\\  \\  / /\n")
escreva("      \\_\\/_______/ /---\\ \\_______\\/_/\n")
escreva("       \\_\\_______\\/-----\\/_______/_/ LGB\n")

u.aguarde(4000)
limpa()

escreva("        {^^^^^^^}   Bennedit: Eu conseguir criar o tranferidor de mente digital\n")
escreva("        ( .___. )         \n")
escreva("        |   ^   |   \n")
escreva("        |  ---  |        \n")
escreva("        |___VV__|        \n")
escreva("        /|     |\\       \n")
escreva("       / |     | \\      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |_____|  |      \n")
escreva("         |     |         \n")
escreva("         |     |         \n")
escreva("        /       \\        \n")
escreva("       /         \\       \n")
escreva("      /           \\      \n")
escreva("     /             \\     \n")

u.aguarde(5000)
limpa()

escreva("        {^^^^^^^}   Bennedit: O problema é que só fiz a primeira máquina, do primeiro livro,\n")
escreva("        ( .___. )          eu precisaria de uma outra vida para construir a maquina do tempo\n")
escreva("        |   ^   |   \n")
escreva("        |  ---  |        \n")
escreva("        |___VV__|        \n")
escreva("        /|     |\\       \n")
escreva("       / |     | \\      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |_____|  |      \n")
escreva("         |     |         \n")
escreva("         |     |         \n")
escreva("        /       \\        \n")
escreva("       /         \\       \n")
escreva("      /           \\      \n")
escreva("     /             \\     \n")

u.aguarde(5000)
limpa()

escreva("        {^^^^^^^}   Bennedit: O que eu posso fazer é tranferir a minha mente pro computador\n")
escreva("        ( .___. )    \n")
escreva("        |   ^   |   \n")
escreva("        |  ---  |        \n")
escreva("        |___VV__|        \n")
escreva("        /|     |\\       \n")
escreva("       / |     | \\      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |_____|  |      \n")
escreva("         |     |         \n")
escreva("         |     |         \n")
escreva("        /       \\        \n")
escreva("       /         \\       \n")
escreva("      /           \\      \n")
escreva("     /             \\     \n")

u.aguarde(5000)
limpa()

escreva("                                                 .------.------.    \n")
escreva("  +-------------+                     ___        |      |      |    \n")
escreva("  |             |                     \\ /]       |      |      |    \n")
escreva("  |             |        _           _(_)        |      |      |    \n")
escreva("  |             |     ___))         [  | \\___    |      |      |    \n")
escreva("  |             |     ) //o          | |     \\   |      |      |    \n")
escreva("  |             |  _ (_    >         | |      ]  |      |      |    \n")
escreva("  |          __ | (O)  \\__<          | | ____/   '------'------'    \n")
escreva("  |         /  o| [/] /   \\)        [__|/_                          \n")
escreva("  |             | [\\]|  ( \\         __/___\\_____                    \n")
escreva("  |             | [/]|   \\ \\__  ___|            |                   \n")
escreva("  |             | [\\]|    \\___E/%%/|____________|_____              \n")
escreva("  |             | [/]|=====__   (_____________________)             \n")
escreva("  |             | [\\] \\_____ \\    |                  |              \n")
escreva("  |             | [/========\\ |   |                  |              \n")
escreva("  |             | [\\]     []| |   |                  |              \n")
escreva("  |             | [/]     []| |_  |                  |              \n")
escreva("  |             | [\\]     []|___) |                  |    MEPH      \n")
escreva("====================================================================\n")
u.aguarde(3000)
limpa()

contador=0
enquanto(contador < 25){
escreva("                                                 .------.------.    \n")
escreva("  +-------------+                     ___        |      |      |    \n")
escreva("  |             |                     \\ /]       |      |      |    \n")
escreva("  |             |        _           _(_)        |      |      |    \n")
escreva("  |             |     ___))         [  | \\___    |      |      |    \n")
escreva("  |             |     ) //o          | |     \\   |      |      |    \n")
escreva("  |             |  _ (_    >         | |      ]  |      |      |    \n")
escreva("  |          __ | (O)  \\__<          | | ____/   '------'------'    \n")
escreva("  |         /  o| [/] /   \\)        [__|/_                          \n")
escreva("  |             | [\\]|  ( \\         __/___\\_____                    \n")
escreva("  |             | [/]|   \\ \\__  ___|            |                   \n")
escreva("  |             | [\\]|    \\___E/%%/|____________|_____              \n")
escreva("  |             | [/]|=====__   (_____________________)             \n")
escreva("  |             | [\\] \\_____ \\    |                  |              \n")
escreva("  |             | [/========\\ |   |                  |              \n")
escreva("  |             | [\\]     []| |   |                  |              \n")
escreva("  |             | [/]     []| |_  |                  |              \n")
escreva("  |             | [\\]     []|___) |                  |    MEPH      \n")
escreva("====================================================================\n")
u.aguarde(100)
limpa()

escreva("Bennedit: Finalmente! Depois de anos de pesquisas e frustrações ")
escreva("   _ _______        _______ _\n")
escreva("  /_/_______/\\-----/\\_______\\_\\\n")
escreva(" / /\\    _  \\ \\---/ /  _    /\\ \\\n")
escreva("/ /  \\  \\_\\  \\ \\-/ /  /_/  /  \\ \\\n")
escreva("/_/ /\\ \\_______\\/-\\/_______/ /\\ \\_\\\n")
escreva("/\\ \\ \\/ /  _    /\\-/\\   _   \\ \\/ / /\\\n")
escreva("/\\ \\ \\  /  /_/  / /-\\ \\  \\_\\  \\  / / /\\\n")
escreva("/  \\ \\_\\/_______/ /---\\ \\_______\\/_/ /  \\\n")
escreva("/ /\\ \\/\\_\\_______\\/-----\\/_______/_/\\/ /\\ \\\n")
escreva("\\ \\/ /\\/_/_______/\\-----/\\_______\\_\\/\\ \\/ /\n")
escreva(" \\  / / /\\    _  \\ \\---/ /  _    /\\ \\ \\  /\n")
escreva("  \\/ / /  \\  \\_\\  \\ \\-/ /  /_/  /  \\ \\ \\/\n")
escreva("   \\/_/ /\\ \\_______\\/-\\/_______/ /\\ \\_\\/\n")
escreva("    \\ \\ \\/ /  _    /\\-/\\   _   \\ \\/ / /\n")
escreva("     \\ \\  /  /_/  / /-\\ \\  \\_\\  \\  / /\n")
escreva("      \\_\\/_______/ /---\\ \\_______\\/_/\n")
escreva("       \\_\\_______\\/-----\\/_______/_/ LGB\n")

u.aguarde(100)
limpa()
contador = contador+1
}

    u.aguarde(2000)
    escreverDigitando("você recobra a consciência e percebe..")
    escreverDigitando("Você conseguiu.")
    escreverDigitando("Tudo foi restaurado.")

    escreverDigitando("Um portal se abre diante de você...")
    escreverDigitando("Dessa vez... para casa.\n")

    escreverDigitando("Você atravessa o portal e retorna ao mundo real.")
    escreverDigitando("Marcos-DONEDA, FINALMENTE VOCÊ APARECEU!")
    escreverDigitando("Lucas-GRAÇAS A DEUS! O QUE ACONTECEU COM VOCÊ? TÁ TUDO BEM?")

    escreverDigitando("Doneda-'sim... agora tá tudo bem.'\n")
    escreverDigitando("Você respira fundo e olha para a tela do computador.")

    escreverDigitando("Os sistemas estão estáveis...")
    escreverDigitando("O BUG foi completamente eliminado.")
    escreverDigitando("Tudo voltou ao normal.\n")
    u.aguarde(2000)
    limpa()
escreva("     ██╗   ██╗ ██████╗  ██████╗███████╗    ██████╗ ███████╗██████╗ ██████╗  ██████╗ ████████╗ ██████╗ ██╗   ██╗\n")
escreva("     ██║   ██║██╔═══██╗██╔════╝██╔════╝    ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔═══██╗╚══██╔══╝██╔═══██╗██║   ██║\n")
escreva("     ██║   ██║██║   ██║██║     █████╗      ██║  ██║█████╗  ██████╔╝██████╔╝██║   ██║   ██║   ██║   ██║██║   ██║\n")
escreva("     ╚██╗ ██╔╝██║   ██║██║     ██╔══╝      ██║  ██║██╔══╝  ██╔══██╗██╔══██╗██║   ██║   ██║   ██║   ██║██║   ██║\n")
escreva("      ╚████╔╝ ╚██████╔╝╚██████╗███████╗    ██████╔╝███████╗██║  ██║██║  ██║╚██████╔╝   ██║   ╚██████╔╝╚██████╔╝\n")
escreva("       ╚═══╝   ╚═════╝  ╚═════╝╚══════╝    ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝  ╚═════╝ \n")
escreva("\n")
escreva("                                ██████╗         ██████╗ ██╗   ██╗ ██████╗                         \n")
escreva("                               ██╔═══██╗        ██╔══██╗██║   ██║██╔════╝                         \n")
escreva("                               ██║   ██║        ██████╔╝██║   ██║██║  ███╗                        \n")
escreva("                               ██║   ██║        ██╔══██╗██║   ██║██║   ██║                        \n")
escreva("                               ╚██████╔╝        ██████╔╝╚██████╔╝╚██████╔╝                        \n")
escreva("                                ╚═════          ╚═════╝  ╚═════╝  ╚═════╝    ██   ██   ██         \n")
u.aguarde(2000)
limpa()
escreva("            ████████╗██╗   ██╗██████╗  ██████╗     ██╗   ██╗ ██████╗ ██╗    ████████╗ ██████╗ ██╗   ██╗\n")
escreva("            ╚══██╔══╝██║   ██║██╔══██╗██╔═══██╗    ██║   ██║██╔═══██╗██║    ╚══██╔══╝██╔═══██╗██║   ██║\n")
escreva("               ██║   ██║   ██║██║  ██║██║   ██║    ██║   ██║██║   ██║██║       ██║   ██║   ██║██║   ██║\n")
escreva("               ██║   ██║   ██║██║  ██║██║   ██║    ╚██╗ ██╔╝██║   ██║██║       ██║   ██║   ██║██║   ██║\n")
escreva("               ██║   ╚██████╔╝██████╔╝╚██████╔╝     ╚████╔╝ ╚██████╔╝███████╗  ██║   ╚██████╔╝╚██████╔╝\n")
escreva("               ╚═╝    ╚═════╝ ╚═════╝  ╚═════╝       ╚═══╝   ╚═════╝ ╚══════╝  ╚═╝    ╚═════╝  ╚═════╝\n")
escreva("\n")
escreva("                        █████╗  ██████╗     ███╗   ██╗ ██████╗ ██████╗ ███╗   ███╗ █████╗ ██╗         \n")
escreva("                       ██╔══██╗██╔═══██╗    ████╗  ██║██╔═══██╗██╔══██╗████╗ ████║██╔══██╗██║         \n")
escreva("                       ███████║██║   ██║    ██╔██╗ ██║██║   ██║██████╔╝██╔████╔██║███████║██║         \n")
escreva("                       ██╔══██║██║   ██║    ██║╚██╗██║██║   ██║██╔══██╗██║╚██╔╝██║██╔══██║██║         \n")
escreva("                       ██║  ██║╚██████╔╝    ██║ ╚████║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║  ██║███████╗    \n")
escreva("                       ╚═╝  ╚═╝ ╚═════╝     ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝    \n")
escreva("FIM DE JOGO!")
    cadeia pausa
    escreva("\nPressione ENTER para reiniciar...")
    leia(pausa)
    limpa()

    // reseta tudo
    mortes = 0
    fezPuzzle1 = falso
    fezPuzzle2 = falso

    // volta pro início
    inicio()
  }
  

  funcao derrota3()
  {
    limpa()
    escreva("====================================\n")
    escreva("#             DERROTA              #\n")
    escreva("====================================\n")
    escreverDigitando("A batalha chega ao fim… e você não foi páreo á fúria de BUG.")
    escreverDigitando("O inimigo permanece de pé, enquanto sua visão escurece completamente.")
    escreverDigitando("Tudo desaparece.")
    escreverDigitando("...")
    u.aguarde(2000)
    morte()
  }
  logico fezPuzzle1=falso
  logico fezPuzzle2=falso
  inteiro ultimoPuzzle = 0
  
  // ===== PORTAL 2 =====
  funcao sistemaRegional()
  {
    escreverDigitando("Você entra no segundo portal, mas dessa vez tudo parece diferente...")
    u.aguarde(1000)
    escreva("\n")

    escreverDigitando("Ao seu redor, enormes servidores processam dados em uma velocidade absurda.")
    escreverDigitando("Interfaces conhecidas piscam por todos os lados, como se fossem partes de um sistema gigante.")
    escreverDigitando("Você percebe que está dentro de uma infraestrutura da Microsoft.")

    escreva("\n")

    explorar2()
  }

  funcao explorar2()
  {
    inteiro explorar2
    escreva("Você deseja explorar este portal?\n")
    escreva("1 - Sim\n")
    escreva("2 - Não\n")
    escreva("\nEscolha: ")
    leia(explorar2)
    limpa()

    se (explorar2 == 1)
    {
      escreverDigitando("Você decide investigar os sistemas...")
      escreverDigitando("Vôce caminha lentamente, atento a todo e qualquer perigo que possa aparecer.")
      escreverDigitando("Após longos minutos caminhando, você se depara com um corredor contendo duas portas")
      escreverDigitando("a primeira te levará ao terminal de segurança e a segunda à área de banco de dados...")
      u.aguarde(1000)

      escreva("\npra onde deseja ir?\n")
      escreva("1 - Terminal de segurança\n")
      escreva("2 - Banco de Dados\n")

      inteiro opcao
      leia(opcao)
      limpa()

      escolha (opcao)
      {
        caso 1:
          puzzleTerminal()
          pare

        caso 2:
          puzzleBanco()
          continuarCaminho2(falso)
          pare
      }
    }
    senao
    {
      escreverDigitando("Você opta por não se arriscar e segue adiante, deixando o portal para trás.")
      continuarCaminho2(falso)
    }
  }

  
  funcao puzzleTerminal()
{
  escreverDigitando("\nVocê entra pela porta...\n")
escreverDigitando("O lugar é silencioso e meio escuro.")

escreverDigitando("Logo à frente, você se depara com um terminal ligado.")
escreverDigitando("A tela pisca, como se estivesse esperando por algo...")
escreverDigitando("Você olha mais de perto e descobre um problema a ser resolvido...\n")
cadeia pausa
        escreva("Pressione [ENTER] para continuar...")
        leia(pausa)
        limpa()
         escreverDigitando("=== TERMINAL DE SEGURANÇA ===\n")
        escreverDigitando("Módulo: Sequência Numérica")
        escreverDigitando("Analisando padrão...\n")

        // Sequência apresentada
        escreverDigitando("2  6  7  21  22  ?\n")

        escreverDigitando("Descubra o próximo número da sequência.")
        escreverDigitando("Você tem 3 tentativas.\n\n")

        
        inteiro resposta = 66
        inteiro tentativa = 1
        inteiro maximoTentativas = 3
        inteiro palpite = 0
        logico conseguiu = falso

enquanto (tentativa <= maximoTentativas e nao conseguiu)
{
    escreva("\n[Tentativa ", tentativa, "/", maximoTentativas, "] Digite o próximo número: ")
    leia(palpite)

    se (palpite == resposta)
    {
        limpa()
        escreverDigitando("\n✔ ACESSO LIBERADO\n")
        escreverDigitando("Sequência validada!\n")
        escreverDigitando("O terminal emite um som e abre um compartimento secreto...\n")
        u.aguarde(2000)
        limpa()
escreva("                                                      -*=                                                      \n")
escreva("                                                   .+%%@#.                                                     \n")
escreva("                                                  =#@@%##@=                                                    \n")
escreva("                                                =%%@@###++%%-                                                  \n")
escreva("                                              =%@@@#-=+==++*@%-                                                \n")
escreva("                                             +%@@%*:...::-+++%@+                                               \n")
escreva("                                            =#@@%=::   .:-:=#*%@=                                              \n")
escreva("                                           .=%@@%::-...::=-+%#@@+                                              \n")
escreva("                                            =%@@@%*+-====+*@@@@@:                                              \n")
escreva("                                             -*%#%%#*#%**%@@@@#.                                               \n")
escreva("                                               :*%%@#%@@@@@@+.                                                \n")
escreva("                                               .#%%%%*@@@@@%=                                                 \n")
escreva("                                               .#*#:+%@@=*@@+                                                 \n")
escreva("                                                   *@%@@@+                                                    \n")
escreva("                                                  -@%%@@@%                                                    \n")
escreva("                                                  *%#%%@@@*                                                   \n")
escreva("                                                  ##**%+%@#                                                   \n")
escreva("                                                  :%#*+#%@:                                                   \n")
escreva("                                                   -@%@%@=                                                    \n")
escreva("                                                   -@@@@@:                                                    \n")
escreva("                                                    *@@@*                                                     \n")
escreva("                                                    =%@@-                                                     \n")
escreva("                                                     *%%                                                      \n")
escreva("                                                    :+*@-                                                     \n")
escreva("                                                    :=.-*                                                     \n")
escreva("                                                    :%*%-                                                     \n")
escreva("                                                    .#@@:                                                     \n")
escreva("                                                     #@@                                                      \n")
escreva("                                                    .#@@-                                                     \n")
escreva("                                                    .%%@-                                                     \n")
escreva("                                                    -+%@-                                                     \n")
escreva("                                                    .=#@-                                                     \n")
escreva("                                                     =%@:                                                     \n")
escreva("                                                     =%@:                                                     \n")
escreva("                                                     =%@:                                                     \n")
escreva("                                                     =%@:                                                     \n")
escreva("                                                     =#@:                                                     \n")
escreva("                                                     =#@:                                                     \n")
escreva("                                                     =#@.                                                     \n")
escreva("                                                     =#@.                                                     \n")
escreva("                                                     -#@.                                                     \n")
escreva("                                                     =%@.                                                     \n")
escreva("                                                     +@@.                                                     \n")
escreva("                                                     =@@.                                                     \n")
escreva("                                                     +@@.                                                     \n")
escreva("                                                     =%@                                                      \n")
escreva("                                                      %:                                                      \n")

        escreva("\n>> RECOMPENSA OBTIDA: [HOLLY STAFF] <<\n")
        adicionarItem("Holly staff")
        fezPuzzle1 = verdadeiro
        conseguiu = verdadeiro
        ultimoPuzzle = 1
    }
    senao
    {     
        escreva("\n✖ Incorreto. Tente novamente.\n")
        tentativa++
    }
}

    // SE FALHAR
    se (nao conseguiu)
    {
        limpa()
        escreverDigitando("✖ SISTEMA BLOQUEADO\n")
        escreverDigitando("O terminal reinicia automaticamente...\n")

        u.aguarde(1500)

        inteiro opcao
        escreva("\nDeseja tentar novamente?\n")
        escreva("1 - Sim\n")
        escreva("2 - Não\n")
        escreva("\nEscolha: ")
        leia(opcao)
        limpa()

        escolha (opcao)
        {
            caso 1:
                puzzleTerminal()
                pare

           caso 2:
                verificarSistema2()
                pare
        }
    }
    senao
     {
        escreva("\nPressione Enter para continuar...")
      cadeia pausa
      leia(pausa)
      limpa()
      verificarSistema2()
     }
    }
funcao puzzleBanco()
{   
 escreverDigitando("\nVocê entra pela porta...\n")
escreverDigitando("O ambiente é frio e iluminado apenas por telas azuladas.")

escreverDigitando("À sua frente, diversos terminais exibem tabelas e dados corrompidos.")
escreverDigitando("Linhas de código e registros piscam de forma instável...")
escreverDigitando("Você se aproxima e percebe que há um problema no banco de dados e então decide resolver..\n")
cadeia pausa
        escreva("Pressione [ENTER] para continuar...")
        leia(pausa)
        limpa()
  escreverDigitando("==== BANCO DE DADOS ===\n")
    escreverDigitando("Você acessa o banco de dados...")
    escreverDigitando("Os registros estão bagunçados e duplicados...\n")

    escreva("REGISTROS:\n")
    escreva("   Ana | Bruno | Carlos | Bruno | Diego\n")
    escreva(" Bruno |   Ana | Carlos | Bruno |   Ana\n")
    escreva("Carlos | Bruno |    Ana | Diego | Bruno\n\n")

    escreverDigitando("Analise os dados...")
    escreverDigitando("Organize os registros em ordem, baseado no nome que MAIS aparece até o nome que MENOS aparece")
    escreverDigitando("Formato: nome1 nome2 nome3 nome4\n")

    inteiro tentativa = 1
    inteiro maximoTentativas = 3
    logico conseguiu = falso

    enquanto (tentativa <= maximoTentativas e nao conseguiu)
    {
        cadeia r1, r2, r3, r4

        escreva("\n[Tentativa ", tentativa, "/", maximoTentativas, "]\n")

        escreva("1º: ")
        leia(r1)
        escreva("2º: ")
        leia(r2)
        escreva("3º: ")
        leia(r3)
        escreva("4º: ")
        leia(r4)

        limpa()

        // resposta correta:
        se (
            ((r1=="Bruno") ou (r1=="bruno"))
            e ((r2=="Ana") ou (r2=="ana"))
            e ((r3 == "Carlos") ou (r3=="carlos"))
            e ((r4 == "Diego") ou (r4=="diego"))
        )
        {
            escreverDigitando("✔ CORRETO!")
            escreverDigitando("Você organizou os dados com sucesso.\n")
            escreverDigitando("Uma gaveta se abre revelando uma recompensa..")
            u.aguarde(1500)
            limpa()
            escreva("                                                                                                                         ")
escreva("                                                                                                             .:.::.     \n")
escreva("                                                                                                        :-====+@@@@*    \n")
escreva("                                                                                                 :-====-:.  ..-@@@@@:   \n")
escreva("                                                                                         .:--===-:. ..-=+*#%%@@@@@@#    \n")
escreva("                                                                                  .:-----:. ..:-=+*%%@@@@@@@@%*+=.      \n")
escreva("                                                                          .:-----:.   .:-=**#%@@@@@@@##*#@@@##%*=:      \n")
escreva("                                                                 .::------::  ..:-=*#%@@@@@@@#*@@@@@@+-:===*@@#@@@%*.   \n")
escreva("                                                         ..:::---:::::::-=+**#%@@@@@@@@@@@@@=:+@@@@@+.  +*+#@@%@@@@=    \n")
escreva("                                            :===:...:::::.    :::-=+*#%%@@@@@@@@@@@%%%@%%%%@::#@@@@@*=++%##@@@@@*:.     \n")
escreva("                                      :-=*%%@@++-.    ..:-=+**#%@@@@@@%@@@@%%%%%%@%%%%@@%%%@++#@@@@@@@@@@@@@@@:         \n")
escreva("                               .-=++*****==-@=.-.-==+*#%%@@@@@@@@@%%+:=%%%%@%%%%%@%%%@@%%@@@@@@@@@@@@@@%*+=::           \n")
escreva("                        :-=*###*##%@@%%##++*%#*%%@@@@@@@@@@@%%%=--::-:#%%%@@%%%@@%@@@@@@@@@@@@@@@@@%%##%%=              \n")
escreva("                     -+**+**@@@@@*+=====*+***@@@@@@@@%%%%%%%%@@======+#@@@@@@@@@@@@@@@@@@@@@@@%%%@@@@@@@@@:             \n")
escreva("                 :+*#**+*++=@@@@@*===-==-=++*%@%%%%@@%##***++++#%%@@@@@@@@@@@@@@@@@%#*+=-:.        #@%%#*-              \n")
escreva("                =#-#*+==++=+@@@@@*====+++*****@@@#*++++*##%@@@@@@@@@@@@@@@@%#*+-:.                .%##%%=               \n")
escreva("              -##*++++++++++#@%+++++++********#@@%@@@@@@%#*+=:.  .=#%%%@@@%@@:                   :%@@@#:                \n")
escreva("             :+#***#########*@@#+********###%%@@@@%#=:.               #@@@@@@#                 =%@@@*:                  \n")
escreva("            .*%#++***#%#*###%@@#*##%%%%#*+=-..::.                     -@@@@@@@@+.          .=#@@#+:                     \n")
escreva("           :###%#*@*++**##%%@@@@@@@#=:                                  :+#@@@@@@#+=-:::-=**+-.                         \n")
escreva("         .=*#*##%#%%%@@@@@@%*==#@%*.                                        .::-----::.                                 \n")
escreva("       .-+*#%@@@@@@@#+-+@@#:    #--                                                                                     \n")
escreva("     .-+##@@@@@@@+..    =@*#:   =+-                                                                                     \n")
escreva("   .-*#%%@@@@@@#.        *@%@:.:##:                                                                                     \n")
escreva("  +#%%#%@@@@@@#           .-=-:.                                                                                        \n")
escreva("  ##%%%@@@@@@@.                                                                                                         \n")
escreva("  =###%@@@@@%=                                                                                                          \n")
escreva("  .####@@@@**:                                                                                                          \n")
escreva("    +%%@@@#:-                                                                                                           \n")
escreva("      :=++-                                                                                                             \n")
escreva("                                                                                                                        \n")
            escreva(">> RECOMPENSA OBTIDA: [SHOTGUN] <<\n")
            adicionarItem("Shotgun")

            fezPuzzle2 = verdadeiro
            conseguiu = verdadeiro
            ultimoPuzzle= 2
        }
        senao
        {
            escreva("\n✖ Ordem incorreta... Tente novamente.\n")
            tentativa++
        }
    }

    // se falhar
    se (nao conseguiu)
    {
        escreverDigitando("✖ SISTEMA BLOQUEADO")
        escreverDigitando("O banco de dados fecha automaticamente...\n")

        inteiro opcao
        escreva("\nDeseja tentar novamente?\n")
        escreva("1 - Sim\n")
        escreva("2 - Não\n")
        escreva("\nEscolha: ")
        leia(opcao)
        limpa()

        escolha(opcao)
        {
            caso 1:
                puzzleBanco()
                pare

            caso 2:
                verificarSistema2()
                pare
        }
    }
    senao
    {
        escreva("\nPressione [ENTER] para continuar...")
        cadeia pausa
        leia(pausa)
        limpa()

        verificarSistema2()
    }
}

  funcao continuarCaminho2(logico ganhouItem)
  {
    se (ganhouItem == falso)
    {
      escreverDigitando("Você segue seu caminho, sem interagir com os sistemas...")
      escreverDigitando("andando pelos corredores escuros, você nao sabe oque pode vir...")

      cadeia pausa
      escreva("\nPressione [ENTER] para continuar...")
      leia(pausa)
      limpa()
    }

    u.aguarde(1000)
    verificarSistema2()
  }

  funcao verificarSistema2()
{
    limpa()

    // ===== VEIO DO PUZZLE 1 =====
    se (ultimoPuzzle == 1)
    {
        escreverDigitando("Após resolver o problema, você recebe a arma e então segue caminho...")
        escreverDigitando("Explorando melhor a sala, você observa cada canto, mas só encontra poeira e paredes desgastadas.")
        escreverDigitando("Sem achar nada de útil, você decide voltar.\n")

        se (nao fezPuzzle2)
        {
            u.aguarde(1000)
            escreverDigitando("No entanto, pouco antes de entrar na segunda porta você percebe um inimigo adiante")
            escreverDigitando("Você precisa fazer uma decisão...")
        }
        senao
        {
            u.aguarde(1000)
            cadeia pausa
            escreva("\nPressione [ENTER] para continuar...")
            leia(pausa)
            limpa()
        }

        decisaoCaminho()
    }

    // ===== VEIO DO PUZZLE 2 =====
    senao se (ultimoPuzzle == 2)
    {
        escreverDigitando("Com o sistema restaurado e os registros organizados, os dados voltam ao normal...")
        escreverDigitando("As telas se estabilizam, mas você não encontra mais nada útil.")
        escreverDigitando("Sem motivo para ficar, você decide sair da sala.\n")

        se (nao fezPuzzle1)
        {
            u.aguarde(1000)
            escreverDigitando("Seguindo em frente, pouco antes de entrar na outra porta você percebe um inimigo adiante")
            escreverDigitando("Você precisa fazer uma decisão...")
        }
        senao
        {
            u.aguarde(1000)
            cadeia pausa
            escreva("\nPressione [ENTER] para continuar...")
            leia(pausa)
            limpa()
        }

        decisaoCaminho()
    }

    // ===== NÃO FEZ NADA =====
    senao
    {
       escreverDigitando("Os caminhos começam a se repetir, servidores por todos os lados, sem nenhum padrão claro.")
    escreverDigitando("Após algum tempo andando, você percebe que não faz ideia de onde está.\n\n")
    escreverDigitando("'-Esse lugar é imenso... parece um labirinto...'")
    escreverDigitando("'-Eu tô andando em círculos? Droga... tô perdido.'\n\n")
    escreverDigitando("Depois de horas andando sem saber onde está")
    escreverDigitando("Duas portas estão diante de você: o terminal de segurança e a área de banco de dados.")

    escreverDigitando("Mas antes que possa decidir, uma presença surge no fim do corredor.")
    escreverDigitando("Um inimigo começa a se formar, bloqueando sua passagem.")
    escreverDigitando("Sem muito tempo, você precisa tomar uma decisão.")

      decisaoCaminho()
    }
}
  funcao decisaoCaminho()
{
    // ✔️ SE FEZ OS DOIS → batalha normal
    se (fezPuzzle1 e fezPuzzle2)
    {
        escreverDigitando("Após explorar cada sala e reunir tudo o que podia, você percebe que não há mais nada a fazer aqui...")
        escreverDigitando("O silêncio do lugar pesa, e ao longe, a presença do inimigo se torna inevitável...")
        escreverDigitando("Determinando seu próximo passo, você avança em direção ao confronto...")
        batalhaNormal2()
    }
    senao
    {
        escreva("\nO que deseja fazer?\n")

        // Só mostra opção se ainda não fez
        se (nao fezPuzzle1)
        {
            escreva("1 - Ir para o terminal de segurança\n")
        }

        se (nao fezPuzzle2)
        {
            escreva("2 - Ir para o Banco de dados\n")
        }

        escreva("3 - Ir para a batalha\n")
        escreva("\nEscolha: ")

        inteiro opcao
        leia(opcao)
        limpa()

        escolha(opcao)
        {
            caso 1:
                se (nao fezPuzzle1)
                {
                    puzzleTerminal()
                }
                senao
                {
                    escreverDigitando("Você já fez esse puzzle.")
                    decisaoCaminho()
                }
                pare

            caso 2:
                se (nao fezPuzzle2)
                {
                    puzzleBanco()
                }
                senao
                {
                    escreverDigitando("Você já fez esse puzzle.")
                    decisaoCaminho()
                }
                pare

            caso 3:
                escreverDigitando("Você decide ir direto para o combate...")
                batalhaDificil2()
                pare
        }
    }
}
 funcao batalhaNormal2() {
    escreverDigitando("Após superar os desafios e coletar mais recursos, você vai para batalha mais confiante que nunca.. ")
    logico venceu = batalha_spyware() 

    // Quando a função do Bruno acabar, o código volta para cá:
    se (venceu == verdadeiro) 
    {
      vitoria2()
    } 
    senao 
    {
      derrota2()
    }
  }

  funcao batalhaDificil2() {
    escreverDigitando("Sem mais recursos, você avança até o inimigo..")
    logico venceu = batalha_spyware_hard() 

    // Quando a função do Bruno acabar, o código volta para cá:
    u.aguarde(1500)
    se (venceu == verdadeiro) 
    {
      vitoria2()
    } 
    senao 
    {
      derrota2()
    }
  }
funcao logico batalha_spyware()
  {

    inimigo_vida = 270
    inimigo_ataque = 35
    inimigo_vel = 0
    inteiro pontos_add = 200

    enquanto (vida > 0 e inimigo_vida > 0){

      escreva("\nDoneda: ", vida, " | Spyware: ", inimigo_vida, "\n")
      escreva("1) Atacar\n2) Defender\n3) Curar\n4) Aumentar o ataque\n5) Usar arma\n")

      se(estado == "op"){

      inteiro op
      leia(op)

      se (vel >= inimigo_vel){
        estado = "op"
        se (estado == "op"){
        evasiva = u.sorteia(0, 100)

        se (op == 1){
          se(evasiva >= 5){
          inimigo_vida -= ataque
          escreva("Você atacou!\n")
          } senao {
          escreva("Você errou seu ataque \n")
          estado = "inimigo"
        }
        }

        se (op == 2){
          defesa += 5
          escreva("Defesa aumentada!\n")
          estado = "inimigo"
        }

        se (op == 3){
          vida += 30
          escreva("Você se Curou \n")
          estado = "inimigo"
        }

        se (op == 4){
          ataque += 10
          escreva("Você aumentou seu Ataque \n")
          estado = "inimigo"
        }
        se (op == 5){
        limpa()
        usarItem()
        estado = "inimigo"
        }

        senao se (op != 1 ou 2 ou 3 ou 4 ou 5){
        escreva("Inválido")
        estado = "op"
        }
        }
        }
        se (estado == "inimigo"){
        ataque_spyware()
        u.aguarde(1000)
        }  

        // RESULTADO
        se (inimigo_vida <= 0){
        limpa()
        escreva("Você derrotou o Malware!\n")
        malware_def = verdadeiro
        pontos_add -= 20 * tent
        se(pontos_add <= 0){
       pontos_add = 0
        }
        pontos += pontos_add
        escreva(pontos)
        resetar()
        retorne verdadeiro

        } senao se(vida <= 0){
        limpa()
        escreva("Você perdeu!\n")
        tent += 1
        resetar()
        retorne falso
        
        }

        u.aguarde(1000)
        limpa()
        

      } senao {
        estado = "inimigo"
        se (estado == "inimigo"){
        ataque_spyware()
        u.aguarde(2000)
        estado = "op"
        }

        se(estado == "op"){
        inteiro op2
        leia(op2)

        se (op2 == 1){
          se(evasiva >= 15){
          inimigo_vida -= ataque
          escreva("Você atacou!\n")
          estado = "inimigo"
          } senao {
          escreva("Você errou seu ataque \n")
          estado = "inimigo"
        }
        }

        se (op2 == 2){
          defesa += 5
          escreva("Defesa aumentada!\n")
          estado = "inimigo"
        }

        se (op2 == 3){
          vida += 30
          escreva("Você se Curou \n")
          estado = "inimigo"
        }

        se (op2 == 4){
          ataque += 10
          escreva("Você aumentou seu Ataque \n")
          estado = "inimigo"
        }
        se (op2 == 5){
        limpa()
        usarItem()
        estado = "inimigo"
        }

        senao se(op2 != 1 ou 2 ou 3 ou 4 ou 5){
        escreva("Inválido")
        estado = "op"
        }

        }
      }

      // RESULTADO
        se (inimigo_vida <= 0){
        limpa()
        escreva("Você derrotou o Malware!\n")
        malware_def = verdadeiro
        pontos_add -= 20 * tent
        se(pontos_add <= 0){
       pontos_add = 0
        }
        pontos += pontos_add
        escreva(pontos)
        resetar()

        } senao se(vida <= 0){
        limpa()
        escreva("Você perdeu!\n")
        tent += 1
        resetar()
        u.aguarde(1000)
        }

        u.aguarde(1000)
        limpa()
        
      u.aguarde(1000)
    } 
    retorne falso
  }
funcao logico batalha_spyware_hard(){

    inimigo_vida = 370
    inimigo_ataque = 45
    inimigo_vel = 15
    inteiro pontos_add = 300

    enquanto (vida > 0 e inimigo_vida > 0){

      escreva("\nDoneda: ", vida, " | Spyware HARD: ", inimigo_vida, "\n")
      escreva("1) Atacar\n2) Defender\n3) Curar\n4) Aumentar o ataque\n5) Usar arma\n")

      se (estado == "op"){
      inteiro op
      leia(op)

      se (vel >= inimigo_vel){

        evasiva = u.sorteia(0, 100)

        se (op == 1){
          se(evasiva >= 25){
            inimigo_vida -= ataque
            escreva("Você atacou")
            estado = "inimigo"
          }
          senao{
            escreva("Você errou")
            estado = "inimigo"
          }
        }

        se (op == 2){
          defesa += 4
          escreva("Sua defesa Aumentou")
          estado = "inimigo"
        }

        se (op == 3){
          vida += 20
          escreva("Você se Curou")
          estado = "inimigo"
        }

        se (op == 4){
          ataque += 8
          escreva("Aumentou seu ataque")
          estado = "inimigo"
        }
        se (op == 5){
        limpa()
        usarItem()
        estado = "inimigo"
        }

        senao se (op != 1 ou 2 ou 3 ou 4 ou 5){
        escreva("Inválido")
        estado = "op"
        }
        }

        se(estado == "inimigo"){
          ataque_spyware_hard()
          u.aguarde(2000)
          estado = "op"
        }
        
      } senao {
        estado = "inimigo"
        se (estado == "inimigo"){
        ataque_spyware_hard()
        estado = "op"
        }
        se (estado == "op"){
        evasiva = u.sorteia(0, 100)
        
        inteiro op2
        leia(op2)

        se (op2 == 1){
          se (evasiva < 25){
          inimigo_vida -= ataque
          escreva("Você atacou")
          estado = "inimigo"
          }
          senao {
            escreva("Você errou")
            estado = "inimigo"
          }
        }

        se (op2 == 2){
          defesa += 4
          escreva("Sua defesa aumentou")
          estado = "inimigo"
        }

        se (op2 == 3){
          vida += 20
          escreva("Você se curou")
          estado = "inimigo"
        }

        se (op2 == 4){
          ataque += 8
          escreva("Você aumentou seu ataque")
          estado = "inimigo"
        }
        se (op2 == 5){
        limpa()
        usarItem()
        estado = "inimigo"
        }

        senao se(op2 != 1 ou 2 ou 3 ou 4 ou 5){
        escreva("Inválido")
        estado = "op"
        }
        }
      }

      u.aguarde(1000)
    }

    se (vida <= 0){
      escreva("Você perdeu!\n")
      resetar()
      retorne falso
    } senao {
      escreva("Você venceu!\n")
      pontos += pontos_add
      resetar()
      retorne verdadeiro
    }
}
funcao ataque_spyware(){
    inteiro mov = u.sorteia(0, 100)

    se (mov <= 35){
      inimigo_vel += 15
      escreva("Spyware aumentou velocidade!\n")
    }
    senao se (mov <= 45){
      inimigo_ataque * 2
      escreva("Spyware está aumentando sua precisão \n")
    }
    senao se (mov <= 85){
      vida -= inimigo_ataque
      escreva("Spyware atacou!\n")
    }

    senao {
      escreva("Spyware falhou!\n")
    }
    
    se (inimigo_vida <= 10){
      inimigo_vida = 0
      escreva("Spyware usou Cianeto \n", "Spyware Morreu \n")
    }
  }
funcao ataque_spyware_hard(){
    inteiro mov = u.sorteia(0, 100)

    se (mov <= 35){
      inimigo_vel += 20
      escreva("Spyware aumentou velocidade!\n")
    }
    senao se (mov <= 45){
      inimigo_ataque * 2
      escreva("Spyware está aumentando sua precisão \n")
    }
    senao se (mov <= 85){
      vida -= inimigo_ataque
      escreva("Spyware atacou!\n")
    }

    senao {
      escreva("Spyware falhou!\n")
    }
    
    se (inimigo_vida <= 10){
      inimigo_vida = 0
      escreva("Spyware usou Cianeto \n", "Spyware Morreu \n")
    }
  }
funcao vitoria2()
  {
    limpa()
    escreva("====================================\n")
    escreva("*             VITÓRIA              *\n")
    escreva("====================================\n")
    escreverDigitando("O inimigo se desfaz diante de você, desaparecendo em fragmentos digitais.")
    escreverDigitando("Por um momento, tudo fica em silêncio..")
    escreverDigitando("Então, sua visão começa a falhar…")
    escreverDigitando("Um flashback invade sua mente.")
    u.aguarde(1000)
    flashback3()
    

    escreverDigitando("Você volta ao presente, e agora começa a entender oque esta acontecendo")
    escreverDigitando("No chão, algo surge lentamente.")
    escreverDigitando("Você encontra uma segunda chave digital… ")
    escreverDigitando("e ao lado dela, uma arma diferente de todas as outras: Arco e flecha.")
    u.aguarde(2000)
    limpa()
 
    escreva("                                                                                                    \n")
escreva("                                                                                                    \n")
escreva("                                                       :#                                           \n")
escreva("                                                     .+%*                                           \n")
escreva("                                                    =@@%.                                           \n")
escreva("                                                  -*%%%+                                            \n")
escreva("                                               .+##%%@=-                                            \n")
escreva("                                            :=*%#%%%=   +                                           \n")
escreva("                                        :=*%%%%%@#-      *                                          \n")
escreva("                                    -=+%%%@@@%*-         .+                                         \n")
escreva("                                 .+##%@@@@*-              .-                                        \n")
escreva("                               :+##%@@#=.                  -.                                       \n")
escreva("                              +#%@@@=                       *                                       \n")
escreva("                            =#%%@@#.                         *                                      \n")
escreva("                           *#@*#@+                            *                                     \n")
escreva("                         -#%%*%@+                             .=                                    \n")
escreva("                        *#%#+%@#                               -:                                   \n")
escreva("                       *#%*+%@@:                                +.                                  \n")
escreva("                       %@##@@#%:                                 *.                                 \n")
escreva("                       +#@#%%%=                                   *                                 \n")
escreva("                       ##%#@@:                                     =                                \n")
escreva("                      ##%+@@=                                      :-                               \n")
escreva("                      #%##%#%-                                      =:                              \n")
escreva("              .-*%@+::-%@%%@%-:::::::::::::::::::::::::::::::::::::::#-::=*%@@@@@@@=::              \n")
escreva("                  .   .%@+*%%                                       .*      .:::::.                \n")
escreva("                       #%%+#%*                                      *                              \n")
escreva("                       -#%%%+@-                                    =                               \n")
escreva("                       -#%%%*%+                                   :-                               \n")
escreva("                       #%@#%%#+                                  .*                                \n")
escreva("                       #%@%%#@=                                 .*                                 \n")
escreva("                       =##@@@##.                                *                                  \n")
escreva("                        =%#%##**.                              =.                                  \n")
escreva("                         .##%##*%-                            :=                                   \n")
escreva("                           =##%*#@+                          .*                                    \n")
escreva("                            .##%@@@*                         #                                     \n")
escreva("                              -*#@@%*:                      *                                      \n")
escreva("                                =##@@#*:                   =.                                      \n")
escreva("                                  -#%@@%*-:               .-                                       \n")
escreva("                                    -*%%@@@@*=:           *                                        \n")
escreva("                                       =*%%@@@@%+-       +                                         \n")
escreva("                                          -#%%@@@%%*.   *                                          \n")
escreva("                                            :=*%%@@@%#=-                                           \n")
escreva("                                               :*%#@@@#%-                                          \n")
escreva("                                                  =*%@@%%*.                                        \n")
escreva("                                                    -#%@@##                                         \n")
escreva("                                                      :%@@#.                                       \n")
escreva("                                                       .@@#-                                       \n")
escreva("                                                        .*#=                                       \n")
escreva("                                                                                                    \n")
escreva("                                                                                                    \n")
    escreva(">> RECOMPENSAS OBTIDAS: [CHAVE (2)] [ARCO E FLECHA]<<")
    adicionarItem("Chave [2]")
    adicionarItem("Arco e flecha")
    escreva("\n")
    escreverDigitando("mais próximo que nunca da verdade…")
    escreverDigitando("Você retorna a sala principal para finalizar esse pesadelo...")
   cadeia pausa
    escreva("Pressione ENTER para continuar...")
    leia(pausa)
    limpa()
    portais()
  }

  funcao derrota2()
  {
    limpa()
    escreva("====================================\n")
    escreva("#             DERROTA              #\n")
    escreva("====================================\n")
    escreverDigitando("A batalha chega ao fim… e você não consegue continuar.")
    escreverDigitando("O inimigo permanece de pé, enquanto sua visão escurece completamente.")
    escreverDigitando("Tudo desaparece.")
    escreverDigitando("...")
    u.aguarde(2000)
    morte()
  }
  funcao flashback3() {
escreva("██╗   ██╗███╗   ██╗██╗██╗   ██╗███████╗██████╗ ███████╗██╗██████╗  █████╗ ██████╗ ███████╗\n")
escreva("██║   ██║████╗  ██║██║██║   ██║██╔════╝██╔══██╗██╔════╝██║██╔══██╗██╔══██╗██╔══██╗██╔════╝\n")
escreva("██║   ██║██╔██╗ ██║██║██║   ██║█████╗  ██████╔╝███████╗██║██║  ██║███████║██║  ██║█████╗  \n")
escreva("██║   ██║██║╚██╗██║██║╚██╗ ██╔╝██╔══╝  ██╔══██╗╚════██║██║██║  ██║██╔══██║██║  ██║██╔══╝  \n")
escreva("╚██████╔╝██║ ╚████║██║ ╚████╔╝ ███████╗██║  ██║███████║██║██████╔╝██║  ██║██████╔╝███████╗\n")
escreva(" ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚══════╝\n")
escreva("\n")
escreva("            ██████╗ ███████╗     ██████╗ ██╗  ██╗███████╗ ██████╗ ██████╗ ██████╗ \n")
escreva("            ██╔══██╗██╔════╝    ██╔═══██╗╚██╗██╔╝██╔════╝██╔═══██╗██╔══██╗██╔══██╗\n")
escreva("            ██║  ██║█████╗      ██║   ██║ ╚███╔╝ █████╗  ██║   ██║██████╔╝██║  ██║\n")
escreva("            ██║  ██║██╔══╝      ██║   ██║ ██╔██╗ ██╔══╝  ██║   ██║██╔══██╗██║  ██║\n")
escreva("            ██████╔╝███████╗    ╚██████╔╝██╔╝ ██╗██║     ╚██████╔╝██║  ██║██████╔╝\n")
escreva("            ╚═════╝ ╚══════╝     ╚═════╝ ╚═╝  ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═════╝ \n")

u.aguarde(2000)
limpa()

escreva("                                                  !_\n")
escreva("                                                  |*~=-.,\n")
escreva("                                                  |_,-'`\n")
escreva("                                                  |\n")
escreva("Professor:A realidade física emerge de simetrias locais quebradas espontaneamente.                                              |\n")
escreva("                                                 /^\\\n")
escreva("                   !_                           /   \\\n")
escreva("                   |*`~-.,                     /,    \\\n")
escreva("                   |.-~^`                     /#\"     \\\n")
escreva("                   |                        _/##_   _  \\_\n")
escreva("              _   _|  _   _   _            [ ]_[ ]_[ ]_[ ]\n")
escreva("             [ ]_[ ]_[ ]_[ ]_[ ]            |_=_-=_ - =_|\n")
escreva("           !_ |_=_ =-_-_  = =_|           !_ |=_= -    |\n")
escreva("           |*`--,_- _        |            |*`~-.,= []  |\n")
escreva("           |.-'|=     []     |   !_       |_.-\"`_-     |\n")
escreva("           |   |_=- -        |   |*`~-.,  |  |=_-      |\n")
escreva("          /^\\  |=_= -        |   |_,-~`  /^\\ |_ - =[]  |\n")
escreva("      _  /   \\_|_=- _   _   _|  _|  _   /   \\|=_-      |\n")
escreva("     [ ]/,    \\[ ]_[ ]_[ ]_[ ]_[ ]_[ ]_/,    \\[ ]=-    |\n")
escreva("      |/#\"     \\_=-___=__=__- =-_ -=_ /#\"     \\| _ []  |\n")
escreva("     _/##_   _  \\_-_ =  _____       _/##_   _  \\_ -    |\\\n")
escreva("    [ ]_[ ]_[ ]_[ ]=_0~{_ _ _}~0   [ ]_[ ]_[ ]_[ ]=-   | \\\n")
escreva("    |_=__-_=-_  =_|-=_ |  ,  |     |_=-___-_ =-__|_    |  \\\n")
escreva("     | _- =-     |-_   | ((* |      |= _=       | -    |___\\\n")
escreva("     |= -_=      |=  _ |  `  |      |_-=_       |=_    |/+\\|\n")
escreva("     | =_  -     |_ = _ `-.-`       | =_ = =    |=_-   ||+||\n")
escreva("     |-_=- _     |=_   =            |=_= -_     |  =   ||+||\n")
escreva("     |=_- /+\\    | -=               |_=- /+\\    |=_    |^^^|\n")
escreva("     |=_ |+|+|   |= -  -_,--,_      |_= |+|+|   |  -_  |=  |\n")
escreva("     |  -|+|+|   |-_=  / |  | \\     |=_ |+|+|   |-=_   |_-/\n")
escreva("     |=_=|+|+|   | =_= | |  | |     |_- |+|+|   |_ =   |=/\n")
escreva("     | _ ^^^^^   |= -  | |  <&>     |=_=^^^^^   |_=-   |/\n")
escreva("     |=_ =       | =_-_| |  | |     |   =_      | -_   |\n")
escreva("     |_=-_       |=_=  | |  | |     |=_=        |=-    |\n")
escreva("^^^^^^^^^^`^`^^`^`^`^^^\"\"\"\"\"\"\"\"^`^^``^^`^^`^^`^`^``^`^``^``^^\n")

u.aguarde(5000)
limpa()

escreva("                                                  !_\n")
escreva("                                                  |*~=-.,\n")
escreva("                                                  |_,-'`\n")
escreva("                                                  |\n")
escreva("Professor:Entenderam?                             |\n")
escreva("                                                 /^\\\n")
escreva("                   !_                           /   \\\n")
escreva("                   |*`~-.,                     /,    \\\n")
escreva("                   |.-~^`                     /#\"     \\\n")
escreva("                   |                        _/##_   _  \\_\n")
escreva("              _   _|  _   _   _            [ ]_[ ]_[ ]_[ ]\n")
escreva("             [ ]_[ ]_[ ]_[ ]_[ ]            |_=_-=_ - =_|\n")
escreva("           !_ |_=_ =-_-_  = =_|           !_ |=_= -    |\n")
escreva("           |*`--,_- _        |            |*`~-.,= []  |\n")
escreva("           |.-'|=     []     |   !_       |_.-\"`_-     |\n")
escreva("           |   |_=- -        |   |*`~-.,  |  |=_-      |\n")
escreva("          /^\\  |=_= -        |   |_,-~`  /^\\ |_ - =[]  |\n")
escreva("      _  /   \\_|_=- _   _   _|  _|  _   /   \\|=_-      |\n")
escreva("     [ ]/,    \\[ ]_[ ]_[ ]_[ ]_[ ]_[ ]_/,    \\[ ]=-    |\n")
escreva("      |/#\"     \\_=-___=__=__- =-_ -=_ /#\"     \\| _ []  |\n")
escreva("     _/##_   _  \\_-_ =  _____       _/##_   _  \\_ -    |\\\n")
escreva("    [ ]_[ ]_[ ]_[ ]=_0~{_ _ _}~0   [ ]_[ ]_[ ]_[ ]=-   | \\\n")
escreva("    |_=__-_=-_  =_|-=_ |  ,  |     |_=-___-_ =-__|_    |  \\\n")
escreva("     | _- =-     |-_   | ((* |      |= _=       | -    |___\\\n")
escreva("     |= -_=      |=  _ |  `  |      |_-=_       |=_    |/+\\|\n")
escreva("     | =_  -     |_ = _ `-.-`       | =_ = =    |=_-   ||+||\n")
escreva("     |-_=- _     |=_   =            |=_= -_     |  =   ||+||\n")
escreva("     |=_- /+\\    | -=               |_=- /+\\    |=_    |^^^|\n")
escreva("     |=_ |+|+|   |= -  -_,--,_      |_= |+|+|   |  -_  |=  |\n")
escreva("     |  -|+|+|   |-_=  / |  | \\     |=_ |+|+|   |-=_   |_-/\n")
escreva("     |=_=|+|+|   | =_= | |  | |     |_- |+|+|   |_ =   |=/\n")
escreva("     | _ ^^^^^   |= -  | |  <&>     |=_=^^^^^   |_=-   |/\n")
escreva("     |=_ =       | =_-_| |  | |     |   =_      | -_   |\n")
escreva("     |_=-_       |=_=  | |  | |     |=_=        |=-    |\n")
escreva("^^^^^^^^^^`^`^^`^`^`^^^\"\"\"\"\"\"\"\"^`^^``^^`^^`^^`^`^``^`^``^``^^\n")

u.aguarde(5000)
limpa()

escreva("                                                  !_\n")
escreva("                                                  |*~=-.,\n")
escreva("                                                  |_,-'`\n")
escreva("                                                  |\n")
escreva("Alunos: Não.                                      |\n")
escreva("                                                 /^\\\n")
escreva("                   !_                           /   \\\n")
escreva("                   |*`~-.,                     /,    \\\n")
escreva("                   |.-~^`                     /#\"     \\\n")
escreva("                   |                        _/##_   _  \\_\n")
escreva("              _   _|  _   _   _            [ ]_[ ]_[ ]_[ ]\n")
escreva("             [ ]_[ ]_[ ]_[ ]_[ ]            |_=_-=_ - =_|\n")
escreva("           !_ |_=_ =-_-_  = =_|           !_ |=_= -    |\n")
escreva("           |*`--,_- _        |            |*`~-.,= []  |\n")
escreva("           |.-'|=     []     |   !_       |_.-\"`_-     |\n")
escreva("           |   |_=- -        |   |*`~-.,  |  |=_-      |\n")
escreva("          /^\\  |=_= -        |   |_,-~`  /^\\ |_ - =[]  |\n")
escreva("      _  /   \\_|_=- _   _   _|  _|  _   /   \\|=_-      |\n")
escreva("     [ ]/,    \\[ ]_[ ]_[ ]_[ ]_[ ]_[ ]_/,    \\[ ]=-    |\n")
escreva("      |/#\"     \\_=-___=__=__- =-_ -=_ /#\"     \\| _ []  |\n")
escreva("     _/##_   _  \\_-_ =  _____       _/##_   _  \\_ -    |\\\n")
escreva("    [ ]_[ ]_[ ]_[ ]=_0~{_ _ _}~0   [ ]_[ ]_[ ]_[ ]=-   | \\\n")
escreva("    |_=__-_=-_  =_|-=_ |  ,  |     |_=-___-_ =-__|_    |  \\\n")
escreva("     | _- =-     |-_   | ((* |      |= _=       | -    |___\\\n")
escreva("     |= -_=      |=  _ |  `  |      |_-=_       |=_    |/+\\|\n")
escreva("     | =_  -     |_ = _ `-.-`       | =_ = =    |=_-   ||+||\n")
escreva("     |-_=- _     |=_   =            |=_= -_     |  =   ||+||\n")
escreva("     |=_- /+\\    | -=               |_=- /+\\    |=_    |^^^|\n")
escreva("     |=_ |+|+|   |= -  -_,--,_      |_= |+|+|   |  -_  |=  |\n")
escreva("     |  -|+|+|   |-_=  / |  | \\     |=_ |+|+|   |-=_   |_-/\n")
escreva("     |=_=|+|+|   | =_= | |  | |     |_- |+|+|   |_ =   |=/\n")
escreva("     | _ ^^^^^   |= -  | |  <&>     |=_=^^^^^   |_=-   |/\n")
escreva("     |=_ =       | =_-_| |  | |     |   =_      | -_   |\n")
escreva("     |_=-_       |=_=  | |  | |     |=_=        |=-    |\n")
escreva("^^^^^^^^^^`^`^^`^`^`^^^\"\"\"\"\"\"\"\"^`^^``^^`^^`^^`^`^``^`^``^``^^\n")

u.aguarde(3000)
limpa()

escreva("                                                  !_\n")
escreva("                                                  |*~=-.,\n")
escreva("                                                  |_,-'`\n")
escreva("                                                  |\n")
escreva("Professor:Aposto que o Bennedit Entendeu, pode explicar pra nós?         \n")
escreva("                                                 /^\\\n")
escreva("                   !_                           /   \\\n")
escreva("                   |*`~-.,                     /,    \\\n")
escreva("                   |.-~^`                     /#\"     \\\n")
escreva("                   |                        _/##_   _  \\_\n")
escreva("              _   _|  _   _   _            [ ]_[ ]_[ ]_[ ]\n")
escreva("             [ ]_[ ]_[ ]_[ ]_[ ]            |_=_-=_ - =_|\n")
escreva("           !_ |_=_ =-_-_  = =_|           !_ |=_= -    |\n")
escreva("           |*`--,_- _        |            |*`~-.,= []  |\n")
escreva("           |.-'|=     []     |   !_       |_.-\"`_-     |\n")
escreva("           |   |_=- -        |   |*`~-.,  |  |=_-      |\n")
escreva("          /^\\  |=_= -        |   |_,-~`  /^\\ |_ - =[]  |\n")
escreva("      _  /   \\_|_=- _   _   _|  _|  _   /   \\|=_-      |\n")
escreva("     [ ]/,    \\[ ]_[ ]_[ ]_[ ]_[ ]_[ ]_/,    \\[ ]=-    |\n")
escreva("      |/#\"     \\_=-___=__=__- =-_ -=_ /#\"     \\| _ []  |\n")
escreva("     _/##_   _  \\_-_ =  _____       _/##_   _  \\_ -    |\\\n")
escreva("    [ ]_[ ]_[ ]_[ ]=_0~{_ _ _}~0   [ ]_[ ]_[ ]_[ ]=-   | \\\n")
escreva("    |_=__-_=-_  =_|-=_ |  ,  |     |_=-___-_ =-__|_    |  \\\n")
escreva("     | _- =-     |-_   | ((* |      |= _=       | -    |___\\\n")
escreva("     |= -_=      |=  _ |  `  |      |_-=_       |=_    |/+\\|\n")
escreva("     | =_  -     |_ = _ `-.-`       | =_ = =    |=_-   ||+||\n")
escreva("     |-_=- _     |=_   =            |=_= -_     |  =   ||+||\n")
escreva("     |=_- /+\\    | -=               |_=- /+\\    |=_    |^^^|\n")
escreva("     |=_ |+|+|   |= -  -_,--,_      |_= |+|+|   |  -_  |=  |\n")
escreva("     |  -|+|+|   |-_=  / |  | \\     |=_ |+|+|   |-=_   |_-/\n")
escreva("     |=_=|+|+|   | =_= | |  | |     |_- |+|+|   |_ =   |=/\n")
escreva("     | _ ^^^^^   |= -  | |  <&>     |=_=^^^^^   |_=-   |/\n")
escreva("     |=_ =       | =_-_| |  | |     |   =_      | -_   |\n")
escreva("     |_=-_       |=_=  | |  | |     |=_=        |=-    |\n")
escreva("^^^^^^^^^^`^`^^`^`^`^^^\"\"\"\"\"\"\"\"^`^^``^^`^^`^^`^`^``^`^``^``^^\n")

u.aguarde(3000)
limpa()

escreva("        {^^^^^^^}   Bennedit:  Claro!     \n")
escreva("        ( .___. )        \n")
escreva("        |   ^   |        \n")
escreva("        |  ---  |        \n")
escreva("        |_______|        \n")
escreva("        /|     |\\       \n")
escreva("       / |     | \\      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |_____|  |      \n")
escreva("         |     |         \n")
escreva("         |     |         \n")
escreva("        /       \\        \n")
escreva("       /         \\       \n")
escreva("      /           \\      \n")
escreva("     /             \\     \n")

u.aguarde(3000)
limpa()

escreva("        {^^^^^^^}   Bennedit:  Mesmo que as leis do universo \n")
escreva("        ( .___. )               sejam perfeitamente simétricas,       \n")
escreva("        |   ^   |                o estado real escolhe um ‘lado’, \n")
escreva("        |  ---  |                 e é dessa escolha — da quebra espontânea da simetria \n")
escreva("        |_______|                   que surgem as propriedades que observamos, como massa e forças.\n")
escreva("        /|     |\\       \n")
escreva("       / |     | \\      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |_____|  |      \n")
escreva("         |     |         \n")
escreva("         |     |         \n")
escreva("        /       \\        \n")
escreva("       /         \\       \n")
escreva("      /           \\      \n")
escreva("     /             \\     \n")

u.aguarde(5000)
limpa()

escreva("  _______    Professor : Isso mesmo, Parabens Sr.Greenword        \n")
escreva(" | •   • |          \n")
escreva(" |   ^   |          \n")
escreva(" |  ===  |          \n")
escreva(" |___vv__|          \n")
escreva("    | |             \n")
escreva("  __| |__           \n")
escreva(" |  | |  |          \n")
escreva(" |  | |__|          \n")
escreva("    | |             \n")
escreva("   /   \\            \n")
escreva("  /_____\\           \n")
u.aguarde(5000)
limpa()
u.aguarde(2000)
escreva("Bennedit: Nada, Nada, nada novo pra ler")
escreva("       .--.                   .---.\n")
escreva("   .---|__|           .-.     |~~~|\n")
escreva(".--|===|--|_          |_|     |~~~|--.\n")
escreva("|  |===|  |'\\     .---!~|  .--|   |--|\n")
escreva("|%%|   |  |.'\\    |===| |--|%%|   |  |\n")
escreva("|%%|   |  |\\.'\\   |   | |__|  |   |  |\n")
escreva("|  |   |  | \\  \\  |===| |==|  |   |  |\n")
escreva("|  |   |__|  \\.'\\ |   |_|__|  |~~~|__|\n")
escreva("|  |===|--|   \\.'\\|===|~|--|%%|~~~|--|\n")
escreva("^--^---'--^    `-'`---^-^--^--^---'--' hjw\n")

u.aguarde(5000)
limpa()

escreva("   ____________________________________________________\n")
escreva("  |____________________________________________________|\n")
escreva("  | __     __   ____   ___ ||  ____    ____     _  __  |\n")
escreva("  ||  |__ |--|_| || |_|   |||_|**|*|__|+|+||___| ||  | |\n")
escreva("  ||==|^^||--| |=||=| |=*=||| |~~|~|  |=|=|| | |~||==| |\n")
escreva("  ||  |##||  | | || | |JRO|||-|  | |==|+|+||-|-|~||__| |\n")
escreva("  ||__|__||__|_|_||_|_|___|||_|__|_|__|_|_||_|_|_||__|_|\n")
escreva("  ||_______________________||__________________________|\n")
escreva("  | _____________________  ||      __   __  _  __    _ |\n")
escreva("  ||=|=|=|=|=|=|=|=|=|=|=| __..\\/ |  |_|  ||#||==|  / /|\n")
escreva("  || | | | | | | | | | | |/\\ \\  \\\\|++|=|  || ||==| / / |\n")
escreva("  ||_|_|_|_|_|_|_|_|_|_|_/_/\\_.___\\__|_|__||_||__|/_/__|\n")
escreva("  |____________________ /\\~()/()~//\\  Desconhecido: Talvéz eu tenha algo novo pra você!\n")
escreva("  | __   __    _  _     \\_  (_ .  _/ _    ___     _____|\n")
escreva("  ||~~|_|..|__| || |_ _   \\ //\\\\ /  |=|__|~|~|___| | | |\n")
escreva("  ||--|+|^^|==|1||2| | |__/\\ __ /\\__| |==|x|x|+|+|=|=|=|\n")
escreva("  ||__|_|__|__|_||_|_| /  \\ \\  / /  \\_|__|_|_|_|_|_|_|_|\n")
escreva("  |_________________ _/    \\/\\/\\/    \\_ _______________|\n")
escreva("  | _____   _   __  |/      \\../      \\|  __   __   ___|\n")
escreva("  ||_____|_| |_|##|_||   |   \\/ __|   ||_|==|_|++|_|-|||\n")
escreva("  ||______||=|#|--| |\\   \\   o    /   /| |  |~|  | | |||\n")
escreva("  ||______||_|_|__|_|_\\   \\  o   /   /_|_|__|_|__|_|_|||\n")
escreva("  |_________ __________\\___\\____/___/___________ ______|\n")
escreva("  |__    _  /    ________     ______           /| _ _ _|\n")
escreva("  |\\ \\  |=|/   //    /| //   /  /  / |        / ||%|%|%|\n")
escreva("  | \\/\\ |*/  .//____//.//   /__/__/ (_)      /  ||=|=|=|\n")
escreva("__|  \\/\\|/   /(____|/ //                    /  /||~|~|~|__\n")
escreva("  |___\\_/   /________//   ________         /  / ||_|_|_|\n")
escreva("  |___ /   (|________/   |\\_______\\       /  /| |______|\n")
escreva("      /                  \\|________)     /  / | |\n")

u.aguarde(5000)
limpa()

escreva("        {^^^^^^^}   Bennedit:  Quem é o senhor?    \n")
escreva("        ( .___. )        \n")
escreva("        |   ^   |        \n")
escreva("        |  ---  |        \n")
escreva("        |_______|        \n")
escreva("        /|     |\\       \n")
escreva("       / |     | \\      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |_____|  |      \n")
escreva("         |     |         \n")
escreva("         |     |         \n")
escreva("        /       \\        \n")
escreva("       /         \\       \n")
escreva("      /           \\      \n")
escreva("     /             \\     \n")


u.aguarde(3000)
limpa()

escreva("   ____________________________________________________\n")
escreva("  |____________________________________________________|\n")
escreva("  | __     __   ____   ___ ||  ____    ____     _  __  |\n")
escreva("  ||  |__ |--|_| || |_|   |||_|**|*|__|+|+||___| ||  | |\n")
escreva("  ||==|^^||--| |=||=| |=*=||| |~~|~|  |=|=|| | |~||==| |\n")
escreva("  ||  |##||  | | || | |JRO|||-|  | |==|+|+||-|-|~||__| |\n")
escreva("  ||__|__||__|_|_||_|_|___|||_|__|_|__|_|_||_|_|_||__|_|\n")
escreva("  ||_______________________||__________________________|\n")
escreva("  | _____________________  ||      __   __  _  __    _ |\n")
escreva("  ||=|=|=|=|=|=|=|=|=|=|=| __..\\/ |  |_|  ||#||==|  / /|\n")
escreva("  || | | | | | | | | | | |/\\ \\  \\\\|++|=|  || ||==| / / |\n")
escreva("  ||_|_|_|_|_|_|_|_|_|_|_/_/\\_.___\\__|_|__||_||__|/_/__|\n")
escreva("  |____________________ /\\~()/()~//\\  Desconhecido: Vai querer algo novo ou não?\n")
escreva("  | __   __    _  _     \\_  (_ .  _/ _    ___     _____|\n")
escreva("  ||~~|_|..|__| || |_ _   \\ //\\\\ /  |=|__|~|~|___| | | |\n")
escreva("  ||--|+|^^|==|1||2| | |__/\\ __ /\\__| |==|x|x|+|+|=|=|=|\n")
escreva("  ||__|_|__|__|_||_|_| /  \\ \\  / /  \\_|__|_|_|_|_|_|_|_|\n")
escreva("  |_________________ _/    \\/\\/\\/    \\_ _______________|\n")
escreva("  | _____   _   __  |/      \\../      \\|  __   __   ___|\n")
escreva("  ||_____|_| |_|##|_||   |   \\/ __|   ||_|==|_|++|_|-|||\n")
escreva("  ||______||=|#|--| |\\   \\   o    /   /| |  |~|  | | |||\n")
escreva("  ||______||_|_|__|_|_\\   \\  o   /   /_|_|__|_|__|_|_|||\n")
escreva("  |_________ __________\\___\\____/___/___________ ______|\n")
escreva("  |__    _  /    ________     ______           /| _ _ _|\n")
escreva("  |\\ \\  |=|/   //    /| //   /  /  / |        / ||%|%|%|\n")
escreva("  | \\/\\ |*/  .//____//.//   /__/__/ (_)      /  ||=|=|=|\n")
escreva("__|  \\/\\|/   /(____|/ //                    /  /||~|~|~|__\n")
escreva("  |___\\_/   /________//   ________         /  / ||_|_|_|\n")
escreva("  |___ /   (|________/   |\\_______\\       /  /| |______|\n")
escreva("      /                  \\|________)     /  / | |\n")

u.aguarde(4000)
limpa()

escreva("        {^^^^^^^}   Bennedit:  Quero!    \n")
escreva("        ( .___. )        \n")
escreva("        |   ^   |        \n")
escreva("        |  ---  |        \n")
escreva("        |_______|        \n")
escreva("        /|     |\\       \n")
escreva("       / |     | \\      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |     |  |      \n")
escreva("      |  |_____|  |      \n")
escreva("         |     |         \n")
escreva("         |     |         \n")
escreva("        /       \\        \n")
escreva("       /         \\       \n")
escreva("      /           \\      \n")
escreva("     /             \\     \n")


u.aguarde(3000)
limpa()

contador=0
enquanto(contador<14){
escreva("    __________________   __________________\n")
escreva(".-/|                  \\ /                  |\\-.\n")
escreva("||||                   |                   |||| Desconhecido: Bom Proveito!\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||__________________ | __________________||||\n")
escreva("||/===================\\|/===================\\||\n")
escreva("`--------------------~___~-------------------''\n")

u.aguarde(500)
limpa()

escreva("    __________________   __________________\n")
escreva(".-/|                  \\ /                  |\\-.\n")
escreva("|||| ████████████████ | ████████████████ |||| Desconhecido: Bom Proveito!\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("||||__________________|__________________||||\n")
escreva("||/===================\\|/===================\\||\n")
escreva("`--------------------~___~-------------------''\n")
u.aguarde(500)
limpa()

contador=contador+1
}
}
funcao logico temItem(cadeia itemProcurado)
{
    para (inteiro i = 0; i < qtdItens; i++)
    {
        se (inventario[i] == itemProcurado)
        {
            retorne verdadeiro
        }
    }
    retorne falso
}
funcao logico temDoisItens(cadeia item1, cadeia item2)
{
    se (temItem(item1) e temItem(item2))
    {
        retorne verdadeiro
    }
    senao
    {
        retorne falso
    }
}
funcao ambientacaoSalaPrincipal()
{
  enquanto (verdadeiro)
  {
    escreva("================================\n\n")
    escreva(" um flashback aparece em sua mente \n\n")
    escreva("================================\n\n")
    u.aguarde(2000)
    limpa()
    flashback1()
    u.aguarde(2000)
    escreverDigitando("Você acorda tonto e confuso...")
    escreva("\n")
    escreverDigitando("'-Oque aconteceu?")
    escreverDigitando("-Oque foi isso que eu acabei de ver? aonde eu estou?...'")
    escreva("\n")
    u.aguarde(1000)
    escreverDigitando("Ao seu redor, o ambiente começa a se formar até se tornar oque parece uma grande sala digital.")
    escreverDigitando("Esse lugar parece ser o centro de tudo — uma espécie de sala principal,")
    escreverDigitando("onde vários portais estão conectados.")
    escreva("\n")
    
    escreverDigitando("Diversos portais digitais estão espalhados ao seu redor,")
    escreverDigitando("emitindo leves brilhos e sons quase imperceptíveis.")
    escreverDigitando("Cada um parece levar para um lugar diferente.")
    escreva("\n")

    cadeia pausa
    escreva("\nPressione ENTER para continuar...")
    leia(pausa)
    limpa()

    portais()
  }
}
inteiro contador
  funcao flashback1() {

escreva("██╗███╗   ██╗ ██████╗ ██╗      █████╗ ████████╗███████╗██████╗ ██████╗  █████╗ \n")
escreva("██║████╗  ██║██╔════╝ ██║     ██╔══██╗╚══██╔══╝██╔════╝██╔══██╗██╔══██╗██╔══██╗\n")
escreva("██║██╔██╗ ██║██║  ███╗██║     ███████║   ██║   █████╗  ██████╔╝██████╔╝███████║\n")
escreva("██║██║╚██╗██║██║   ██║██║     ██╔══██║   ██║   ██╔══╝  ██╔══██╗██╔══██╗██╔══██║\n")
escreva("██║██║ ╚████║╚██████╔╝███████╗██║  ██║   ██║   ███████╗██║  ██║██║  ██║██║  ██║\n")
escreva("╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝\n")
u.aguarde(2000)

escreva("                       ██╗  █████╗   ██████╗   ██████╗ \n")
escreva("                      ███║ ██╔══██╗ ██╔════╝  ██╔═████╗\n")
escreva("                      ╚██║ ╚█████╔╝ ████████╗ ██║██╔██║\n")
escreva("                       ██║ ██╔══██╗ ██║   ██║ ████╔╝██║\n")
escreva("                       ██║ ╚█████╔╝ ╚██████╔╝ ╚██████╔╝\n")
escreva("                       ╚═╝  ╚════╝   ╚═════╝   ╚═════╝ \n")
u.aguarde(2000)
limpa()

escreva("            )\n")
escreva("         ( _   _._\n")
escreva("          |_|-'_~_`-._\n")
escreva("       _.-'-_~_-~_-~-_`-._\n")
escreva("   _.-'_~-_~-_-~-_~_~-_~-_`-._\n")
escreva("  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
escreva("    |  []  []   []   []  [] |\n")
escreva("    |           __    ___   |\n")
escreva("  ._|  []  []  | .|  [___]  |_._._._._._._._._._._._._._._._._.\n")
escreva("  |=|________()|__|()_______|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|\n")
escreva("^^^^^^^^^^^^^^^ === ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n")
escreva("    _________    ===\n")
escreva("   <_Brigham_>       ===\n")
escreva("      ^|^             ===\n")
escreva("       |                 ===\n")
u.aguarde(2000)
limpa()

escreva("            )\n")
escreva("         ( _   _._\n")
escreva("          |_|-'_~_`-._\n")
escreva("       _.-'-_~_-~_-~-_`-._ Benedict: Mãeeeeeee!!!\n")
escreva("   _.-'_~-_~-_-~-_~_~-_~-_`-._\n")
escreva("  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
escreva("    |  []  []   []   []  [] |\n")
escreva("    |           __    ___   |\n")
escreva("  ._|  []  []  | .|  [___]  |_._._._._._._._._._._._._._._._._.\n")
escreva("  |=|________()|__|()_______|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|\n")
escreva("^^^^^^^^^^^^^^^ === ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n")
escreva("    _________    ===\n")
escreva("   <_Brigham_>       ===\n")
escreva("      ^|^             ===\n")
escreva("       |                 ===\n")
u.aguarde(2000)
limpa()

escreva("            )\n")
escreva("         ( _   _._\n")
escreva("          |_|-'_~_`-._\n")
escreva("       _.-'-_~_-~_-~-_`-._ Mãe do Benedict: O que aconteuceu ben?\n")
escreva("   _.-'_~-_~-_-~-_~_~-_~-_`-._\n")
escreva("  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
escreva("    |  []  []   []   []  [] |\n")
escreva("    |           __    ___   |\n")
escreva("  ._|  []  []  | .|  [___]  |_._._._._._._._._._._._._._._._._.\n")
escreva("  |=|________()|__|()_______|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|\n")
escreva("^^^^^^^^^^^^^^^ === ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n")
escreva("    _________    ===\n")
escreva("   <_Brigham_>       ===\n")
escreva("      ^|^             ===\n")
escreva("       |                 ===\n")
u.aguarde(2000)
limpa()

escreva("            )\n")
escreva("         ( _   _._\n")
escreva("          |_|-'_~_`-._\n")
escreva("       _.-'-_~_-~_-~-_`-._ Benedict: Olha só a minha mais nova invenção\n")
escreva("   _.-'_~-_~-_-~-_~_~-_~-_`-._\n")
escreva("  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
escreva("    |  []  []   []   []  [] |\n")
escreva("    |           __    ___   |\n")
escreva("  ._|  []  []  | .|  [___]  |_._._._._._._._._._._._._._._._._.\n")
escreva("  |=|________()|__|()_______|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|=|\n")
escreva("^^^^^^^^^^^^^^^ === ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n")
escreva("    _________    ===\n")
escreva("   <_Brigham_>       ===\n")
escreva("      ^|^             ===\n")
escreva("       |                 ===\n")
u.aguarde(2000)
limpa()

escreva("         __           \n")
escreva(" _(\    |@@|      Benedict: É o Ravi, O robo que ajudará,   \n")
escreva("(__/\\__ \\--/ __             todas as mães a lavar os pratos!\n")
escreva("   \\___|----|  |   __ \n")
escreva("       \\ }{ /\\ )_ / _\\\n")
escreva("       /\\__/\\ \\__O (__\n")
escreva("      (--/\\--)    \\__/\n")
escreva("      _)(  )(_        \n")
escreva("     `---''---`       \n")
u.aguarde(4000)
limpa()

escreva(" __________________________________________ \n")
escreva("|          Mãe do Benedict: Que incrivél meu filho, parabéns                                \n")
escreva("|        {~~~~~~~}        _______          |\n")
escreva("|        | •   • |        | •   • |        |\n")
escreva("|        |   ^   |        |   ^   |        |\n")
escreva("|        |   ~   |        |  ---  |        |\n")
escreva("|        |_______|        |_______|        |\n")
escreva("|           | |              | |           |\n")
escreva("|          /   \\           /   \\         |\n")
escreva("|         /     \\         /     \\        |\n")
escreva("|        /       \\          | |           |\n")
escreva("|       /_________\\         | |           |\n")
escreva("|           | |             /   \\         |\n")
escreva("|           | |            /_____\\        |\n")
escreva("|          /   \\                          |\n")
escreva("|         /_____\\                         |\n")
escreva("|_________________________________________|\n")
u.aguarde(3000)
limpa()

escreva(" __________________________________________ \n")
escreva("|          Mãe do Benedict: Mas não ache que voce vai escapar de colacar o lixo pra fora                                |\n")
escreva("|        {~~~~~~~}        _________        |\n")
escreva("|        | •   • |        | •   • |        |\n")
escreva("|        |   ^   |        |   ^   |        |\n")
escreva("|        |   ~   |        |  ---  |        |\n")
escreva("|        |_______|        |_______|        |\n")
escreva("|           | |              | |           |\n")
escreva("|          /   \\           /   \\         |\n")
escreva("|         /     \\         /     \\        |\n")
escreva("|        /       \\          | |           |\n")
escreva("|       /_________\\         | |           |\n")
escreva("|           | |             /   \\         |\n")
escreva("|           | |            /_____\\        |\n")
escreva("|          /   \\                          |\n")
escreva("|         /_____\\                         |\n")
escreva("|__________________________________________|\n")
u.aguarde(3000)
limpa()

escreva(" __________________________________________ \n")
escreva("|                         Benedict: Já sei qual será minha proxima invenção                                \n")
escreva("|        {~~~~~~~}        _________        |\n")
escreva("|        | •   • |        | •   • |        |\n")
escreva("|        |   ^   |        |   ^   |        |\n")
escreva("|        |   ~   |        |  ---  |        |\n")
escreva("|        |_______|        |_______|        |\n")
escreva("|           | |              | |           |\n")
escreva("|          /   \\           /   \\         |\n")
escreva("|         /     \\         /     \\        |\n")
escreva("|        /       \\          | |           |\n")
escreva("|       /_________\\         | |           |\n")
escreva("|           | |             /   \\         |\n")
escreva("|           | |            /_____\\        |\n")
escreva("|          /   \\                          |\n")
escreva("|         /_____\\                         |\n")
escreva("|__________________________________________|\n")
u.aguarde(3000)
limpa()

escreva(" __________________________________________ \n")
escreva("|          Mãe do Benedict: Que orgulho de ter um filho tão inte-                  \n")
escreva("|        {~~~~~~~}        _________        |\n")
escreva("|        | •   • |        | •   • |        |\n")
escreva("|        |   ^   |        |   ^   |        |\n")
escreva("|        |   ~   |        |  ---  |        |\n")
escreva("|        |_______|        |_______|        |\n")
escreva("|           | |              | |           |\n")
escreva("|          /   \\           /   \\         |\n")
escreva("|         /     \\         /     \\        |\n")
escreva("|        /       \\          | |           |\n")
escreva("|       /_________\\         | |           |\n")
escreva("|           | |             /   \\         |\n")
escreva("|           | |            /_____\\        |\n")
escreva("|          /   \\                          |\n")
escreva("|         /_____\\                         |\n")
escreva("|__________________________________________|\n")
u.aguarde(3000)
limpa()

escreva(" ________________________________________________ \n")
escreva("|   Pai de  Benedict: Um imprestavél isso sim                                            \n")
escreva("|  _______    {~~~~~~~}        _______            |\n")
escreva("| | •   • |   | •   • |        | •   • |          |\n")
escreva("| |   ^   |   |   ^   |        |   ^   |          |\n")
escreva("| |  ===  |   |   ~   |        |  ---  |          |\n")
escreva("| |___vv__|   |_______|        |_______|          |\n")
escreva("|    | |         | |              | |             |\n")
escreva("|  __| |__      /   \\           /   \\           |\n")
escreva("| |  | |  |    /     \\         /     \\          |\n")
escreva("| |  | |__|   /       \\          | |             |\n")
escreva("|    | |     /_________\\         | |             |\n")
escreva("|   /   \\        | |            /   \\           |\n")
escreva("|  /_____\\       | |           /_____\\          |\n")
escreva("|               /   \\                            |\n")
escreva("|              /_____\\                           |\n")
escreva("|_________________________________________________|\n")
u.aguarde(3000)
limpa()

escreva(" ________________________________________________ \n")
escreva("|   Pai de  Benedict: fica o dia todo criando esses brinquedos que nao dão futuro                                            |\n")
escreva("|  _______    {~~~~~~~}        _______            |\n")
escreva("| | •   • |   | •   • |        | •   • |          |\n")
escreva("| |   ^   |   |   ^   |        |   ^   |          |\n")
escreva("| |  ===  |   |   ~   |        |  ---  |          |\n")
escreva("| |___vv__|   |_______|        |_______|          |\n")
escreva("|    | |         | |              | |             |\n")
escreva("|  __| |__      /   \\           /   \\           |\n")
escreva("| |  | |  |    /     \\         /     \\          |\n")
escreva("| |  | |__|   /       \\          | |             |\n")
escreva("|    | |     /_________\\         | |             |\n")
escreva("|   /   \\        | |            /   \\           |\n")
escreva("|  /_____\\       | |           /_____\\          |\n")
escreva("|               /   \\                            |\n")
escreva("|              /_____\\                           |\n")
escreva("|_________________________________________________|\n")
u.aguarde(3000)
limpa()

escreva(" ________________________________________________ \n")
escreva("|   Pai de Benedict: Amanhã ele vai começar a me ajudar a gerenciar a fábrica                                           \n")
escreva("|  _______    {~~~~~~~}        _______            |\n")
escreva("| | •   • |   | •   • |        | •   • |          |\n")
escreva("| |   ^   |   |   ^   |        |   ^   |          |\n")
escreva("| |  ===  |   |   ~   |        |  ---  |          |\n")
escreva("| |___vv__|   |_______|        |_______|          |\n")
escreva("|    | |         | |              | |             |\n")
escreva("|  __| |__      /   \\           /   \\           |\n")
escreva("| |  | |  |    /     \\         /     \\          |\n")
escreva("| |  | |__|   /       \\          | |             |\n")
escreva("|    | |     /_________\\         | |             |\n")
escreva("|   /   \\        | |            /   \\           |\n")
escreva("|  /_____\\       | |           /_____\\          |\n")
escreva("|                /   \\                           |\n")
escreva("|               /_____\\                          |\n")
escreva("|_________________________________________________|\n")
u.aguarde(3000)
limpa()

escreverDigitando("                  Um tempo depois na escola primária...               ")
u.aguarde(3000)
limpa()
escreva("                                               /\\      /\\\n")
escreva("                                               ||______||\n")
escreva("                                               || ^  ^ ||\n")
escreva("                                               \\| |  | |/\n")
escreva("   Professora:Pessoal o dr.Wilson não veio       |______|\n")
escreva("              __                                |  __  |\n")
escreva("             /  \\       ________________________|_/  \\_|__\n")
escreva("            / ^^ \\     /=========================/ ^^ \\===|\n")
escreva("           /  []  \\   /=========================/  []  \\==|\n")
escreva("          /________\\ /=========================/________\\=|\n")
escreva("       *  |        |/==========================|        |=|\n")
escreva("      *** | ^^  ^^ |---------------------------| ^^  ^^ |--\n")
escreva("     *****| []  [] |       Escola Primária_____| []  [] | |\n")
escreva("    *******        |          /_____\\          |      * | |\n")
escreva("   *********^^  ^^ |  ^^  ^^  |  |  |  ^^  ^^  |     ***| |\n")
escreva("  ***********]  [] |  []  []  |  |  |  []  []  | ===***** |\n")
escreva(" *************     |         @|__|__|@         |/ |*******|\n")
escreva("***************   ***********--=====--**********| *********\n")
escreva("***************___*********** |=====| **********|***********\n")
escreva(" *************     ********* /=======\\ ******** | *********\n")
u.aguarde(4000)
limpa()

escreva("                                               /\\      /\\\n")
escreva("                                               ||______||\n")
escreva("                                               || ^  ^ ||\n")
escreva("                                               \\| |  | |/\n")
escreva("   alunos:heeeeeeeeeeee!!!                       |______|\n")
escreva("              __                                |  __  |\n")
escreva("             /  \\       ________________________|_/  \\_|__\n")
escreva("            / ^^ \\     /=========================/ ^^ \\===|\n")
escreva("           /  []  \\   /=========================/  []  \\==|\n")
escreva("          /________\\ /=========================/________\\=|\n")
escreva("       *  |        |/==========================|        |=|\n")
escreva("      *** | ^^  ^^ |---------------------------| ^^  ^^ |--\n")
escreva("     *****| []  [] |       Escola Primária_____| []  [] | |\n")
escreva("    *******        |          /_____\\          |      * | |\n")
escreva("   *********^^  ^^ |  ^^  ^^  |  |  |  ^^  ^^  |     ***| |\n")
escreva("  ***********]  [] |  []  []  |  |  |  []  []  | ===***** |\n")
escreva(" *************     |         @|__|__|@         |/ |*******|\n")
escreva("***************   ***********--=====--**********| *********\n")
escreva("***************___*********** |=====| **********|***********\n")
escreva(" *************     ********* /=======\\ ******** | *********\n")
u.aguarde(4000)
limpa()

escreva("                                               /\\      /\\\n")
escreva("                                               ||______||\n")
escreva("                                               || ^  ^ ||\n")
escreva("                                               \\| |  | |/\n")
escreva("   Benedict: Então nao teremos aula de fisica?   |______|\n")
escreva("              __                                |  __  |\n")
escreva("             /  \\       ________________________|_/  \\_|__\n")
escreva("            / ^^ \\     /=========================/ ^^ \\===|\n")
escreva("           /  []  \\   /=========================/  []  \\==|\n")
escreva("          /________\\ /=========================/________\\=|\n")
escreva("       *  |        |/==========================|        |=|\n")
escreva("      *** | ^^  ^^ |---------------------------| ^^  ^^ |--\n")
escreva("     *****| []  [] |       Escola Primária_____| []  [] | |\n")
escreva("    *******        |          /_____\\          |      * | |\n")
escreva("   *********^^  ^^ |  ^^  ^^  |  |  |  ^^  ^^  |     ***| |\n")
escreva("  ***********]  [] |  []  []  |  |  |  []  []  | ===***** |\n")
escreva(" *************     |         @|__|__|@         |/ |*******|\n")
escreva("***************   ***********--=====--**********| *********\n")
escreva("***************___*********** |=====| **********|***********\n")
escreva(" *************     ********* /=======\\ ******** | *********\n")
u.aguarde(4000)
limpa()

escreva(" __________________________________________ \n")
escreva("|         Professora: Não, quem quiser pode ir jogar nas quadras ou ir para biblioteca|\n")
escreva("|        {~~~~~~~}        _______          |\n")
escreva("|        (0)___(0)        | •   • |        |\n")
escreva("|        |   ^   |        |   ^   |        |\n")
escreva("|        |   ~   |        |  ---  |        |\n")
escreva("|        |_______|        |_______|        |\n")
escreva("|           | |              | |           |\n")
escreva("|          /   \\           /   \\         |\n")
escreva("|         /     \\         /     \\        |\n")
escreva("|        /       \\          | |           |\n")
escreva("|       /_________\\         | |           |\n")
escreva("|           | |             /   \\         |\n")
escreva("|           | |            /_____\\        |\n")
escreva("|          /   \\                          |\n")
escreva("|         /_____\\                         |\n")
escreva("|__________________________________________|\n")
u.aguarde(4000)
limpa()

escreva(" ________________________________________________ \n")
escreva("|   Homem misterio: Ei rapaz, tenho um livro interessante pra você\n")
escreva("|  _______                      _______            |\n")
escreva("| | •   • |                    | •   • |          |\n")
escreva("| |   ^   |                    |   ^   |          |\n")
escreva("| |  ===  |                    |  ---  |          |\n")
escreva("| |___vv__|                    |_______|          |\n")
escreva("|    | |                          | |             |\n")
escreva("|  __| |__                       /   \\           |\n")
escreva("| |  | |  |                     /     \\          |\n")
escreva("| |  | |__|                       | |             |\n")
escreva("|    | |                          | |             |\n")
escreva("|   /   \\                       /   \\           |\n")
escreva("|  /_____\\                     /_____\\          |\n")
escreva("|                                                 |\n")
escreva("|_________________________________________________|\n")
u.aguarde(4000)
limpa()

escreva(" ________________________________________________ \n")
escreva("|                      Benedict: Quem é o senhor? |\n")
escreva("|  _______                      _______           |\n")
escreva("| | •   • |                    | •   • |          |\n")
escreva("| |   ^   |                    |   ^   |          |\n")
escreva("| |  ===  |                    |  ---  |          |\n")
escreva("| |___vv__|                    |_______|          |\n")
escreva("|    | |                          | |             |\n")
escreva("|  __| |__                       /   \\           |\n")
escreva("| |  | |  |                     /     \\          |\n")
escreva("| |  | |__|                       | |             |\n")
escreva("|    | |                          | |             |\n")
escreva("|   /   \\                       /   \\           |\n")
escreva("|  /_____\\                     /_____\\          |\n")
escreva("|                                                 |\n")
escreva("|_________________________________________________|\n")
u.aguarde(4000)
limpa()


escreva(" ________________________________________________ \n")
escreva("|   Homem misterioso: Um dia você saberá, agora pegue o livro       \n")
escreva("|  _______                      _______           |\n")
escreva("| | •   • |                    | •   • |          |\n")
escreva("| |   ^   |                    |   ^   |          |\n")
escreva("| |  ===  |                    |  ---  |          |\n")
escreva("| |___vv__|                    |_______|          |\n")
escreva("|    | |                          | |             |\n")
escreva("|  __| |__                       /   \\           |\n")
escreva("| |  | |  |                     /     \\          |\n")
escreva("| |  | |__|                       | |             |\n")
escreva("|    | |                          | |             |\n")
escreva("|   /   \\                       /   \\           |\n")
escreva("|  /_____\\                     /_____\\          |\n")
escreva("|                                                 |\n")
escreva("|_________________________________________________|\n")
u.aguarde(3000)
limpa()

escreva(" ________________________________________________ \n")
escreva("|                      benedict:hmmm..ok?         |\n")
escreva("|  _______                      _______           |\n")
escreva("| | •   • |                    | •   • |          |\n")
escreva("| |   ^   |                    |   ^   |          |\n")
escreva("| |  ===  |                    |  ---  |          |\n")
escreva("| |___vv__|                    |_______|          |\n")
escreva("|    | |                          | |             |\n")
escreva("|  __| |__                       /   \\           |\n")
escreva("| |  | |  |                     /     \\          |\n")
escreva("| |  | |__|                       | |             |\n")
escreva("|    | |                          | |             |\n")
escreva("|   /   \\                       /   \\           |\n")
escreva("|  /_____\\                     /_____\\          |\n")
escreva("|                                                 |\n")
escreva("|_________________________________________________|\n")
u.aguarde(4000)
limpa()

contador=0
enquanto(contador<10){
escreva("    __________________   __________________\n")
escreva(".-/|                  \\ /                  |\\-.\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||                   |                   ||||\n")
escreva("||||__________________ | __________________||||\n")
escreva("||/===================\\|/===================\\||\n")
escreva("`--------------------~___~-------------------''\n")

u.aguarde(100)
limpa()

escreva("    __________________   __________________\n")
escreva(".-/|                  \\ /                  |\\-.\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("|||| ████████████████ | ████████████████ ||||\n")
escreva("||||__________________|__________________||||\n")
escreva("||/===================\\|/===================\\||\n")
escreva("`--------------------~___~-------------------''\n")
u.aguarde(100)
limpa()


contador=contador+1
}
  }
funcao ambientacaoSalaPrincipal1()
{
  enquanto (verdadeiro)
  {
    
    u.aguarde(2000)
    escreverDigitando("Você acorda tonto e confuso...")
    escreva("\n")
    escreverDigitando("'-Oque aconteceu?")
    escreverDigitando("-Oque foi isso que eu acabei de ver? aonde eu estou?...'")
    escreva("\n")
    u.aguarde(1000)
    escreverDigitando("Ao seu redor, o ambiente começa a se formar até se tornar oque parece uma grande sala digital.")
    escreverDigitando("Esse lugar parece ser o centro de tudo — uma espécie de sala principal,")
    escreverDigitando("onde vários portais estão conectados.")
    escreva("\n")
    
    escreverDigitando("Diversos portais digitais estão espalhados ao seu redor,")
    escreverDigitando("emitindo leves brilhos e sons quase imperceptíveis.")
    escreverDigitando("Cada um parece levar para um lugar diferente.")
    escreva("\n")

    cadeia pausa
    escreva("\nPressione ENTER para continuar...")
    leia(pausa)
    limpa()

    portais()
  }
}
  funcao portalSenac()
    {
    escreverDigitando("Você atravessa o Portal 1 e sente uma vibração elétrica no ar.")
    u.aguarde(1000)
    escreva("\n")

  escreverDigitando("Ao abrir os olhos, você vê corredores cheios de servidores ligados.")
  escreverDigitando("Luzes piscam constantemente enquanto o som dos coolers ecoa ao redor.")
  escreverDigitando("Você percebe que está dentro dos servidores do SENAC.")
    escreva("\n")
    explorar()
    retorne
  }
funcao explorar()
{
    inteiro explorar
    escreva("Você deseja explorar este portal?\n")
    escreva("1 - Sim\n")
    escreva("2 - Não\n")
    escreva("\nEscolha: ")
    leia(explorar)
    limpa()

    se (explorar == 1)
    {
      escreverDigitando("Você decide investigar os servidores e encontra algo estranho...")
      escreverDigitando("uma antena digital esta fora de sinal, fazendo um barulho ensurdecedor, você pode arrumar....")
  
      escreva("\nO que deseja fazer?\n")
      escreva("1 - Resolver o problema!\n")
      escreva("2 - Deixar pra lá\n")
      
      inteiro opcao
      leia (opcao)
      limpa()
      
      escolha (opcao)
      {
        caso 1:
          puzzlePortal1()
          pare

        caso 2:
          escreva("Você ignora o problema e segue o caminho...\n")
          continuarCaminho(falso)
          pare
      }
    }
    senao
    {
      escreverDigitando("Opta por não se arriscar e segue adiante, deixando o portal para trás.")
     
      continuarCaminho(falso)
    }
  }
  
  funcao puzzlePortal1()
  {
    inteiro numeroSecreto = u.sorteia(1, 100) 
    inteiro palpite = 0
    inteiro tentativas = 1
    inteiro maximoTentativas = 10
    logico conseguiu = falso

    escreverDigitando("--- DESAFIO DE SINCRONIA ---")
    escreverDigitando("Uma antena digital oscila. Sincronize a frequência (1 a 100).")
    escreverDigitando("Você tem 10 tentativas antes do sistema reiniciar.")
    
    enquanto (tentativas <= maximoTentativas e nao conseguiu)
    {
      escreva("\n[Tentativa ", tentativas, "/", maximoTentativas, "] Frequência: ")
      leia(palpite)

      se (palpite == numeroSecreto)
      {
        limpa() // Limpa todas as tentativas anteriores da tela
        escreverDigitando(">> SUCESSO! Frequência estabilizada em " + numeroSecreto + " MHz.")
        escreverDigitando("O compartimento da antena se abre, revelando um objeto...")
        
        u.aguarde(2000)
        limpa() // Faz ele demorar um pouco (1.5 segundos) para aparecer
        
        // ASCII ART DA RECOMPENSA (TASER)
           escreva("                                                                    \n")
        escreva("                                ....::::.                                \n")
        escreva("                  ..::::::--=+###%#**++*++=-                                \n")
        escreva("    ::.::::-=++++++*#%%%%%%%%%%%%#####***+++=====-----:                     \n")
        escreva(" ..:::-=#################************++++++=======---------:.               \n")
        escreva(":==+=-.  .=######*******************+++++++++===---------------.             \n")
        escreva("=:. ..:+= .:#######************+++++++++++++++===++==++=+**+***-.           \n")
        escreva(".        .#= .=**********************##*+*##+**#*++##=+#*+##*#%*::..:       \n")
        escreva(".    .    =%:.=################*****##**##%***##++##*=+**=+#%#*=..-==.      \n")
        escreva(".   ...    .#-:+%%%%%%##%########**####**###**##*+*##++##++#%#+-.:=====.     \n")
        escreva(".: ... ..  #*###%%%##*#*########**###**###**###**##+**#***%#*--=++++=+=.    \n")
        escreva("= ....... =###%########*#######*#%%***#%**###**##*+*##+*#**+++++++++=+-    \n")
        escreva("=  ......=%##%**##################*###**##%#*#%#+*##+++#*+**######=-=      \n")
        escreva("= ........-%##%%**###%############*####*####*###*+##+++****##***++=-+.      \n")
        escreva("-. .......:%%%#%%%####################**###*##%***#*+****#######+==+:       \n")
        escreva(" =........-##*#################%##%#%#####*####*********##*#*##****-        \n")
        escreva(" =-.......:-:.=##############*########*#####*#******#####%%%%%####:         \n")
        escreva(" .........--:.:################################%%%%%%%%%%%%#%###*-          \n")
        escreva("   ...-=::=*-..:*####################=:::%%%%%%%%%%%#%%%%##****#+* \n")
        escreva("          ........=#####%%%%%%%%%%%%%+      %%%%%%%%%%#%%%%#*****+*#+.      \n")
        escreva("           .+****+*%%%%%%%%%%%%%%%%%-      %%%%%%%%%%#%%%#******+##=-       \n")
        escreva("             +%%%%%%%%%%%%%%%%%%%%%%       +%%%%%%%%%%#%%##*++***###*+      \n")
        escreva("              :#%%%%%%%%%%%%%%%%%%%%:      .%%%%%%%%%%#%%##*###***##*+++     \n")
        escreva("                =+%%%%%%%%%+%%%%%%%%=    .:+#%%%%%%%#%%%##***#*###***+:     \n")
        escreva("                    .:::.    *%%%%%%%:+**%%%%%#####%%%%%###**#####***=-     \n")
        escreva("                               *%%%%%%%**#########%%%%%%###**#########++:    \n")
        escreva("                                -=+*%%#%%%##*+==##%%%#%#%###*#########+#-    \n")
        escreva("                                      .::.      =#%#%%#%%%###%#######*#*+    \n")
        escreva("                                                -#%#####%%%##########****.    \n")
        escreva("                                                :#%%%%%%%%####**#%%#**#**-    \n")
        escreva("                                                 #%%%%%%%%%###*##%#+####*-    \n")
        escreva("                                                 +#%%%%%%%#%####%%###*#**=    \n")
        escreva("                                                 -###%%%%%%##*###**#*#*#=     \n")
        escreva("                                                  #%%%%%%%%#%####*###*=.      \n")
        escreva("                                                  -#%%%%%%%%#%#####+.         \n")
        escreva("                                                   *%%%%%%%%%%%#+:            \n")
        escreva("                                                     :-+%%%%%*=:              \n")
        escreva("                                                        .:.                   \n")
        escreva("\n>> RECOMPENSA OBTIDA: [TASER ELÉTRICO] <<\n")
        adicionarItem("Taser Elétrico")
        u.aguarde(2000)
        conseguiu = verdadeiro
      }
      senao
      {
        se (palpite < numeroSecreto)
        {
          escreva(" Muito BAIXO! Aumente a potência.\n")
        }
        senao
        {
          escreva(">> Muito ALTO! Diminua a carga.\n")
        }
        tentativas++
      }
    }

    se (nao conseguiu)
    {
      escreva("\n")
      limpa()
      escreverDigitando("SISTEMA RESETADO! Você falhou em sincronizar a tempo.")
       u.aguarde(1500)
      inteiro opcao
      escreva("Deseja tentar novamente?\n")
      escreva("1 - sim!\n")
      escreva("2 - não.\n")
        
      escreva("\nEscolha: ")
      leia (opcao)
      limpa()
      escolha(opcao)
      {
      caso 1:
            puzzlePortal1()
            pare
      caso 2:
            verificarArmas(falso)
            pare
      }

      
      portalSenac() 
    }
    senao
    {
      escreva("\nPressione Enter para continuar...")
      cadeia pausa
      leia(pausa)
      limpa()
      continuarCaminho(verdadeiro)
    }
  }

  funcao continuarCaminho(logico ganhouArma)
  {
    // Se ganhou a arma, pula o texto. Se não ganhou, exibe.
    se (ganhouArma == falso) 
    {
       escreverDigitando("Você segue o caminho principal sem desvios.")
       cadeia pausa
      escreva("\nPressione ENTER para continuar...")
      leia(pausa)
      limpa()
    }
    
    u.aguarde(1000)
    verificarArmas(ganhouArma) 
  }

  funcao verificarArmas(logico temTaser)
  {
    limpa()
    se (temTaser == verdadeiro)
    {
      escreverDigitando("Você guarda sua arma, e agora com mais confiança, você continua pelo caminho, atento a qualquer movimento ao seu redor.")
      escreverDigitando("O ambiente ainda parece instável, mas agora você está preparado para o que vier.")
      escreverDigitando("De repente, algo surge à sua frente.")
      escreverDigitando("Um inimigo se forma, bloqueando sua passagem.")
      escreverDigitando("Você observa por um instante… e decide enfrentá-lo.")
      escreverDigitando("Sem hesitar, você se posiciona para o combate...")
      u.aguarde(1500)
      batalhaNormal() 
      retorne
    }
    senao
    {
      escreverDigitando("Você continua pelo caminho, sem nada em mãos, apenas contando com seus próprios reflexos.")
      escreverDigitando("O ambiente ao seu redor parece mais pesado, como se percebesse sua falta de preparo.")
      escreverDigitando("De repente, algo surge à sua frente.")
      escreverDigitando("Um inimigo se forma, bloqueando sua passagem.")
      escreverDigitando("Você hesita por um instante… mas não há como evitar.")
      escreverDigitando("Sem arma, sem vantagem, você decide enfrentá-lo mesmo assim.")
      escreverDigitando("Agora, tudo depende de você...")
      escreva("\n")
      
      escreva("Deseja batalhar sem armas? (1-Sim / 2-Não): ")
      inteiro lutarSemArma
      leia(lutarSemArma)
      limpa() 
      
      se (lutarSemArma == 1) {
        batalhaDificil() 
        retorne
      } senao {
        VOLTANDO() 
      }
    }
  }

  funcao batalhaNormal() {
    escreverDigitando("Iniciando BATALHA (Dificuldade Normal)...")
    logico venceu = batalha_malware() 

    // Quando a função do Bruno acabar, o código volta para cá:
    se (venceu == verdadeiro) 
    {
      vitoria()
      visitouPortal1=verdadeiro
    } 
    senao 
    {
      derrota()
    }
  }

  funcao batalhaDificil() {
    escreverDigitando("Iniciando BATALHA (Dificuldade ALTA)...")
    logico venceu = batalha_malware_hard() 

    
    u.aguarde(1500)
    se (venceu == verdadeiro) 
    {
      vitoria()
      visitouPortal1=verdadeiro
    } 
    senao 
    {
      derrota()
    }
  }
  

  funcao logico batalha_malware(){

    // atributos malware
    inimigo_vida = 200
    inimigo_ataque = 25
    inimigo_vel = 10
    
    // batalha
    enquanto (vida > 0 e inimigo_vida > 0){
      
      // sistema antipoluicao de console 
      limpa()

      // dados de batalha
      escreva("\nDoneda: ", vida, " | Malware: ", inimigo_vida, "\n")
      escreva("1) Atacar\n2) Defender\n3) Curar\n4) Aumentar o ataque\n5) Usar arma\n")

      se(estado == "op"){
      inteiro op
      leia(op)

      // batalha

        // JOGADOR
        evasiva = u.sorteia(0, 100)

        se (op == 1){
          limpa()
          se(evasiva >= 15){
          inimigo_vida -= ataque
          escreva("Você atacou!\n")
          } senao {
          escreva("Você errou seu ataque \n")
        }
        estado = "inimigo"
        }
        
        se (op == 2){
          limpa()
          defesa += 5
          escreva("Você se defendeu!\n")
          estado = "inimigo"
        }

        se (op == 3){
          limpa()
          vida += 30
          escreva("Você se curou!\n")
          estado = "inimigo"
        }

        se (op == 4){
          limpa()
          ataque += 10
          escreva("Você aumentou seu Ataque\n")
          estado = "inimigo"
        }
        se (op == 5){
        limpa()
        usarItem()
        estado = "inimigo"
        }
        senao se(op != 1 ou 2 ou 3 ou 4 ou 5){
        escreva("Inválido")
        estado = "op"
        }
        }

        u.aguarde(1000)
        // INIMIGO
        se (estado == "inimigo"){
        ataque_malware()
        estado = "op"
        }
        u.aguarde(1000)

  }
  // RESULTADO
    se (vida <= 0){

      limpa()
      escreva("Você perdeu!\n")
      tent += 1
      resetar()
      retorne falso

    } senao {

      limpa()
      escreva("Você derrotou o Malware!\n")
      malware_def = verdadeiro

      pontos_add -= 20 * tent
      se(pontos_add <= 0){
        pontos_add = 0
      }
      pontos += pontos_add
      escreva(pontos)
      resetar()
    
      u.aguarde(1000)
      limpa()
      
      retorne verdadeiro

    }

    u.aguarde(1000)
    limpa()
    
  }
  
funcao logico batalha_malware_hard(){

    inimigo_vida = 400
    inimigo_ataque = 40
    inimigo_vel = 15
    inteiro pontos_add = 300

    enquanto (vida > 0 e inimigo_vida > 0){

      limpa()
      escreva("\nDoneda: ", vida, " | Malware HARD: ", inimigo_vida, "\n")
      escreva("1) Atacar\n2) Defender\n3) Curar\n4) Aumentar o ataque\n5) Usar arma\n")
      
      se (estado == "op"){
      inteiro op
      leia(op)

      evasiva = u.sorteia(0, 100)

      se (op == 1){
        se(evasiva >= 25){ // antes 15
          inimigo_vida -= ataque
          escreva("Você atacou!\n")
        } senao {
          escreva("Você errou!\n")
        }
      }

      se (op == 2){
        defesa += 4 // antes 5 (leve nerf)
        escreva()
        estado = "inimigo"
      }

      se (op == 3){
        vida += 20 // antes 30
        estado = "inimigo"
      }

      se (op == 4){
        ataque += 8 // antes 10
        estado = "inimigo"
      }
      se (op == 5){
        limpa()
        usarItem()
        estado = "inimigo"
        }

      senao se (op != 1 ou 2 ou 3 ou 4 ou 5){
        escreva("Inválido")
        estado = "op"
      }
      }

      u.aguarde(1000)

      se (estado == "malware"){
      ataque_malware_hard()
      u.aguarde(1000)
      estado = "op"
      }
    }

    se (vida <= 0){
      escreva("Você perdeu!\n")
      tent++
      resetar()
      retorne falso
    } senao {
      escreva("Você venceu!\n")
      pontos += pontos_add
      resetar()
      retorne verdadeiro
    }
}

funcao resetar(){
    vida = 300
    ataque = 20
    defesa = 10
    buff = falso
  }
  // malware ataque
  funcao ataque_malware(){
    inteiro mov = u.sorteia(0,100)

    se (mov <= 40){
      inimigo_ataque += 5
      escreva("Malware aumentou seu ataque\n")
    }
    senao se (mov <= 85){
      inteiro dano = inimigo_ataque - defesa
      se (dano < 0){
        dano = 0
      }
      vida -= dano
      escreva("Malware atacou!\n")
    }
    senao {
      escreva("Malware errou!\n")
    }
  }
  funcao ataque_malware_hard(){
    inteiro mov = u.sorteia(0,100)

    se (mov <= 40){
      inimigo_ataque += 10
      escreva("Malware aumentou seu ataque\n")
    }
    senao se (mov <= 85){
      inteiro dano = inimigo_ataque - defesa
      se (dano < 0){
        dano = 0
      }
      vida -= dano
      escreva("Malware atacou!\n")
    }
    senao {
      escreva("Malware errou!\n")
    }
  }
  
funcao vitoria()
  {
    limpa()
    escreva("====================================\n")
    escreva("*             VITÓRIA              *\n")
    escreva("====================================\n")
    escreverDigitando("O inimigo se desfaz diante de você, desaparecendo em fragmentos digitais.")
    escreverDigitando("Por um momento, tudo fica em silêncio..")
    escreverDigitando("Então, sua visão começa a falhar…")
    escreverDigitando("Um flashback invade sua mente.")
    u.aguarde(3000)
    limpa()
    escreva("Benedict: Esse equipamento é quase impossivél de criar!  ")  
escreva("        _________   _________\n")
escreva("   ____/      452\\ /     453 \\____\n")
escreva(" /| ------------- |  ------------ |\\\n")
escreva("||| ------------- | ------------- |||\n")
escreva("||| ------------- | ------------- |||\n")
escreva("||| ------- ----- | ------------- |||\n")
escreva("||| ------------- | ------------- |||\n")
escreva("||| ------------- | ------------- |||\n")
escreva("|||  ------------ | ----------    |||\n")
escreva("||| ------------- |  ------------ |||\n")
escreva("||| ------------- | ------------- |||\n")
escreva("||| ------------- | ------ -----  |||\n")
escreva("||| ------------  | ------------- |||\n")
escreva("|||_____________  |  _____________|||\n")
escreva("L/_____/--------\\\\_//W-------\\_____\\J\n")
u.aguarde(4000)
limpa()

escreva("Benedict: Tem elementos aqui que não existem   ")  
escreva("        _________   _________\n")
escreva("   ____/      454\\ /     455 \\____\n")
escreva(" /| ------------- |  ------------ |\\\n")
escreva("||| ------------- | ------------- |||\n")
escreva("||| ------------- | ------------- |||\n")
escreva("||| ------- ----- | ------------- |||\n")
escreva("||| ------------- | ------------- |||\n")
escreva("||| ------------- | ------------- |||\n")
escreva("|||  ------------ | ----------    |||\n")
escreva("||| ------------- |  ------------ |||\n")
escreva("||| ------------- | ------------- |||\n")
escreva("||| ------------- | ------ -----  |||\n")
escreva("||| ------------  | ------------- |||\n")
escreva("|||_____________  |  _____________|||\n")
escreva("L/_____/--------\\\\_//W-------\\_____\\J\n")
u.aguarde(4000)
limpa()
escreva("Benedict: O que esse equipamento faz? Ele transfere a mente pra onde?  ")  
escreva("        _________   _________\n")
escreva("   ____/      456\\ /     457 \\____\n")
escreva(" /| ------------- |  ------------ |\\\n")
escreva("||| ------------- | ------------- |||\n")
escreva("||| ------------- | ------------- |||\n")
escreva("||| ------- ----- | ------------- |||\n")
escreva("||| ------------- | ------------- |||\n")
escreva("||| ------------- | ------------- |||\n")
escreva("|||  ------------ | ----------    |||\n")
escreva("||| ------------- |  ------------ |||\n")
escreva("||| ------------- | ------------- |||\n")
escreva("||| ------------- | ------ -----  |||\n")
escreva("||| ------------  | ------------- |||\n")
escreva("|||_____________  |  _____________|||\n")
escreva("L/_____/--------\\\\_//W-------\\_____\\J\n")
u.aguarde(5000)
limpa()

escreva(" __________________________________________\n")
escreva("|   Pai de  Benedict: De novo lendo esse livro?                                           \n")
escreva("|  _______             _______            |\n")
escreva("| | •   • |           | •   • |           |\n")
escreva("| |   ^   |           |   ^   |           |\n")
escreva("| |  ===  |           |  ---  |           |\n")
escreva("| |___vv__|           |_______|           |\n")
escreva("|    | |                 | |              |\n")
escreva("|  __| |__              /   \\             |\n")
escreva("| |  | |  |            /     \\            |\n")
escreva("| |  | |__|              | |              |\n")
escreva("|    | |                 | |              |\n")
escreva("|   /   \\               /   \\             |\n")
escreva("|  /_____\\             /_____\\            |\n")
escreva("|                                         |\n")
escreva("|                                         |\n")
escreva("|_________________________________________|\n")
u.aguarde(4000)
limpa()

escreva(" __________________________________________\n")
escreva("|                      Benedict: Pai, oque tem nesse livro pode mudar o mundo !                                       \n")
escreva("|  _______             _______            |\n")
escreva("| | •   • |           | •   • |           |\n")
escreva("| |   ^   |           |   ^   |           |\n")
escreva("| |  ===  |           |  ---  |           |\n")
escreva("| |___vv__|           |_______|           |\n")
escreva("|    | |                 | |              |\n")
escreva("|  __| |__              /   \\             |\n")
escreva("| |  | |  |            /     \\            |\n")
escreva("| |  | |__|              | |              |\n")
escreva("|    | |                 | |              |\n")
escreva("|   /   \\               /   \\             |\n")
escreva("|  /_____\\             /_____\\            |\n")
escreva("|                                         |\n")
escreva("|                                         |\n")
escreva("|_________________________________________|\n")
u.aguarde(5000)
limpa()

escreva(" __________________________________________\n")
escreva("|   Pai de  Benedict: Besteira!!! Você nunca fará algo de relevante pro mundo!                                          \n")
escreva("|  _______             _______            |\n")
escreva("| | •   • |           | •   • |           |\n")
escreva("| |   ^   |           |   ^   |           |\n")
escreva("| |  ===  |           |  ---  |           |\n")
escreva("| |___vv__|           |_______|           |\n")
escreva("|    | |                 | |              |\n")
escreva("|  __| |__              /   \\             |\n")
escreva("| |  | |  |            /     \\            |\n")
escreva("| |  | |__|              | |              |\n")
escreva("|    | |                 | |              |\n")
escreva("|   /   \\               /   \\             |\n")
escreva("|  /_____\\             /_____\\            |\n")
escreva("|                                         |\n")
escreva("|                                         |\n")
escreva("|_________________________________________|\n")
u.aguarde(5000)
limpa()

    escreverDigitando("Você volta ao presente, ainda tentando entender o que viu.")
    escreverDigitando("No chão, algo surge lentamente.")
    escreverDigitando("Você encontra uma chave digital… ")
    escreverDigitando("e ao lado dela, uma arma diferente de todas as outras: Bit Sword.")
    u.aguarde(1000)
 escreva("                                                                                                                              .=+++++*= \n")
escreva("                                                                                                                           -+++====+*#= \n")
escreva("                                                                                                                          -++**++=+#### \n")
escreva("                            .::-=-:::.:-=-:=-.                                                                          :=+++++=+*%%##= \n")
escreva("                          ::-+#*==+*=::-   .=-:                                                                       -=-==-==+#%%%##-  \n")
escreva("                         ::-+: .:-*==--+-:..:--                                                                     -=-++==+=#%%@%#*-   \n")
escreva("                         :::   -+=---**=-+#**=-:                                                                  :*-==++==*%%%#%*-     \n")
escreva("                         -=--:. .::.--=-=+=--*#-:                                                              .-=-=+#===#%%%%%*:       \n")
escreva("                          :==----:-:  -*=--=+ .-:.                                                            :--==-+=-*%####*-         \n")
escreva("                             --=**%=-:..:::-  ....                                                          ---=+++-=*%%%##*-           \n")
escreva("                             +*+#%+#+---::..::::=:                                                        -+-+*++--*%@%%#*-             \n")
escreva("                           =+-%%-:  .--:...:-==-                                                        :+#++=+==*%%%%%*-               \n")
escreva("                        .-:-%%--            .                                           -+++=.        -=-+*=-=-*%%%@%#-                 \n")
escreva("                        .-%=+-                                                         -++*+-#:     :--++++--*%%%###-                   \n")
escreva("             ..       .-#@=.                                                           =####**@=. -==++*+-=*%%###*-                     \n")
escreva("           .::::..  .-#@*.                                                              -+*#@%***#++=++--*%@@#*+:                       \n")
escreva("         ..:::.:::::+@#.                                                                   -@%##%+#*+==*%#%%*+-                         \n")
escreva("       ..:::::::-:+%%:                                                                       =#@*#*+*#%%%%*+-                           \n")
escreva("      ..::::::-:=%%-                                                                          +@*%*%*+%@%#-                             \n")
escreva("    ...::::.-:=#%=                                                                         .+%@@#%%#+*%%+=:                             \n")
escreva("      ... ..:*@+.                                                                        .+%%@%#@%+-##@#*#%=:.                          \n")
escreva("         ::=#*.                                                                        .*%@##@%@@*   -%%**#*+=+                         \n")
escreva("          --.                                                                      %%*#%**%%%@@%.#:    -##%%%**                         \n")
escreva("                                                                                   @#+-+*#%@+ @%.@+     =*****-                         \n")
escreva("                                                                                   =%%#==+%:  @% =#-                                    \n")
escreva("                                                                                     =#@%#@-  @# :#+                                    \n")
escreva("                                                                                      ::::   @+   .                                     \n")
  

    escreva(">> RECOMPENSAS OBTIDAS: [CHAVE (1)] [BIT SWORD]<<")
    adicionarItem("Chave [1]")
    adicionarItem("Bit Sword")
    escreverDigitando("Agora, você está mais próximo da verdade… e do que te espera no final....")
    escreverDigitando("Você retorna a sala principal para continuar sua aventura...")
   cadeia pausa
    escreva("Pressione ENTER para continuar...")
    leia(pausa)
    limpa()
    portais()
  }

  funcao derrota()
  {
    limpa()
    escreva("====================================\n")
    escreva("#             DERROTA              #\n")
    escreva("====================================\n")
    escreverDigitando("A batalha chega ao fim… e você não consegue continuar.")
    escreverDigitando("O inimigo permanece de pé, enquanto sua visão escurece completamente.")
    escreverDigitando("Tudo desaparece.")
    escreverDigitando("...")

    u.aguarde(2000)
    morte()
  }
  
  inteiro mortes=0
funcao morte()
{
    mortes++

    se (mortes >= 3)
    {
        gameOver()
    }
    senao
    {
        escreverDigitando("Você foi derrotado...")
        escreverDigitando("Você ainda tem mais "+ (3 - mortes)+ " chances.\n\n")
        escreverDigitando("Após alguns instantes, você recobra a consciência.")
      escreverDigitando("Você está de volta à sala principal.")

        cadeia pausa
        escreva("\nPressione ENTER para tentar novamente...")
        leia(pausa)
        limpa()

        // volta pro jogo (onde você quiser)
        ambientacaoSalaPrincipal1()
    }
}

funcao gameOver()
{
    limpa()
escreva("                                                                                                              \n")
escreva("                     ██████╗  █████╗ ███╗   ███╗███████╗     ██████╗ ██╗   ██╗███████╗██████╗                 \n")
escreva("                    ██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔═══██╗██║   ██║██╔════╝██╔══██╗                \n")
escreva("                    ██║  ███╗███████║██╔████╔██║█████╗      ██║   ██║██║   ██║█████╗  ██████╔╝                \n")
escreva("                    ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗                \n")
escreva("                    ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ╚██████╔╝ ╚████╔╝ ███████╗██║  ██║                \n")
escreva("                     ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝                \n")
escreva("                                                                                                              \n")
escreva("                              .--:                                          :--:                              \n")
escreva("                             +#####:                                      .*####*                             \n")
escreva("                          :--######=                                      :######=-:                          \n")
escreva("                         +#########-                                      :#########*                         \n")
escreva("                         *##########*-                                  :*###########                         \n")
escreva("                          -+++=*######*-      .-=+**#######*+=-:      :*#######=+++=.                         \n")
escreva("                                -*#####+.  :+####################+-   =######-                                \n")
escreva("                                  :*##-  :*#########################=  .*#*-                                  \n")
escreva("                                    ::  +############################*.  -                                    \n")
escreva("                                       +##############################*                                       \n")
escreva("                                      :################################=                                      \n")
escreva("                                      +#################################                                      \n")
escreva("                                      ##################################:                                     \n")
escreva("                                      ##################################:                                     \n")
escreva("                                      *#################################.                                     \n")
escreva("                                      :#####+-:..:-+######*=:..:-=#####+                                      \n")
escreva("                                       ####:        +####*         *###:                                      \n")
escreva("                                       ####         =####*         =###:                                      \n")
escreva("                                      .####=      .=######+:      :####=                                      \n")
escreva("                                      .######*+++############*+++######-                                      \n")
escreva("                                       -##############:.*#############+                                       \n")
escreva("                                         :=*#########:   *########*+-.                                        \n")
escreva("                                    :+*=:   :########++++*#######=   .-**:                                    \n")
escreva("                                  :+######-  =##################*  .######*:                                  \n")
escreva("                                :*#######-    .-==++*******++=-:    -*######*-                                \n")
escreva("                          -=+=-*#######-                              -*######*-=+=-                          \n")
escreva("                         *###########-                                  -*##########*                         \n")
escreva("                         *#########-                                      -#########*                         \n")
escreva("                          :==######-                                      :######+=-                          \n")
escreva("                             *#####:                                      .######                             \n")
escreva("                              :==-.                                         :==-                              \n")

    escreverDigitando("Após tantas falhas, seu sistema entra em colapso...")
    escreverDigitando("A infraestrutura ao seu redor se desfaz completamente.")
    escreverDigitando("Não há mais retorno, o B.U.G venceu...")

    cadeia pausa
    escreva("\nPressione ENTER para reiniciar...")
    leia(pausa)
    limpa()

    // reseta tudo
    mortes = 0
    fezPuzzle1 = falso
    fezPuzzle2 = falso

    // volta pro início
    inicio()
}
  funcao VOLTANDO() {
    escreverDigitando("Você decide não lutar... ")
    escreverDigitando("Então volta ao portal, em busca de novos recursos...\n")
    u.aguarde(1000)
    explorar()
    

  }

}

