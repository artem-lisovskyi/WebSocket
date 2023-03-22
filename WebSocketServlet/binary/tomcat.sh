#!/bin/bash


TOMCAT_HOME="C:/Program Files/Apache Software Foundation/Tomcat 9.0"

# Функция для запуска сервера Tomcat
start_tomcat() {
    echo "Запуск Tomcat сервера..."
    "$TOMCAT_HOME"/bin/startup.bat
}

# Функция для остановки сервера Tomcat
stop_tomcat() {
    echo "Остановка Tomcat сервера..."
    "$TOMCAT_HOME"/bin/shutdown.bat
}

# аргументы командной строки
case $1 in
    start)
        start_tomcat
        ;;
    stop)
        stop_tomcat
        ;;
    restart)
        stop_tomcat
        start_tomcat
        ;;
    *)
        echo "Использование: $0 {start|stop|restart}"
        exit 1
        ;;
esac
exit 0
