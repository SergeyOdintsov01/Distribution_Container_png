Distribution_Container_png
|-- src
|   |-- output
|   |-- plot.py
|-- Dockerfile
|-- requirements.txt

1. Перейдем в термина. Для сборки образа по инструкциям в Dockerfile : ```docker build -t distribution_png .```  
* ```build``` сообщает что хотим создать образ
* ключ ```-t``` указывает на название образа
* ```.``` в конце означает, что Dockerfile нужно искать именно в корне. Так как мы запускаем команду из директории Distribution_Container_png/, а в ней находится Dockerfile, то Docker автоматически найдёт его. Если ваш Dockerfile находится в директории, отличной от той, в которой вы запускаете команду docker build, то вместо ```.``` вам необходимо будет указать путь до него.
- Просмотр всех доступных ```images```: docker images
- Для удаления не нужных, смотрим ```IMAGE ID``` и прописываем в терминале: ```docker rmi 19af1792b7fb```
- Если ошибка : ```Error response from daemon: conflict: unable to delete 19af1792b7fb (must be forced) - image is referenced in multiple repositories```  смотрим какой контейнер поднят командой ```docker ps -a```
 
2. Запускаем docker container : ```docker run -it --rm --name=first_container distribution_png_image```
* ```-it``` объединяет команды: ```-i``` оставляет строку для ввода, а ```-t``` выделяет терминал
* параметр ```--rm``` автоматически удаляет контейнер после завершения его работы (в том числе при завершении с   ошибкой) — это позволяет не хранить неактивные контейнеры
* параметр ```--name``` назначает docker-контейнеру имя (мы задали имя first_container)
