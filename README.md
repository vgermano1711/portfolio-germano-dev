<div align="center">

# Germano Dev — Portfolio Pessoal

> Site de portfolio pessoal com painel admin dinâmico, banco de dados Supabase e deploy automático no Netlify.

[![Deploy](https://img.shields.io/badge/Ver_ao_vivo-germanodev--portfolio.netlify.app-00C7B7?style=for-the-badge)](https://germanodev-portfolio.netlify.app/)
[![HTML](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)](https://developer.mozilla.org/pt-BR/docs/Web/HTML)
[![CSS](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)](https://developer.mozilla.org/pt-BR/docs/Web/CSS)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript)
[![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white)](https://supabase.com)
[![Netlify](https://img.shields.io/badge/Netlify-00C7B7?style=for-the-badge&logo=netlify&logoColor=white)](https://netlify.com)

</div>

---

## Demo ao vivo

[germanodev-portfolio.netlify.app](https://germanodev-portfolio.netlify.app/)

---

## Sobre o Projeto

Portfolio pessoal desenvolvido do zero, sem frameworks, para apresentar projetos, habilidades e formas de contato de maneira profissional.

O diferencial deste portfolio é o painel administrativo integrado: projetos e cursos são gerenciados dinamicamente via banco de dados, sem precisar editar código para atualizar o conteúdo.

---

## Funcionalidades

| Funcionalidade | Descrição |
|--------|-----------|
| Hero Section | Apresentação com disponibilidade para novos projetos |
| Projetos Dinâmicos | Listagem de projetos com imagem, tags, descrição e link, gerenciados via admin |
| Cursos & Certificações | Lista de cursos adicionados dinamicamente pelo painel |
| Tech Skills | Exibição visual das tecnologias dominadas |
| IA & Ferramentas | Seção dedicada a ferramentas de IA utilizadas |
| Contato direto | Botões de WhatsApp e Instagram integrados |
| Painel Admin | Área protegida por senha para gerenciar projetos e cursos em tempo real |
| Responsivo | Layout adaptado para mobile, tablet e desktop |

---

## Tecnologias Utilizadas

| Tecnologia | Uso no Projeto |
|-----------|---------------|
| HTML5 | Estrutura semântica de toda a página |
| CSS3 | Estilização, animações, variáveis CSS e responsividade |
| JavaScript (Vanilla) | Lógica do painel admin, autenticação e manipulação do DOM |
| Supabase | Backend as a Service — banco de dados PostgreSQL + autenticação |
| Netlify | Hospedagem e deploy contínuo via GitHub |

Vanilla JS foi uma escolha intencional para demonstrar domínio dos fundamentos do JavaScript sem depender de frameworks. A lógica de CRUD, autenticação e renderização dinâmica foi implementada manualmente.

---

## Estrutura do Projeto

```
portfolio-germano-dev/
├── index.html           # Aplicação completa (HTML + CSS + JS em um arquivo)
│                         # Inclui: layout, estilos, lógica do admin e integração Supabase
├── supabase-setup.sql    # Script SQL para configurar o banco de dados no Supabase
│                         # Cria as tabelas: projetos, cursos e configurações
├── .gitignore
├── LICENSE
└── README.md
```

---

## Estrutura do Banco de Dados (Supabase)

O arquivo `supabase-setup.sql` cria as seguintes tabelas:

```sql
-- Tabela de projetos
projetos (id, nome, descricao, imagem_url, link, tags, criado_em)

-- Tabela de cursos
cursos (id, nome, instituicao, criado_em)
```

Supabase é um backend open-source que oferece banco de dados PostgreSQL, autenticação e API REST automática. Funciona como alternativa ao Firebase, mas com SQL.

---

## Como Rodar Localmente

### Pré-requisitos

- Navegador moderno
- Conta no [Supabase](https://supabase.com) (gratuito)

### Passo a passo

```bash
# 1. Clone o repositório
git clone https://github.com/vgermano1711/portfolio-germano-dev.git
cd portfolio-germano-dev
```

```bash
# 2. Configure o Supabase
# - Crie um projeto em supabase.com
# - Vá em SQL Editor e execute o conteúdo de supabase-setup.sql
# - Copie a URL e a chave anon do projeto
```

```bash
# 3. Abra o index.html e insira suas credenciais do Supabase
# Procure por: supabaseUrl e supabaseKey no início do script
```

```bash
# 4. Abra o index.html no navegador
open index.html
```

---

## Deploy (Netlify)

O projeto está hospedado no Netlify com deploy automático a partir deste repositório.

A cada `git push` na branch `main`, o Netlify detecta a mudança e publica automaticamente, sem intervenção manual.

```
GitHub push → Netlify detecta → Build automático → Site atualizado
```

---

## Sobre o Desenvolvedor

**Victor Germano** — Estudante de Engenharia de Software (Universidade Cruzeiro do Sul) com foco em desenvolvimento web front-end e ferramentas de IA aplicadas.

[![WhatsApp](https://img.shields.io/badge/WhatsApp-25D366?style=flat&logo=whatsapp&logoColor=white)](https://wa.me/5511953570476)
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=flat&logo=instagram&logoColor=white)](https://instagram.com/v_.germano)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/victor-germano-65787b2b1/)

---

## Licença

MIT License
