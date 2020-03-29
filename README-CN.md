# Templates

> appboot 模板.

## 模板

`模板`是 appboot 的一个重要概念。如果你使用过 [Helm](https://helm.sh/docs/intro/), `模板`非常类似 Helm 的 **Chart**。

`模板`使用模板语法，用 `{{.xxx}}` 来为 appbot 的参数占位。

模板分为两大部分

- 代码：需要转换为项目代码的模板代码
- appboot 配置项：配置项存放在`模板`中的 appboot 文件夹。目前，配置项中你可以包含 `pre.sh` (创建项目之前运行的脚本) and `post.sh` (创建项目之后运行的脚本)。后续，配置项将会支持更多配置。

## Demo

可以通过[VUE 模板](https://github.com/appboot/templates/tree/master/VUE)来了解下 appboot 模板。

### 模板语法占位

VUE 模板中 `{{.Name}}` 占位符在创建项目时将被替换为 appboot `Name` 参数。

![appboot](https://github.com/appboot/templates/blob/master/images/vue-template.png?raw=true)

![appboot](https://github.com/appboot/templates/blob/master/images/vue-test.png?raw=true)

### 配置项

配置项中的 `pre.sh`和 `post.sh` 将分别在创建项目之前和之后执行。

![appboot](https://github.com/appboot/templates/blob/master/images/vue-scripts.png?raw=true)
