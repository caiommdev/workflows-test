# TP3 - CI/CD com GitHub Actions

[![Java Matrix Build](https://github.com/caiommdev/workflows-test/actions/workflows/matrix.yml/badge.svg)](https://github.com/caiommdev/workflows-test/actions/workflows/matrix.yml)

## O Papel do Git na Entrega Contínua

O Git é fundamental para a entrega contínua (Continuous Delivery) pois:

- **Versionamento**: Mantém histórico completo de todas as alterações no código, permitindo rastreabilidade e rollback quando necessário
- **Colaboração**: Facilita o trabalho simultâneo de múltiplos desenvolvedores através de branches isolados
- **Gatilho para Automação**: Eventos do Git (push, pull request, merge) acionam automaticamente pipelines de CI/CD
- **Fonte Única da Verdade**: O repositório Git serve como fonte centralizada que alimenta todos os ambientes (dev, staging, produção)
- **Auditoria**: Cada commit registra quem fez o quê e quando, essencial para conformidade e debugging

## Branches e Tags no Contexto de CI/CD

### Branches

- **Branch Principal (main/master)**: Representa o código em produção ou pronto para produção
- **Feature Branches**: Isolam desenvolvimento de novas funcionalidades, permitindo testes independentes
- **Release Branches**: Preparam uma versão específica para produção
- **Hotfix Branches**: Corrigem problemas críticos em produção rapidamente

**Importância em CI/CD:**
- Cada branch pode ter pipelines específicos (dev branches rodam apenas testes, main roda deploy)
- Pull Requests permitem code review e validação automática antes do merge
- Estratégias como GitFlow ou Trunk-Based Development definem o fluxo de trabalho

### Tags

- **Marcadores de Versão**: Identificam releases específicas (v1.0.0, v2.1.3)
- **Imutáveis**: Diferente de branches, tags não mudam, garantindo consistência
- **Gatilho de Deploy**: Criação de tags pode acionar deploy automático para produção
- **Rastreabilidade**: Facilitam identificar exatamente qual código está em cada ambiente

**Importância em CI/CD:**
- Permitem deployments reproduzíveis
- Facilitam rollback para versões anteriores conhecidas
- Suportam semantic versioning e release notes automatizados

## O Papel Conceitual do Git no Ciclo DevOps

O Git está no centro do ciclo DevOps, conectando todas as fases:
