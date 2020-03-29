# Templates

[中文](https://github.com/appboot/templates/blob/master/READMECN.md)

> appboot templates.

## Template

`Template` is important concept of appboot. If you have used [Helm](https://helm.sh/docs/intro/), the `template` is very similar to Helm's **Chart**.

`Template` use template syntax and use `{{.xxx}}` to place placeholders for appbot parameters.

The template consists of two parts.

- code: The template code that needs to be converted into project code.
- appboot configuration items: The configuration items is stored in the appboot folder in the `template`. Currently, configuration items can include `pre.sh` (a script that runs before the project is created) and `post.sh` (a script that runs after the project is created). In the future, the configuration items will support more configurations.

## Demo

Let's use the [VUE template]((https://github.com/appboot/templates/tree/master/VUE)) to explain the appbot template.

### Placeholders

The `{{.Name}}` placeholder in the VUE template will be replaced with the appboot `Name` parameter when creating the project.

![appboot](https://github.com/appboot/templates/blob/master/images/vue-template.png?raw=true)

![appboot](https://github.com/appboot/templates/blob/master/images/vue-test.png?raw=true)

### Scripts

The `pre.sh` and `post.sh` in the configuration items will be executed before and after creating the project, respectively.

![appboot](https://github.com/appboot/templates/blob/master/images/vue-scripts.png?raw=true)
