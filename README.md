# OXETEC - AULA - DIA 18/05/2026

# lab-01-serverless

> Toda infra => Terraform
> Lambda => Serverless Framework

# 1 - PASSO

## usar o npm para poder testar a lambda em JS

```
npm i
```

## Subir o LocalStack

```
localstack status -d
```

# 2 - PASSO

## Subir a arquitetura via terraform

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
npm run deploy
```
