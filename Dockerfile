FROM python:3.10-slim-trixie

RUN apt-get update && \
    apt-get install -y --no-install-recommends openjdk-21-jre-headless default-jre-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Establecer la ruta predeterminada de Debian que gestiona default-jre-headless
ENV JAVA_HOME=/usr/lib/jvm/default-java
ENV PATH="${JAVA_HOME}/bin:${PATH}"

RUN pip install --no-cache-dir pyspark==4.2.0 notebook==7.6.2 pandas==2.3.3

WORKDIR /opt

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]