# browse modules at
# https://docs.oracle.com/en/java/javase/17/docs/api/
# each module shows a picture of its dependencies
$jdk="jdk17"
$Args=(
"--inputSourceDirectory ../$jdk/src/java.base/share/classes" +
" --inputSourceDirectory ../$jdk/src/jdk.charsets/share/classes" +
" --inputSourceDirectory ../$jdk/src/java.xml/share/classes" +
" --inputSourceDirectory ../$jdk/src/java.xml.crypto/share/classes" +
" --inputSourceDirectory ../$jdk/src/jdk.xml.dom/share/classes" +
" --inputSourceDirectory ../$jdk/src/java.logging/share/classes" +
" --inputSourceDirectory ../$jdk/src/java.transaction.xa/share/classes" +
" --inputSourceDirectory ../$jdk/src/java.sql/share/classes" +
" --inputSourceDirectory ../$jdk/src/java.sql.rowset/share/classes" +
" --outputDirectory docs" +
" --webPathToCssFile /OdinCodeBrowserJdk17/css/styles.css" +
" --webPathToSourceHtmlFiles /OdinCodeBrowserJdk17" +
" --languageLevel JAVA_17"
)

mvn install exec:java `
  "-Dexec.mainClass=Main" `
  "-Dexec.args=$Args"
