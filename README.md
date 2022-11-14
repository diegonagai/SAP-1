# SAP-1

![alt text](https://github.com/diegonagai/SAP-1/blob/main/block_diagram.png)

O [**SAP-1**](https://embarcados.com.br/serie/um-microprocessador-tao-simples-quanto-possivel/) é um processador didático de 8-bit utilizado no ensino de arquitetura de computadores.

Meu primeiro contato com o SAP-1 foi na graduação, mas alguns anos depois ele voltou, desta vez na pós-graduação em [**sistemas embarcados**](https://eletronica.sp.senai.br/6817/sistemas-embarcados?Parent=3187).
No curso de sistemas embarcados ele foi usado como base na disciplina de Eletrônica Embarcada com FPGA. A idéia era criar um sistema eletrônico completo e embarcá-lo em uma FPGA. Nesta disciplina utilizamos a linguagem VHDL para a descrição do harware e todo o processo de desenvolvimento abordou as principais características da linguagem VHDL e o uso e as características das FPGAs.

Apesar do projeto original ter sido feito em **VHDL** decidi fazer a minha versão em **Verilog** para aprender uma nova HDL (hardware description language) e este repositório é o resultado desse aprendizado.
Com este projeto foi possível entender as principais características do Verilog bem como ver as [**diferenças e semelhanças**](https://embarcados.com.br/verilog-vs-vhdl/) com o VHDL.

O repositório está organizado da seguinte forma:

A pasta **modules** contém todos os blocos do SAP-1 e um testbench simples para simulação e a pasta **firmware** contém um programa de teste que é carregado na inicialização da memória.

