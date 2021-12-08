# Dic

Generador de clases "diccionarios" en Java. Una clase diccionario es aquella que
posee el nombre de las variables de las variables dentro de `String`s. Es útil
para ser utilizado en conjunto con Hibernate.

# Ejemplo

Para la clase

``` java
package com.test.bo;

public class Test {
	public Long test;
	private List<Integer> listed;
}
```

Genera la clase diccionario

``` java
package com.test.bo.dict;

public class Test_ {
	public static final String test = "test";
	public static final String listed = "listed";
}
```

Utilizando el comando

``` sh
./dic Test.java
```
