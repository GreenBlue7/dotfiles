# ~/.zshrc.d/java.zsh — Java & JavaFX helpers (macOS)
#
# JDK is managed by SDKMAN (initialized in .zshrc).
# Do NOT set JAVA_HOME here — SDKMAN handles it.
# JavaFX: brew install openjfx

# Compile with JavaFX modules
javacfx() {
  if [[ -z "$JAVAFX_HOME" ]]; then
    echo "Error: JAVAFX_HOME is not set. Run: brew install openjfx" >&2
    return 1
  fi
  javac \
    --module-path "$JAVAFX_HOME/lib" \
    --add-modules javafx.controls,javafx.graphics,javafx.fxml "$@"
}

# Run with JavaFX modules
javafx() {
  if [[ -z "$JAVAFX_HOME" ]]; then
    echo "Error: JAVAFX_HOME is not set. Run: brew install openjfx" >&2
    return 1
  fi
  java \
    --enable-native-access=javafx.graphics \
    --module-path "$JAVAFX_HOME/lib" \
    --add-modules javafx.controls,javafx.graphics,javafx.fxml "$@"
}

# Quick Spring Boot project run (from project root)
bootrun() {
  if [[ -f "./gradlew" ]]; then
    ./gradlew bootRun "$@"
  elif [[ -f "./mvnw" ]]; then
    ./mvnw spring-boot:run "$@"
  else
    echo "Error: No Gradle/Maven wrapper found in current directory" >&2
    return 1
  fi
}
