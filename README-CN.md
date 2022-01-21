# Templates

> appboot 模板

## 模板

`模板`是 `appboot` 的一个重要概念。如果你使用过 [Helm](https://helm.sh/docs/intro/), `模板`非常类似 Helm 的 **Chart**。

`模板`使用模板语法，用 `{{.xxx}}` 来为 [appboot](https://github.com/appboot/appboot) 的参数占位。

`模板`分为**代码**和**配置**两大部分。

### 代码

需要转换为项目代码的模板代码，如 [VUE 模板](./VUE)。

### 配置

配置存放在`模板`中的 `appboot/appboot.yaml`。

```yaml
# appboot.yaml
desc: Vue 3 + Typescript + Vite template
parameters:
  - key: Hello
    type: string
    tip: hello string
    default: hello vue
  - key: Object
    type: select
    tip: object value
    options:
      - World
      - Vue
      - iOS
  - key: Temperature
    type: int
    tip: temperature value
    default: 27
    min: 0
    max: 35
  - key: Possibilities
    type: float
    tip: possibilities value
    default: 0.6
    min: 0
    max: 1.0
scripts:
  before:
    - echo before vue
  after:
    - cd appboot && sh after.sh
```

配置包含如下几个部分：

- desc：模板的描述信息
- parameters：参数列表，目前支持 `string、int、float、select` 四种类型。
  > `Name` 为默认参数，表示项目的名称，没有列在 `parameters` 中
- scripts：自定义脚本
  - before：创建项目前执行的命令集合。**当前目录(pwd)指向 appboot 执行的位置**。
  - after：创建项目后执行的命令集合。**当前目录(pwd)指向生成项目的根目录**。

## Demo

下面以 [VUE 模板](./VUE)为例，解释模板的使用。

### 代码

使用 [appboot](https://github.com/appboot/appboot) 命令行创建项目

```sh
❯ appboot create
Using config file: /Users/catchzeng/.appboot/config.yaml
✔ VUE
Name: test
Path: ~/Desktop/test
Enter the parameters, if you need to use the default value, just press Enter.
Hello: hello
✔ World
Temperature: 30
Possibilities: 0.3
Parameters: map[Hello:hello Object:World Possibilities:0.3 Temperature:30]
✔ NO
✔ NO
Running script before the app is created
echo before vue
before vue
Creating folders
Creating files
Running script after the app is created
cd appboot && sh after.sh
......
Finish
```

VUE 模板中 `{{.Name}}` 占位符将被替换为 appboot 的 `Name` 参数，其他参数同理。

![appboot](./VUE/appboot/images/vue-template.png)

![appboot](./VUE/appboot/images/vue-test.png)

### 配置

如果你使用 [appboot web](https://github.com/appboot/appboot/tree/master/web/appboot) 创建项目，则配置将会被渲染到前端。

```yaml
# appboot.yaml
desc: Vue 3 + Typescript + Vite template
parameters:
  - key: Hello
    type: string
    tip: hello string
    default: hello vue
  - key: Object
    type: select
    tip: object value
    options:
      - World
      - Vue
      - iOS
  - key: Temperature
    type: int
    tip: temperature value
    default: 27
    min: 0
    max: 35
  - key: Possibilities
    type: float
    tip: possibilities value
    default: 0.6
    min: 0
    max: 1.0
scripts:
  before:
    - echo before vue
  after:
    - cd appboot && sh after.sh
```

![appboot](./VUE/appboot/images/appboot.jpg)

相应的脚本(`scripts/before & scripts/after`)也会在创建项目前后执行。
