# Shell Script — Estudos e Projetos

<br />

<div align="center">
	<img src="https://i.imgur.com/j5zy3QQ.png" title="source: imgur.com" width="50%"/>
</div>
<br />

<div align="center">
  <img src="https://img.shields.io/github/languages/top/rafaelq80/curso_shell_script?style=flat-square" />
  <img src="https://img.shields.io/github/repo-size/rafaelq80/curso_shell_script?style=flat-square" />
  <img src="https://img.shields.io/github/languages/count/rafaelq80/curso_shell_script?style=flat-square" />
  <img src="https://img.shields.io/github/last-commit/rafaelq80/curso_shell_script?style=flat-square" />
  <img src="https://img.shields.io/github/issues/rafaelq80/curso_shell_script?style=flat-square" />
  <img src="https://img.shields.io/github/issues-pr/rafaelq80/curso_shell_script?style=flat-square" />
</div>


------

<br />

Repositório dedicado ao aprendizado e prática de Shell Script (Bash), com scripts organizados por tema, desde comandos básicos até automações do sistema.

------

## 📁 Estrutura do Repositório

```
📦shell
 ┣ 📂01_variaveis
 ┣ 📂02_operadores
 ┣ 📂03_condicionais
 ┣ 📂04_repeticoes
 ┣ 📂monitoramento
 ┣ 📜.gitignore
 ┗ 📜README.md
```

------

## Scripts Disponíveis

| Script       | Descrição                                                    |
| ------------ | ------------------------------------------------------------ |
| `monitor.sh` | Coleta dados de CPU, memória, disco e carga do sistema e gera relatório `.txt` |

------

## Como Usar

**1. Clone o repositório**

```bash
git clone https://github.com/seu-usuario/curso_shell.git
cd curso_shell
```

**2. Dê permissão de execução ao script**

```bash
chmod +x monitor.sh
```

**3. Execute**

```bash
./sistema/monitor.sh
```

------

## Pré-requisitos

- Sistema operacional **Linux** ou **macOS**
- Bash `>= 4.x`

Verifique a versão do Bash:

```bash
bash --version
```

------

## Tópicos Estudados

| Aula    | Tema                              | Descrição                                           |
| ------- | --------------------------------- | --------------------------------------------------- |
| Aula 01 | Introdução ao Shell Script        | Primeiros passos, estrutura básica e saída de dados |
| Aula 02 | Variáveis e Operadores            | Variáveis, constantes, `read`, operadores diversos  |
| Aula 03 | Condicionais e Operadores Lógicos | `if/else/elif`, operadores relacionais e lógicos    |
| Aula 04 | Laços de Repetição                | Estruturas `for`, `while` e `until`                 |

------

## Formatação Automática do Código - Visual Studio Code

1. Instale via terminal Linux o pacote **shfmt**:

```bash
sudo apt install shfmt
```

2. Instale a Extensão do Visual Studio Code **mkhl.shfmt**, através do comando:

```
code --install-extension mkhl.shfmt
```

3. Abra qualquer script `.sh` e pressione `Shift+Alt+F` (Format Document). 
4. Será solicitado que você escolha o formatador. Selecione o **shfmt**

---

## Referências

- [GNU Bash Manual](https://www.gnu.org/software/bash/manual/)
- [Shell Scripting Tutorial](https://www.shellscript.sh/)
- [Explainshell](https://explainshell.com/) — explica cada parte de um comando
- [SS64 — Bash Reference](https://ss64.com/bash/)

------

## Licença

Distribuído sob a licença MIT. Veja [`LICENSE`](https://claude.ai/chat/LICENSE) para mais informações.