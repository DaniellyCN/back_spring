Comando importantes enquanto estava dockernizando a aplicação.
Pra dar run do container, depois de buildar a imagem, ja conectando com a network, que havia sido criada, passando as variaveis de ambientes referentes a conexao do banco por linha de comando:
docker run --network net-parking-control -p 5002:8080 -e SPRING_APPLICATION_NAME=parking-control -e SPRING_DATASOURCE_URL=jdbc:postgresql://postgres:5432/parkingControlDb -e SPRING_DATASOURCE_USERNAME=postgres -e SPRING_DATASOURCE_PASSWORD=postgres -e SPRING_JPA_HIBERNATE_DDL_AUTO=create -e SPRING_JPA_PROPERTIES_HIBERNATE_JDBC_LOB_NON_CONTEXTUAL_CREATION=true api-parking-control

Pra dar run na imagem do postgres, que peguei do dockerhub, já conectado à network, que havia sido criada por mim, rodei o seguinte comando:
docker run -d -p 5432:5432 --network net-parking-control --name postgres -e POSTGRES_PASSWORD=postgres postgres
