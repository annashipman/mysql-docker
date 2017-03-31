# escape=`
FROM mysql/mysql-server 

EXPOSE 3306 

# RUN /bin/bash -c 'echo "bind-address=0.0.0.0" >> /etc/my.cnf'

COPY ./docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/
# COPY ./entrypoint.sh /entrypoint.sh

#ADD ./lib/TIB_ems_8.1.0_win_x86_64_vc10.zip /tmp/

#RUN powershell -Command `
#    (New-Object System.Net.WebClient).DownloadFile('http://javadl.oracle.com/webapps/download/AutoDL?BundleId=210185', 'C:\jreinstaller.exe') ; `
#    Start-Process -filepath C:\jreinstaller.exe -passthru -wait -argumentlist "/s,INSTALLDIR=c:\Java\jre" ; `
#    del C:\jreinstaller.exe

# ENV JAVA_HOME c:\\Java\\jre

# RUN setx PATH %PATH%;%JAVA_HOME%\bin

# CMD [ "java.exe" ]
