
# Apache Struct demo application


## Build it

```bash
$ ./build.sh
```

```bash
$ docker images
REPOSITORY                                               TAG                 IMAGE ID            CREATED             SIZE
dieterreuter/struts                                      latest              cf622e51a01e        10 minutes ago      115MB
```


## Deploy in Docker

Run container
```bash
$ docker run -d --name=struts -p 8080:8080 dieterreuter/struts
bef2130bb968d9fed9b22859caa72bd141d8a4df9be9f0998e9efe4d2c0b6513
```

Check logs
```bash
$ docker logs struts
16-Mar-2018 18:31:11.999 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Server version:        Apache Tomcat/8.5.29
16-Mar-2018 18:31:12.003 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Server built:          Mar 5 2018 13:11:12 UTC
16-Mar-2018 18:31:12.003 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Server number:         8.5.29.0
16-Mar-2018 18:31:12.003 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log OS Name:               Linux
16-Mar-2018 18:31:12.003 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log OS Version:            4.9.87-linuxkit-aufs
16-Mar-2018 18:31:12.003 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Architecture:          amd64
16-Mar-2018 18:31:12.004 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Java Home:             /usr/lib/jvm/java-1.8-openjdk/jre
16-Mar-2018 18:31:12.004 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log JVM Version:           1.8.0_151-b12
16-Mar-2018 18:31:12.004 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log JVM Vendor:            Oracle Corporation
16-Mar-2018 18:31:12.004 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log CATALINA_BASE:         /usr/local/tomcat
16-Mar-2018 18:31:12.004 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log CATALINA_HOME:         /usr/local/tomcat
16-Mar-2018 18:31:12.005 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Djava.util.logging.config.file=/usr/local/tomcat/conf/logging.properties
16-Mar-2018 18:31:12.005 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager
16-Mar-2018 18:31:12.005 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Djdk.tls.ephemeralDHKeySize=2048
16-Mar-2018 18:31:12.005 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Djava.protocol.handler.pkgs=org.apache.catalina.webresources
16-Mar-2018 18:31:12.006 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Dignore.endorsed.dirs=
16-Mar-2018 18:31:12.006 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Dcatalina.base=/usr/local/tomcat
16-Mar-2018 18:31:12.006 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Dcatalina.home=/usr/local/tomcat
16-Mar-2018 18:31:12.006 INFO [main] org.apache.catalina.startup.VersionLoggerListener.log Command line argument: -Djava.io.tmpdir=/usr/local/tomcat/temp
16-Mar-2018 18:31:12.007 INFO [main] org.apache.catalina.core.AprLifecycleListener.lifecycleEvent Loaded APR based Apache Tomcat Native library [1.2.16] using APR version [1.6.3].
16-Mar-2018 18:31:12.007 INFO [main] org.apache.catalina.core.AprLifecycleListener.lifecycleEvent APR capabilities: IPv6 [true], sendfile [true], accept filters [false], random [true].
16-Mar-2018 18:31:12.007 INFO [main] org.apache.catalina.core.AprLifecycleListener.lifecycleEvent APR/OpenSSL configuration: useAprConnector [false], useOpenSSL [true]
16-Mar-2018 18:31:12.010 INFO [main] org.apache.catalina.core.AprLifecycleListener.initializeSSL OpenSSL successfully initialized [OpenSSL 1.0.2n  7 Dec 2017]
16-Mar-2018 18:31:12.134 INFO [main] org.apache.coyote.AbstractProtocol.init Initializing ProtocolHandler ["http-nio-8080"]
16-Mar-2018 18:31:12.154 INFO [main] org.apache.tomcat.util.net.NioSelectorPool.getSharedSelector Using a shared selector for servlet write/read
16-Mar-2018 18:31:12.162 INFO [main] org.apache.coyote.AbstractProtocol.init Initializing ProtocolHandler ["ajp-nio-8009"]
16-Mar-2018 18:31:12.163 INFO [main] org.apache.tomcat.util.net.NioSelectorPool.getSharedSelector Using a shared selector for servlet write/read
16-Mar-2018 18:31:12.164 INFO [main] org.apache.catalina.startup.Catalina.load Initialization processed in 593 ms
16-Mar-2018 18:31:12.193 INFO [main] org.apache.catalina.core.StandardService.startInternal Starting service [Catalina]
16-Mar-2018 18:31:12.193 INFO [main] org.apache.catalina.core.StandardEngine.startInternal Starting Servlet Engine: Apache Tomcat/8.5.29
16-Mar-2018 18:31:12.219 INFO [localhost-startStop-1] org.apache.catalina.startup.HostConfig.deployWAR Deploying web application archive [/usr/local/tomcat/webapps/super-app.war]
16-Mar-2018 18:31:13.194 INFO [localhost-startStop-1] org.apache.jasper.servlet.TldScanner.scanJars At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
16-Mar-2018 18:31:14.395 INFO [localhost-startStop-1] org.apache.catalina.startup.HostConfig.deployWAR Deployment of web application archive [/usr/local/tomcat/webapps/super-app.war] has finished in [2,175] ms
16-Mar-2018 18:31:14.396 INFO [localhost-startStop-1] org.apache.catalina.startup.HostConfig.deployDirectory Deploying web application directory [/usr/local/tomcat/webapps/ROOT]
16-Mar-2018 18:31:14.414 INFO [localhost-startStop-1] org.apache.catalina.startup.HostConfig.deployDirectory Deployment of web application directory [/usr/local/tomcat/webapps/ROOT] has finished in [17] ms
16-Mar-2018 18:31:14.414 INFO [localhost-startStop-1] org.apache.catalina.startup.HostConfig.deployDirectory Deploying web application directory [/usr/local/tomcat/webapps/examples]
16-Mar-2018 18:31:14.554 INFO [localhost-startStop-1] org.apache.catalina.startup.HostConfig.deployDirectory Deployment of web application directory [/usr/local/tomcat/webapps/examples] has finished in [140] ms
16-Mar-2018 18:31:14.555 INFO [localhost-startStop-1] org.apache.catalina.startup.HostConfig.deployDirectory Deploying web application directory [/usr/local/tomcat/webapps/host-manager]
16-Mar-2018 18:31:14.572 INFO [localhost-startStop-1] org.apache.catalina.startup.HostConfig.deployDirectory Deployment of web application directory [/usr/local/tomcat/webapps/host-manager] has finished in [17] ms
16-Mar-2018 18:31:14.573 INFO [localhost-startStop-1] org.apache.catalina.startup.HostConfig.deployDirectory Deploying web application directory [/usr/local/tomcat/webapps/manager]
16-Mar-2018 18:31:14.586 INFO [localhost-startStop-1] org.apache.catalina.startup.HostConfig.deployDirectory Deployment of web application directory [/usr/local/tomcat/webapps/manager] has finished in [12] ms
16-Mar-2018 18:31:14.586 INFO [localhost-startStop-1] org.apache.catalina.startup.HostConfig.deployDirectory Deploying web application directory [/usr/local/tomcat/webapps/docs]
16-Mar-2018 18:31:14.595 INFO [localhost-startStop-1] org.apache.catalina.startup.HostConfig.deployDirectory Deployment of web application directory [/usr/local/tomcat/webapps/docs] has finished in [8] ms
16-Mar-2018 18:31:14.599 INFO [main] org.apache.coyote.AbstractProtocol.start Starting ProtocolHandler ["http-nio-8080"]
16-Mar-2018 18:31:14.620 INFO [main] org.apache.coyote.AbstractProtocol.start Starting ProtocolHandler ["ajp-nio-8009"]
16-Mar-2018 18:31:14.623 INFO [main] org.apache.catalina.startup.Catalina.start Server startup in 2458 ms
```

Open web browser
```bash
$ open http://localhost:8080/super-app
```


## Deploy in Kubernetes (or k8s in Docker4Mac)

Deploy Pod and use a NodePort service
```bash
$ kubectl apply -f kube-struts.yml
```

Determine the TCP port
```bash
$ kubectl get svc
NAME              TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
kube-struts-svc   NodePort    10.104.183.156   <none>        8080:32461/TCP   7s
```

Open web browser
```bash
$ open http://localhost:32461/super-app
```
