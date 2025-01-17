# Suite de Testes Automatizados com Robot Framework

## Introdução 
Este projeto consiste na criação de uma suite de testes automatizados utilizando o [Robot Framework](https://robotframework.org/). O site utilizado como base para os testes é o [SauceDemo](https://www.saucedemo.com/). 

Foram implementados seis tipos de testes de ponta a ponta (E2E), abrangendo diferentes cenários de login e validação de erros.

Repositório no GitHub: [cszpro/robot](https://github.com/cszpro/robot)

---

## Estrutura do Projeto

O projeto foi organizado em:

- **Arquivos de Variáveis**: Contêm as variáveis reutilizáveis para os testes.
- **Arquivos de Recursos**: Funções e keywords comuns para os cenários de teste.
- **Casos de Teste**: Testes E2E organizados em arquivos `.robot`.
- **Relatórios**: Relatórios gerados após a execução dos testes.

---

## Tipos de Testes Implementados

1. **Login com credenciais válidas**: Verifica o acesso bem-sucedido ao site com credenciais corretas.
2. **Login com credenciais inválidas**: Testa o comportamento do site ao utilizar dados incorretos.
3. **Login parcial com credenciais corretas**: Avalia o que acontece ao enviar apenas parte das credenciais.
4. **Verificação de mensagens de erro**: Garante que as mensagens de erro sejam exibidas de forma adequada.

---

## Tecnologias Utilizadas

- **Robot Framework**: Framework principal para automação dos testes.
- **Python**: Linguagem de programação para a extensão e suporte das keywords.
- **SeleniumLibrary**: Biblioteca para interação com elementos web.

---

## Como Configurar e Executar

### Instalação
1. Clone este repositório:
   ```bash
   git clone https://github.com/cszpro/robot.git
   ```
2. Navegue até o diretório do projeto:
   ```bash
   cd robot
   ```
3. Instale as dependências necessárias:
   ```bash
   pip install -r requirements.txt
   ```

### Execução dos Testes
Execute todos os testes:
```bash
robot -d reports tests/
```

Execute um teste específico:
```bash
robot -d reports tests/nome_do_teste.robot
```

---

## Relatórios
Após a execução, os relatórios serão gerados na pasta `reports/`. Os arquivos incluem:
- `log.html`: Registro detalhado da execução.
- `report.html`: Sumário dos resultados.
- `output.xml`: Arquivo de saída para integração.

---

## Contribuições
Contribuições são bem-vindas! Por favor:
1. Abra uma _issue_ para discutir as melhorias.
2. Envie um _pull request_ com as modificações.

---

## Versão em Inglês

# Automated Testing Suite with Robot Framework

## Introduction
This project focuses on creating an automated test suite using the [Robot Framework](https://robotframework.org/). The tests are based on the website [SauceDemo](https://www.saucedemo.com/).

Six end-to-end (E2E) tests were implemented, covering various login scenarios and error validations.

GitHub Repository: [cszpro/robot](https://github.com/cszpro/robot)

---

## Project Structure

The project is organized into:

- **Variable Files**: Contains reusable variables for the tests.
- **Resource Files**: Functions and common keywords for the test scenarios.
- **Test Cases**: E2E tests organized in `.robot` files.
- **Reports**: Reports generated after test execution.

---

## Types of Tests Implemented

1. **Login with valid credentials**: Checks successful access with correct credentials.
2. **Login with invalid credentials**: Tests site behavior using incorrect data.
3. **Partial login with correct credentials**: Evaluates what happens when only part of the credentials are submitted.
4. **Error message validation**: Ensures error messages are displayed properly.

---

## Technologies Used

- **Robot Framework**: Main framework for test automation.
- **Python**: Programming language for keyword extensions and support.
- **SeleniumLibrary**: Library for web element interaction.

---

## How to Set Up and Run

### Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/cszpro/robot.git
   ```
2. Navigate to the project directory:
   ```bash
   cd robot
   ```
3. Install the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```

### Running the Tests
Run all tests:
```bash
robot -d reports tests/
```

Run a specific test:
```bash
robot -d reports tests/test_name.robot
```

---

## Reports
After execution, reports will be generated in the `reports/` folder. Files include:
- `log.html`: Detailed execution log.
- `report.html`: Summary of results.
- `output.xml`: Output file for integration purposes.

---

## Contributions
Contributions are welcome! Please:
1. Open an issue to discuss improvements.
2. Submit a pull request with the changes.

---

**Happy Testing!** 🚀

