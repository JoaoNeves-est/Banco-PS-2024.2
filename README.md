# Banco-PS-2024.2

Alterações:
- Filtros: Olimpiadas de Verão de 2000 até 2016.
- Seleção de variáveis: Athlet, Sex, Age, Weight, Height, Sport, Event.
- O ana ficará implícito pela cidade em que ocorreu a Olimpiada.
- Transformação de kilogramas para libras.
- Separação do banco em .xlsx e csv:
  - Observe que aqui temos que escolher qual o formato para o PS.
  - No .xlsx é uma planilha só com as abas sendo cada uma uma Olimpiada.
      - Aqui há uma diferença entre observações do tipo character e numeric.
  - No .csv cada arquivo é uma Olimpiada.
- Mudança no nome das colunas para dificultar o bind_rows().

Processos:
- Importar todas as planilhas/ arquivos.
- Pesquisar para descobrir qual é o ano daquela Olimpiada.
- Adicionar uma coluna com informção do ano.
- Corrigir o nome das colunas.
- Juntar todas as observações.
