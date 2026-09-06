# Projeto Lactus

**Equipe:** Lactus  
**Repositório Github:** [https://github.com/HpBtw/Lactus-Flutter.git](https://github.com/HpBtw/Lactus-Flutter.git)

## Integrantes
* Enzo Demitrius - 558912
* Luciano Henrique - 558975
* Matheus Rocha - 559201
* Rafael Vitor - 559116
* Vitor Silva - 558865

## Objetivo do Aplicativo
O aplicativo **Lactus** visa conectar nutrizes (doadoras de leite materno) aos Bancos de Leite Humano de forma simples, ágil e humanizada. Através da plataforma, a nutriz pode localizar os bancos de leite mais próximos, verificar a necessidade de estoque de cada unidade, gerenciar seus agendamentos e registrar intenções de doação em um formulário dedicado, simulando um fluxo completo de engajamento e fidelização.

## Telas e Navegação

### 1. Splash Screen

* **Descrição:** Tela inicial de carregamento exibindo uma animação fluida (Lottie) com a identidade visual do projeto antes de liberar o acesso às funcionalidades principais.

### 2. Tela Inicial (Home)

* **Descrição:** Dashboard principal de boas-vindas. Contém atalhos rápidos e botões de navegação para "Encontrar Bancos de Leite" e acessar os "Bancos aos quais estou cadastrada".

### 3. Listagem de Bancos de Leite

* **Descrição:** Exibe uma lista vertical com os hospitais e bancos de leite próximos (carregados via dados mockados no repositório local). Cada card mostra a distância em km e o nível de necessidade atual do estoque.

### 4. Detalhes do Banco

* **Descrição:** Tela acessada ao clicar em um item da lista. Exibe o endereço completo, dados da unidade selecionada via passagem de parâmetros na rota e o botão para "Iniciar Doação".

### 5. Formulário de Agendamento

* **Descrição:** Formulário para a nutriz preencher seus dados (Nome, CPF, Idade, Tipo Sanguíneo e Data). Contém validações visuais e formatação restrita de caracteres nos campos numéricos.

### 6. Bancos Cadastrados (Minhas Doações)

* **Descrição:** Exibe o histórico de doações agendadas pela nutriz. Caso não haja agendamentos no estado da aplicação, exibe uma mensagem amigável e um botão de atalho para a tela de listagem de bancos.

## Instruções de Execução

Siga os passos abaixo para rodar o aplicativo localmente em sua máquina:

1. Certifique-se de ter o [Flutter SDK](https://flutter.dev/docs/get-started/install) instalado.
2. Clone este repositório através do terminal:
   ```bash
   git clone [https://github.com/HpBtw/Lactus-Flutter.git](https://github.com/HpBtw/Lactus-Flutter.git)
   ```

Acesse a pasta do projeto:
   ```bash
   cd lactus-flutter
   ```

Baixe as dependências do projeto (incluindo o pacote lottie configurado no pubspec.yaml):
   ```bash
   flutter pub get]
   ```

Conecte um emulador (Android/iOS) ou um dispositivo físico via USB/Wi-Fi.

Execute o aplicativo:
   ```bash
   flutter run
   ```

Evidências de Funcionamento
