# oxetech - exemplo - sala de aula

# lab-01-serverless

## usar o npm para poder testar a lambda em JS

```
npm i
```

## Subir o LocalStack

```
localstack status -d
```

## 01 subir a arquitetura via terraform

```
## instalar o tfloca
pipx install terraform-local
cd terraform
tflocal plan
tflocal apply
```

ou

```
npm run infra:init
npm run infra:apply

```

## 02 Subir as funções lambdas via Serverless Framweworks

```
bom run deploy
```
