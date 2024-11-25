# Desafio_bugbank
Desafio_bugbank

Browser = firefox

geckodriver --version  =>  0.35.0
robot --version        =>  7.1.1
python                 =>  3.12.2



Para executar os teste rode o comando:  
robot .\bugbank_testes.robot

caso queira executar apenas os testes com uma tag especifica rode:

    'robot --include tag .\bugbank_testes.robot'

Exemplo com a tag login_nok:

    '''robot --include login_nok .\bugbank_testes.robot'''



site: https://bugbank.netlify.app/home
