# Instrucciones para la ejecución del proyecto



## Requisitos previos:

- Máquina local con el sistema operativo Windows 10+
- IDE IntelliJ versión 2023.1
- JDK versión 1.8 (debe estar en la variable de entorno)
- Gradle versión 7.4 (debe estar en la variable de entorno)
- Dependencias en el archivo `build.gradle`:
  - `com.intuit.karate:karate-junit5:1.4.0`
  - `io.cucumber:cucumber-java:7.2.3`
  - `io.cucumber:cucumber-junit:7.2.3`

## Pasos para la configuración y ejecución:

### 1. Clonar el repositorio:
   - Clona este proyecto desde tu repositorio o directorio de trabajo local.

### 2. Configurar Variables:
Asegúrate de que las variables de entorno para JAVA_HOME y GRADLE_HOME estén configuradas correctamente en tu sistema.


### 3. Abrir el proyecto en IntelliJ y configurar Gradle:
   - Abre el proyecto en **IntelliJ** seleccionando el directorio raíz del proyecto.
   - Ejecuta el siguiente comando para descargar todas las dependencias definidas en el archivo `build.gradle`:

  ./gradlew build

### 4. Instrucciones para ejecutar los tests

Navega hasta el archivo ReqResRunner.java en el directorio src/test/java.
Haz clic derecho sobre el archivo y selecciona Run 'ReqResRunner' para ejecutar las pruebas.
Después de que se ejecuten las pruebas, verifica los reportes generados en build/reports/tests/test/index.html.
Abre el archivo index.html en tu navegador para visualizar los resultados de las pruebas.

### 5. Ejecución de las pruebas en terminal:
   - Para ejecutar las pruebas desde la terminal, navega al directorio raíz del proyecto y ejecuta el siguiente comando:
     ```
     gradle test o ./gradlew clean test
     ```

### 6. Resultados:
   - Los resultados de las pruebas se generarán en formato HTML en el directorio `build/reports/tests/test/index.html`.

### 7. Instrucciones adicionales:
Si deseas realizar modificaciones en las pruebas, revisa los archivos .feature en src/test/resources/features y el código Java en src/test/java para entender cómo están estructuradas las pruebas.
Para más información sobre Karate y Cucumber, puedes consultar la documentación de Karate y la documentación de Cucumber.
