FROM alpine:3.12.4

ARG JMETER_VERSION="5.5"
ARG EXPORTER_VERSION="0.6.0"
ARG OPENJDK_VERSION="18"

ENV INFLUXDB2_LISTENER_VERSION="2.6"
ENV JMETER_PLUGINS_MANAGER_VERSION="1.6"
ENV CMDRUNNER_VERSION="2.2"

ENV JMETER_LOG_LEVEL="INFO"

ENV MIRROR https://www-eu.apache.org/dist/jmeter/binaries
ENV JMETER_HOME /opt/apache-jmeter-${JMETER_VERSION}
ENV JMETER_BIN ${JMETER_HOME}/bin
ENV JMETER_LIB ${JMETER_HOME}/lib

RUN apk update \
 && apk upgrade \
 && apk add ca-certificates \
 && update-ca-certificates \
 && apk add --no-cache \
    curl \
    tzdata \
    bash \
 && apk --update add openjdk${OPENJDK_VERSION}-jre --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing \
 && rm -rf /var/cache/apk/* \
 && cd /tmp/ \
 && curl --location --silent --show-error --output apache-jmeter-${JMETER_VERSION}.tgz ${MIRROR}/apache-jmeter-${JMETER_VERSION}.tgz \
 && curl --location --silent --show-error --output apache-jmeter-${JMETER_VERSION}.tgz.sha512 ${MIRROR}/apache-jmeter-${JMETER_VERSION}.tgz.sha512 \
 && sha512sum -c apache-jmeter-${JMETER_VERSION}.tgz.sha512 \
 && mkdir -p /opt \
 && tar -xzf apache-jmeter-${JMETER_VERSION}.tgz -C /opt  \
 && rm -rf /tmp/* \
 && curl --location --silent --show-error --output ${JMETER_LIB}/ext/jmeter-plugins-influxdb2-listener-${INFLUXDB2_LISTENER_VERSION}.jar https://github.com/mderevyankoaqa/jmeter-influxdb2-listener-plugin/releases/download/v${INFLUXDB2_LISTENER_VERSION}/jmeter-plugins-influxdb2-listener-${INFLUXDB2_LISTENER_VERSION}.jar \
 && curl --location --silent --show-error --output ${JMETER_LIB}/ext/jmeter-plugins-manager-${JMETER_PLUGINS_MANAGER_VERSION}.jar http://search.maven.org/remotecontent?filepath=kg/apc/jmeter-plugins-manager/${JMETER_PLUGINS_MANAGER_VERSION}/jmeter-plugins-manager-${JMETER_PLUGINS_MANAGER_VERSION}.jar \ 
 && curl --location --silent --show-error --output ${JMETER_LIB}/cmdrunner-${CMDRUNNER_VERSION}.jar http://search.maven.org/remotecontent?filepath=kg/apc/cmdrunner/${CMDRUNNER_VERSION}/cmdrunner-${CMDRUNNER_VERSION}.jar \
 && java -cp ${JMETER_LIB}/ext/jmeter-plugins-manager-${JMETER_PLUGINS_MANAGER_VERSION}.jar org.jmeterplugins.repository.PluginManagerCMDInstaller \
 && chmod +x ${JMETER_BIN}/*.sh \
 && ${JMETER_BIN}/PluginsManagerCMD.sh install jmeter-prometheus=${EXPORTER_VERSION} \
 && ${JMETER_BIN}/jmeter --version \
 && ${JMETER_BIN}/PluginsManagerCMD.sh status

ENV PATH $PATH:$JMETER_BIN

EXPOSE 9270
EXPOSE 4445

WORKDIR	/tmp
COPY jmeter_test.sh /

CMD [ "/bin/sh" ]