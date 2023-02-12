# <center> 🔗 HASH IDENTIFICADOR
<BR>

- Este script é uma ferramenta para verificar a hash de um arquivo e identificar o tipo de hash utilizado. Ele foi criado para ser executado em sistemas operacionais compatíveis com o comando bash, como o Linux e o Android (com o Termux).
## <center> 📜 Requisitos 
<BR>

 - Antes de usar o script, é necessário verificar se o comando hashid está instalado no sistema. Se não estiver, o script tenta instalá-lo de acordo com o sistema operacional em que está sendo executado.

## <center> 💻 Utilização  

```bash 
 1. Faça o clone deste repositório para o seu computador.

    $ git clone https://github.com/ddn0x/hash.git

2. Abra o terminal e vá até o diretório onde você clonou o repositório. 

3. Logo em seguida e necessario torná-lo executável com o seguinte comando.

    $ chmod +x ./hash.sh  

4. Você pode chamar o script passando o comando anal e o nome do arquivo como argumentos, por exemplo:

    $ ./hash.sh hash hash.txt
    Hash do arquivo hash.txt:
     --File 'hash.txt'--
     Analyzing 'e63b1457775e3a3be48ab688f0b8583b9149ad09'
       [+] SHA-1 
       [+] Double SHA-1 
       [+] RIPEMD-160 
       [+] Haval-160 
       [+] Tiger-160 
       [+] HAS-160 
       [+] LinkedIn 
       [+] Skein-256(160) 
       [+] Skein-512(160) 
       Analyzing '26460f32a3164e6382436aba45eaf862'
       [+] MD2 
       [+] MD5 
       [+] MD4 
       [+] Double MD5 
       [+] LM 
       [+] RIPEMD-128 
       [+] Haval-128 
       [+] Tiger-128 
       [+] Skein-256(128) 
       [+] Skein-512(128) 
       [+] Lotus Notes/Domino 5 
       [+] Skype 
       [+] Snefru-128 
       [+] NTLM 
       [+] Domain Cached Credentials 
       [+] Domain Cached Credentials 2 
       [+] DNSSEC(NSEC3) 
       [+] RAdmin v2.x 
       --End of file 'hash.txt'--

    
    $ ./hash.sh hash '26460f32a3164e6382436aba45eaf862'
        Hash do arquivo 26460f32a3164e6382436aba45eaf862:
        Analyzing '26460f32a3164e6382436aba45eaf862'
        [+] MD2 
        [+] MD5 
        [+] MD4 
        [+] Double MD5 
        [+] LM 
        [+] RIPEMD-128 
        [+] Haval-128 
        [+] Tiger-128 
        [+] Skein-256(128) 
        [+] Skein-512(128) 
        [+] Lotus Notes/Domino 5 
        [+] Skype 
        [+] Snefru-128 
        [+] NTLM 
        [+] Domain Cached Credentials 
        [+] Domain Cached Credentials 2 
        [+] DNSSEC(NSEC3) 
        [+] RAdmin v2.x 


```
# <center> 💡 Observações 
- O script exibirá a hash e o tipo de hash do arquivo fornecido.
 <br><br>


> - Codado por [ddn0x ](https://github.com/ddn0x) 

