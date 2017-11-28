# web-assets
Layouts e componentes web (js e css) empacotados para fácil importação em páginas JSPs

## Maven
Para uso como dependência Maven, adicionar no *pom.xml* do seu projeto:

```xml
<repositories>
    <repository>
        <id>jitpack.io</id>
        <url>https://jitpack.io</url>
    </repository>
</repositories>
```

E adicione a dependência:

```xml
<dependency>
   <groupId>com.github.andrepenteado</groupId>
   <artifactId>web-assets</artifactId>
   <version>1.0</version>
</dependency>
```

## Nexus
Caso use um proxy como o *nexus* para as dependências do maven, faça um *bypass* do repositório do *jitpack-io* alterando a seguinte linha do arquivo *.m2/settings.xml*

```xml
<mirrors>
  <mirror>
    <!--This sends everything else to /public -->
    <id>nexus</id>
    <mirrorOf>*,!jitpack.io</mirrorOf>
    <url>https:/servidor-nexus/nexus/content/groups/public</url>
  </mirror>
</mirrors>

```
