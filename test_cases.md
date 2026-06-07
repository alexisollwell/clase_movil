# Casos de Prueba - Calculadora de Áreas Geométricas

## CASOS DE USO – CÍRCULO

### CU‑C01 – Calcular área de círculo con radio positivo válido
- **Actor:** Usuario del programa  
- **Precondición:** El programa está ejecutándose y el usuario selecciona la opción "Círculo".  
- **Flujo principal:**  
  1. El sistema solicita el valor del radio.  
  2. El usuario ingresa un número positivo (ej. 5).  
  3. El sistema calcula el área usando la fórmula π × r².  
  4. El sistema muestra el resultado con 4 decimales.  
- **Resultado esperado:** El área mostrada es π × (5)² = 78.5398.  
- **Postcondición:** El programa queda listo para otra operación.

### CU‑C02 – Radio igual a cero (figura degenerada)
- **Actor:** Usuario  
- **Precondición:** Opción círculo seleccionada.  
- **Flujo principal:**  
  1. El sistema pide el radio.  
  2. El usuario ingresa 0.  
  3. El sistema calcula el área como 0.  
  4. El sistema muestra "Área: 0".  
- **Resultado esperado:** Área = 0, sin errores.  
- **Postcondición:** El programa continúa normalmente.

### CU‑C03 – Radio negativo (entrada inválida)
- **Actor:** Usuario  
- **Precondición:** Opción círculo seleccionada.  
- **Flujo principal:**  
  1. El sistema pide el radio.  
  2. El usuario ingresa -3.  
  3. El sistema valida que el radio no puede ser negativo.  
  4. El sistema muestra un mensaje de error: "El radio debe ser mayor o igual a 0".  
  5. El sistema vuelve a pedir el radio o regresa al menú principal.  
- **Resultado esperado:** No se calcula ningún área. Se informa el error.  
- **Postcondición:** El usuario puede reintentar o cambiar de figura.

### CU‑C04 – Entrada no numérica en radio
- **Actor:** Usuario  
- **Precondición:** Opción círculo seleccionada.  
- **Flujo principal:**  
  1. El sistema pide el radio.  
  2. El usuario ingresa "abc" (texto).  
  3. El sistema detecta que no es un número.  
  4. El sistema muestra: "Entrada inválida, debe ser un número".  
- **Resultado esperado:** No se calcula área. Se rechaza la entrada.  
- **Postcondición:** Se solicita nuevamente el valor.

---

## CASOS DE USO – CUADRADO

### CU‑S01 – Calcular área de cuadrado con lado positivo
- **Actor:** Usuario  
- **Precondición:** Opción "Cuadrado" seleccionada.  
- **Flujo principal:**  
  1. El sistema solicita la longitud del lado.  
  2. El usuario ingresa 4.  
  3. El sistema calcula área = lado × lado = 16.  
  4. El sistema muestra "Área: 16".  
- **Resultado esperado:** Área = 16.  
- **Postcondición:** Programa listo.

### CU‑S02 – Lado igual a cero
- **Actor:** Usuario  
- **Precondición:** Opción cuadrado.  
- **Flujo principal:**  
  1. Se pide el lado.  
  2. Usuario ingresa 0.  
  3. Sistema calcula 0.  
  4. Muestra "Área: 0".  
- **Resultado esperado:** Área 0.  
- **Postcondición:** Sin errores.

### CU‑S03 – Lado negativo
- **Actor:** Usuario  
- **Precondición:** Opción cuadrado.  
- **Flujo principal:**  
  1. Usuario ingresa -2.  
  2. El sistema valida y rechaza el valor.  
  3. Mensaje: "El lado no puede ser negativo".  
- **Resultado esperado:** No se calcula área.  
- **Postcondición:** Se pide otro valor o regresa al menú.

### CU‑S04 – Lado decimal válido
- **Actor:** Usuario  
- **Precondición:** Opción cuadrado.  
- **Flujo principal:**  
  1. Usuario ingresa 2.5.  
  2. Sistema calcula 2.5 × 2.5 = 6.25.  
  3. Muestra "Área: 6.25".  
- **Resultado esperado:** 6.25.  
- **Postcondición:** Correcto.

---

## CASOS DE USO – RECTÁNGULO

### CU‑R01 – Base y altura positivas (enteros)
- **Actor:** Usuario  
- **Precondición:** Opción "Rectángulo".  
- **Flujo principal:**  
  1. Sistema solicita base. Usuario ingresa 5.  
  2. Sistema solicita altura. Usuario ingresa 3.  
  3. Sistema calcula 5 × 3 = 15.  
  4. Muestra "Área: 15".  
- **Resultado esperado:** 15.  
- **Postcondición:** Vuelve al menú.

### CU‑R02 – Base o altura cero
- **Actor:** Usuario  
- **Precondición:** Opción rectángulo.  
- **Flujo principal:**  
  1. Base = 0, altura = 10.  
  2. Sistema calcula 0.  
  3. Muestra "Área: 0".  
- **Resultado esperado:** 0.  
- **Postcondición:** No hay error.

### CU‑R03 – Altura negativa
- **Actor:** Usuario  
- **Precondición:** Opción rectángulo.  
- **Flujo principal:**  
  1. Base = 5, altura = -2.  
  2. Sistema detecta valor negativo en altura.  
  3. Mensaje: "La altura no puede ser negativa".  
- **Resultado esperado:** No hay cálculo.  
- **Postcondición:** Se vuelve a pedir altura.

### CU‑R04 – Base negativa
- **Actor:** Usuario  
- **Precondición:** Opción rectángulo.  
- **Flujo principal:**  
  1. Base = -5, altura = 4.  
  2. Sistema detecta base negativa.  
  3. Mensaje: "La base no puede ser negativa".  
- **Resultado esperado:** No hay cálculo.  
- **Postcondición:** Se vuelve a pedir base.

### CU‑R05 – Valores decimales
- **Actor:** Usuario  
- **Precondición:** Opción rectángulo.  
- **Flujo principal:**  
  1. Base = 2.5, altura = 4.  
  2. Sistema calcula 10.0.  
- **Resultado esperado:** 10.0.  
- **Postcondición:** Correcto.

---

## CASOS DE USO – TRIÁNGULO (base × altura / 2)

### CU‑T01 – Base y altura positivas
- **Actor:** Usuario  
- **Precondición:** Opción "Triángulo".  
- **Flujo principal:**  
  1. Base = 6, altura = 4.  
  2. Sistema calcula (6×4)/2 = 12.  
  3. Muestra "Área: 12".  
- **Resultado esperado:** 12.

### CU‑T02 – Base cero
- **Actor:** Usuario  
- **Precondición:** Opción triángulo.  
- **Flujo principal:**  
  1. Base = 0, altura = 5.  
  2. Sistema calcula 0.  
- **Resultado esperado:** 0.

### CU‑T03 – Altura cero
- **Actor:** Usuario  
- **Flujo principal:**  
  1. Base = 5, altura = 0.  
  2. Sistema calcula 0.  
- **Resultado esperado:** 0.

### CU‑T04 – Altura negativa
- **Actor:** Usuario  
- **Flujo principal:**  
  1. Base = 3, altura = -1.  
  2. Sistema muestra: "La altura no puede ser negativa".  
- **Resultado esperado:** No hay cálculo.

### CU‑T05 – Base negativa
- **Actor:** Usuario  
- **Flujo principal:**  
  1. Base = -3, altura = 4.  
  2. Sistema muestra: "La base no puede ser negativa".  
- **Resultado esperado:** No hay cálculo.

### CU‑T06 – Decimales válidos
- **Actor:** Usuario  
- **Flujo principal:**  
  1. Base = 3.0, altura = 2.5.  
  2. Sistema calcula (3×2.5)/2 = 3.75.  
- **Resultado esperado:** 3.75.

---

## CASOS DE USO PARA EL PROGRAMA COMPLETO

### CU‑M01 – Selección de figura inexistente
- **Actor:** Usuario  
- **Precondición:** Menú principal visible.  
- **Flujo principal:**  
  1. El sistema muestra opciones: 1 Círculo, 2 Cuadrado, 3 Rectángulo, 4 Triángulo, 0 Salir.  
  2. Usuario ingresa 99.  
  3. Sistema muestra: "Opción no válida. Intente de nuevo".  
  4. Vuelve a mostrar el menú.  
- **Resultado esperado:** No se ejecuta ningún cálculo.  
- **Postcondición:** Menú nuevamente.

### CU‑M02 – Salir del programa
- **Actor:** Usuario  
- **Flujo principal:**  
  1. Usuario ingresa 0 en el menú.  
  2. Sistema muestra "Gracias por usar el programa".  
  3. Termina la ejecución.  
- **Resultado esperado:** El programa se cierra sin errores.

### CU‑M03 – Entrada vacía en menú
- **Actor:** Usuario  
- **Flujo principal:**  
  1. En el menú, usuario presiona Enter sin escribir nada.  
  2. Sistema detecta entrada vacía.  
  3. Muestra: "Entrada inválida. Elija una opción numérica".  
- **Resultado esperado:** No avanza a cálculo.  
- **Postcondición:** Menú nuevamente.

### CU‑M04 – Cancelar operación a mitad de ingreso de datos
- **Actor:** Usuario  
- **Flujo principal:**  
  1. Tras elegir figura, el sistema pide un dato (ej. radio).  
  2. Usuario ingresa "cancelar" o "-999" (según diseño).  
  3. Sistema interrumpe el cálculo y regresa al menú principal.  
- **Resultado esperado:** Regresa al menú sin calcular.