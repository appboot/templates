# Templates

[中文](https://github.com/appboot/templates/blob/master/README-CN.md)

> appboot templates.

## Template

`Template` is important concept of appboot. If you have used [Helm](https://helm.sh/docs/intro/), the `template` is very similar to Helm's **Chart**.

`Template` use template syntax and use `{{.xxx}}` to place placeholders for appbot parameters.

The template is divided into two parts: code and configuration items.

### Code

The template code that needs to be converted to project code, such as [VUE template](./VUE).

### Configuration items

The configuration items are stored in the `appboot` folder in the `template`, which is mainly used for [appboot](https://github.com/appboot/appboot) front-end rendering and back-end execution of custom scripts.

![appboot](./VUE/appboot/images/config.png)

- `pre.sh`: script to run before creating the project, such as [VUE template pre.sh](./VUE/appboot/pre.sh)
- `post.sh`: script to run after creating the project, such as [VUE template post.sh](./VUE/appboot/post.sh)
- `appboot.yaml`: non-script configuration items, such as [VUE template appboot.yaml](./VUE/appboot/appboot.yaml)
  - parameters: parameter list, currently supports three types of string, int, float.

## Demo

Let's use the [VUE template](./VUE) as an example to explain the use of appboot templates.

### Code

The `{{.Name}}` placeholder in the VUE template will be replaced with the appboot `Name` parameter when creating the project.

![appboot](./VUE/appboot/images/vue-template.png)

![appboot](./VUE/appboot/images/vue-test.png)

### Configuration items

Create a project through [appboot](https://github.com/appboot/appboot) or [appbctl](https://github.com/appboot/appbctl), and configure `pre.sh` and` post. sh` will be executed before and after creating the project.

![appboot](./VUE/appboot/images/vue-scripts.png)

The `appboot.yaml` in the configuration items will be obtained by [appboot](https://github.com/appboot/appboot) and rendered to the front-end interface.

![appboot](./VUE/appboot/images/config.png)

![appboot](./VUE/appboot/images/appboot.png)
