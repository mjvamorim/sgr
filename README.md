# Instalacao do Ambiente dockerizado

# 1-Dê um git no modulo principal: 

$ git clone https://github.com/CaledoniaTech/SIRI_SGR_AMB_DESENV/tree/producao_lts sgr


# 2-Clone os submodulos da aplicacao 

$ cd sgr

$ git submodule add  --force https://github.com/CaledoniaTech/App_Siri.git app

$ git submodule add  --force https://github.com/CaledoniaTech/SGR_Siri_Front frontend

$ git  submodule add  --force https://github.com/CaledoniaTech/SGR_Siri_Backend backend

$ code .

# 3-No vscode clique no canto inferior direito e depois em reabrir no container

# 3.1- Copie o arquivo .env para pasta ./backend 
   $ cuidado o arquivo é secreto pois possui a senha de acesso ao banco de dados
   
# 3.2- Restaure o backup do banco de dados para o servidor siri_postgres
  
# 3.3- Abra um terminal e execute o backend
   $ cd backend
   $ flask run

# 3.3-Abra outro terminal e execute o frontend
   $ cd frontend
   $ yarn
   $ yarn start


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

