FROM ubuntu:22.04

RUN apt update && apt install -y g++ \
    && rm -rf /var/lib/apt/lists/*  

WORKDIR /app

COPY src/ /app/src

RUN g++ /app/src/add.cpp -o /app/add 

RUN g++ /app/src/mul.cpp -o /app/mul 

CMD ["/bin/bash"]
