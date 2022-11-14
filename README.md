# SAP-1

![alt text](https://github.com/diegonagai/SAP-1/blob/main/block_diagram.png)

O [**SAP-1**](https://embarcados.com.br/serie/um-microprocessador-tao-simples-quanto-possivel/) é um processador didático de 8-bit utilizado no ensino de arquitetura de computadores.

Meu primeiro contato com o SAP-1 foi na graduação e alguns anos depois ele voltou, mas desta vez na pós-graduação em [**sistemas embarcados**](https://eletronica.sp.senai.br/6817/sistemas-embarcados?Parent=3187).
No curso de sistemas embarcados ele foi usado como base na disciplina de Eletrônica Embarcada com FPGA e utilizamos a linguagem VHDL para a descrição do harware.
Todo o processo de desenvolvimento abordou as principais características da linguagem VHDL e o uso e as características das FPGAs.

Apesar do projeto original ter sido feito em **VHDL** decidi fazer a minha versão em **Verilog** para aprender uma nova linguagem de descrição de hardware e este é o resultado.
Com este projeto foi possível entender as principais características do Verilog bem como ver as [**diferenças e semelhanças**](https://embarcados.com.br/verilog-vs-vhdl/) com o VHDL.

O projeto está organizado da seguinte forma:

A pasta **modules** contém todos os blocos do SAP-1 e a pasta **firmware** contém um programa de teste.

Não há um bloco para o indicador visual que está conectado no registrador de saída mas há um testbech simples para a verificação do funcionamento do SAP-1 via simulação.
