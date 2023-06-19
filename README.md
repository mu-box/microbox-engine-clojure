# Clojure

This is a Clojure engine used to launch Clojure apps on [Microbox](http://microbox.cloud).

## Usage
To use the Clojure engine, specify `clojure` as your `engine` in your boxfile.yml.

```yaml
run.config:
  engine: clojure
```

## Build Process
When [running a build](https://docs.nanboox.io/cli/build/), this engine compiles code by doing the following:

- `lein uberjar`
- `bin/build`

*Custom build scripts should be included in bin/build*

## Basic Configuration Options

This engine exposes configuration options through the [boxfile.yml](https://docs.microbox.cloud/app-config/boxfile/), a yaml config file used to provision and configure your app's infrastructure when using Microbox.

#### Overview of Basic Boxfile Configuration Options
```yaml
run.config:
  engine.config:
    # Java Settings
    java_runtime: oraclejdk8

    # Node.js Settings
    nodejs_runtime: nodejs-4.4
```

##### Quick Links
[Java Settings](#java-settings)
[Node.js Settings](#nodejs-settings)

---

### Java Settings
The following setting allows you to define your Java runtime environment.

---

#### java_runtime
Specifies which Java runtime and version to use. The following runtimes are available:

- openjdk7
- openjdk8
- oraclejdk8 *(default)*
- sun-jdk6
- sun-jdk7
- sun-jdk8

```yaml
run.config:
  engine.config:
    java_runtime: oraclejdk8
```

---

### Node.js Settings
Many applications utilize Javascript tools in some way. This engine allows you to specify which Node.js runtime you'd like to use.

---

#### nodejs_runtime
Specifies which Node.js runtime and version to use. You can view the available Node.js runtimes in the [Node.js engine documentation](https://github.com/mu-box/microbox-engine-nodejs#runtime).

```yaml
run.config:
  engine.config:
    nodejs_runtime: nodejs-4.4
```

---

## Help & Support
This is a Clojure engine provided by [Microbox](http://microbox.cloud). If you need help with this engine, you can reach out to us in the [Microbox Discord](https://discord.gg/MCDdHfy). If you are running into an issue with the engine, feel free to [create a new issue on this project](https://github.com/mu-box/microbox-engine-clojure/issues/new).
