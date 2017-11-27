# minutocerocuatro
### Martin Bayo / Colaboraciones: Martin Morales 
##Proyecto para el museo Rosa Galisteo - Santa Fe
La intención es (micro)demostrar, entre otras cosas, cómo las maquinas están programadas para hacer cosas que no sabemos ni queremos, afectando nuestra privacidad, espiando y registrando nuestros movimientos digitales. 

##Funcionamiento
El dispositivo es una caja "blanca" en el que solo están visibles dos puertos USB. Allí el/la usuarix debe introducir su pendrive, inmediatamente se enciende un led y se escucha una voz en off que indica que se está guardando información. Sin que se permita ni se sepa el dispostivo obtiene una fotografía de quién ingreso el pendrive y que luego será incorporada con la otra información (libros, pinturas digitales, audios, etc) que se grabará automaticamente en el Pendrive. Mientras se realiza esto, se dispara una música ambiente y al terminar    
el dispositivo reproduce audios de distintos autores sobre el amplio movimiento de cultura libre y sus luchas.

 
## Hardware/Software

###Hardware
- Raspberry Pi 3
- Hub USB
- Camara Digital
- Parlantes USB

###Software
Para la programación del dispositivo se combinan Bash y Python.
Con Bash se trabaja sobre el gestor de dispositivos UDEV (https://es.wikipedia.org/wiki/Udev) del Kernel de Linux, con el cuál se detecta los dispostivos USB que se conectan, se montan, se copia la información y se desmontan. Con Bash tambien se reproducen audios que aluden al ingreso del Pendrive y cuando se ha terminado de copiar, se obtiene una fotografía desde la cámara web oculta en el dispositivo. Al terminar de copiar toda esa información se reproducen los audios sobre las luchas del Movimiento Cultura Libre.
Con Python se controla el encendido y apagado del led.

## Licencia
 This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
