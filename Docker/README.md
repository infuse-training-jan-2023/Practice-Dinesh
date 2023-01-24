#1
docker build -t dinesh/ex1 .
docker run --name ex1 dinesh/ex1


#2
docker build -t dinesh/ex2 .
docker run --name ex2 dinesh/ex2

#3
docker build -t dinesh/ex3 .
docker run --name ex3 dinesh/ex3


#4
docker build -t dinesh/ex4 .
docker run --name ex4 dinesh/ex4

#5
docker build -t dinesh/ex5 .
docker container run -p 3000:3000 dinesh/ex5

#6
docker-compose up --build
