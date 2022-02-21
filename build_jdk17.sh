# browse modules at
# https://docs.oracle.com/en/java/javase/17/docs/api/
# each module shows a picture of its dependencies
jdk=jdk17
args="--inputSourceDirectory ../$jdk/src/java.base/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/jdk.charsets/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/java.xml/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/java.xml.crypto/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/jdk.xml.dom/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/java.logging/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/java.transaction.xa/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/java.sql/share/classes"
args="$args --inputSourceDirectory ../$jdk/src/java.sql.rowset/share/classes"
args="$args --outputDirectory docs"
args="$args --webPathToCssFile /OdinCodeBrowserJdk17/css/styles.css"
args="$args --webPathToSourceHtmlFiles /OdinCodeBrowserJdk17"
args="$args --languageLevel JAVA_17"
mvn install exec:java \
  -Dexec.mainClass=Main \
  -Dexec.args="$args"
