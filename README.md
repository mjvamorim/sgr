# sgr
git submodule add  --force https://github.com/CaledoniaTech/App_Siri.git app
git submodule add  --force https://github.com/CaledoniaTech/SGR_Siri_Front frontend
git  submodule add  --force https://github.com/CaledoniaTech/SGR_Siri_Backend backend


# Execução
Fazer o restore do banco de dados
Rodar o backend : cd backend && flask run
Rodar o frontend : cd frontend && yarn start

# Tarefas
- Documentação da Base Postgres
- Passar o Postgres para local
  - Backup do banco Postgres 
  - Restore no localhost
  - Backend criar .env localhost
  - Apontar o web para localhost
- Criar ambiente de teste
- Criar ambiente de homologação
- Treinamento para Git
  - Clone -> Branch -> Commits com "boas" mensagens -> Push Remote -> Solicitar Merge  -> Merge (coordenador)  -> 
- 

