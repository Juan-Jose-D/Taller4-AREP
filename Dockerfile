FROM openjdk:17

WORKDIR /usrapp/bin

ENV PORT=6000
ENV DOCKER_ENV=true


# Copiar archivos compilados y dependencias
COPY target/classes ./classes
COPY target/dependency ./dependency
# Copiar archivos estáticos
COPY public ./public

# Comando igual al local (Windows usa ;, Linux usa :) pero Docker usa Linux)
CMD ["java","-cp","./classes:./dependency/*","co.edu.escuelaing.microspringboot.MicroSpringBoot"]