# Templates

> appboot templates.

## Template

Template is important concept of appboot. If you have used [Helm](https://helm.sh/docs/intro/), the template is very similar to Helm's Chart.

Templates use template syntax and use **{{.XXX}}** to place placeholders for appbot parameters.

The template consists of two parts. One is the template code that needs to be converted into project code. The other is the scripts,  including appboot-pre.sh(run before creation) and appboot-pre.sh(run after creation).

## Demo

Let's use the VUE template to explain the appbot template.