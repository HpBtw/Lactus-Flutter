# Projeto Lactus

**Equipe:** Lactus  
**Repositório Github:** https://github.com/HpBtw/Lactus-Flutter.git

## Integrantes

- Enzo Demitrius - 558912
- Luciano Henrique - 558975
- Matheus Rocha - 559201
- Rafael Vitor - 559116
- Vitor Silva - 558865

## Objetivo do Aplicativo

O aplicativo **Lactus** visa conectar nutrizes (doadoras de leite materno) aos Bancos de Leite Humano de forma simples, ágil e humanizada. Através da plataforma, a nutriz pode localizar os bancos de leite mais próximos, verificar a necessidade de estoque de cada unidade, gerenciar seus agendamentos e registrar intenções de doação em um formulário dedicado, simulando um fluxo completo de engajamento e fidelização.

## Telas e Navegação

### 1. Splash Screen

<img width="494" height="777" alt="image" src="https://github.com/user-attachments/assets/b329c092-93d0-4547-b249-cac40d41add9" />

- **Descrição:** Tela inicial de carregamento exibindo uma animação fluida (Lottie) com a identidade visual do projeto antes de liberar o acesso às funcionalidades principais.

### 2. Tela Inicial (Home)

<img width="494" height="777" alt="image" src="https://github.com/user-attachments/assets/7d0c1f34-106e-4ffc-b68d-2afcbe575291" />

- **Descrição:** Tela principal de boas-vindas. Contém atalhos rápidos e botões de navegação para "Encontrar Bancos de Leite" e acessar os "Bancos aos quais estou cadastrada".

### 3. Listagem de Bancos de Leite

<img width="495" height="777" alt="image" src="https://github.com/user-attachments/assets/e9cd1735-f684-4614-8f1f-a86004ca6f00" />

- **Descrição:** Exibe uma lista vertical com os hospitais e bancos de leite próximos (carregados via dados mockados no repositório local). Cada card mostra a distância em km e o nível de necessidade atual do estoque.

### 4. Detalhes do Banco

<img width="493" height="777" alt="image" src="https://github.com/user-attachments/assets/ddff85e9-6d35-4dfd-be14-0f2ff0779271" />

- **Descrição:** Tela acessada ao clicar em um item da lista. Exibe o endereço completo, dados da unidade selecionada via passagem de parâmetros na rota e o botão para "Iniciar Doação".

### 5. Formulário de Agendamento

<img width="495" height="779" alt="image" src="https://github.com/user-attachments/assets/29d55055-c38b-430d-9798-924d635ab55b" />

- **Descrição:** Formulário para a nutriz preencher seus dados (Nome, CPF, Idade, Tipo Sanguíneo e Data). Contém validações visuais e formatação restrita de caracteres nos campos numéricos.

### 6. Bancos Cadastrados (Minhas Doações)

<img width="493" height="777" alt="image" src="https://github.com/user-attachments/assets/f1054cd7-8175-4819-a298-64d3eea2024c" />

- **Descrição:** Exibe o histórico de doações agendadas pela nutriz. Caso não haja agendamentos no estado da aplicação, exibe uma mensagem amigável e um botão de atalho para a tela de listagem de bancos.

### 7. Evidências de Funcionamento

https://github.com/user-attachments/assets/eb9fc511-c089-43b5-8cb4-75df2e8e13c2

## Instruções de Execução

Siga os passos abaixo para rodar o aplicativo localmente em sua máquina:

1. Certifique-se de ter o [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado.
2. Clone este repositório através do terminal:

   ```bash
   git clone https://github.com/HpBtw/Lactus-Flutter.git
   ```

3. Acesse a pasta do projeto:

   ```bash
   cd lactus-flutter
   ```

4. Baixe as dependências do projeto (incluindo o pacote lottie configurado no pubspec.yaml):

   ```bash
   flutter pub get
   ```

5. Conecte um emulador (Android/iOS), dispositivo físico via USB/Wi-Fi ou rode pelo Flutter Built-in LiveServer.

6. Execute o aplicativo:
   ```bash
   flutter run
   ```
