import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:sabrina_protifolio_app/sabrina_portifolio_app/core/widgets/sabrina_app_bar.widget.dart';

class CompanyDetailsView extends StatefulWidget {
  final String companyName;

  const CompanyDetailsView({Key? key, required this.companyName})
      : super(key: key);

  @override
  State<CompanyDetailsView> createState() => _CompanyDetailsViewState();
}

class _CompanyDetailsViewState extends State<CompanyDetailsView> {
  String description = loremIpsum(paragraphs: 1, words: 60);
  List<Map<String, dynamic>> experiencias = [
    {
      "empresa": "Defensoria Pública do Estado de Minas Gerais",
      "descricao":
      "A Defensoria Pública é instituição permanente, essencial à função jurisdicional do Estado, incumbindo-lhe, como expressão e instrumento do regime democrático, fundamentalmente, a orientação jurídica, a promoção dos direitos humanos e a defesa, em todos os graus, judicial e extrajudicial, dos direitos individuais e coletivos, de forma integral e gratuita, aos necessitados, prevista na Constituição Federal, em seu art. 134 (EC 80, 04/06/2014).",
      "duracao_total": "2 anos 9 meses",
      "posicoes": [
        {
          "cargo": "Mobile Developer",
          "periodo": "junho de 2023 - Present (1 ano 1 mês)",
          "localizacao": "Belo Horizonte, Minas Gerais, Brasil",
          "responsabilidades": [
            "Desenvolvimento de aplicativos móveis com Flutter e Dart para a plataforma Android.",
            "Implementação de novas funcionalidades e manutenção de aplicações existentes.",
            "Colaboração com equipes multidisciplinares para garantir soluções de alta qualidade.",
            "Realização de testes de unidade e funcionais, garantindo aplicativos livres de bugs.",
            "Monitoramento e atualização constante para compatibilidade com novas versões do Android.",
            "Produção de documentação técnica detalhada.",
            "Participação em metodologias ágeis para um fluxo de trabalho eficiente e iterativo."
          ]
        },
        {
          "cargo": "Mobile Developer Intern",
          "periodo": "fevereiro de 2023 - junho de 2023 (5 meses)",
          "localizacao": "Belo Horizonte, Minas Gerais, Brasil",
          "responsabilidades": [
            "Apoio no desenvolvimento de funcionalidades para aplicativos móveis.",
            "Auxílio na realização de testes e debugging de aplicações.",
            "Participação em reuniões de equipe e atividades de planejamento.",
            "Colaboração com desenvolvedores experientes para aprender melhores práticas."
          ]
        },
        {
          "cargo": "UI | UX Design Intern",
          "periodo": "janeiro de 2023 - maio de 2023 (5 meses)",
          "localizacao": "Belo Horizonte, Minas Gerais, Brasil",
          "responsabilidades": [
            "Criação de wireframes e protótipos para novos recursos de aplicativos.",
            "Pesquisa de usabilidade e feedback de usuários para melhorar a experiência do usuário.",
            "Colaboração com desenvolvedores para garantir a implementação das melhores práticas de design.",
            "Participação em sessões de brainstorming e design thinking."
          ]
        },
        {
          "cargo": "Database Administrator Intern",
          "periodo": "maio de 2022 - janeiro de 2023 (9 meses)",
          "localizacao": "Belo Horizonte e Região",
          "responsabilidades": [
            "Assistência na manutenção e otimização de bancos de dados.",
            "Monitoramento de performance e execução de backups regulares.",
            "Suporte na resolução de problemas de banco de dados e consultas SQL.",
            "Documentação de processos e procedimentos de administração de banco de dados."
          ]
        },
        {
          "cargo": "Front-end Developer Intern",
          "periodo": "dezembro de 2021 - maio de 2022 (6 meses)",
          "localizacao": "Belo Horizonte, Minas Gerais, Brasil",
          "responsabilidades": [
            "Desenvolvimento de interfaces de usuário responsivas e intuitivas.",
            "Implementação de componentes visuais utilizando HTML, CSS e JavaScript.",
            "Colaboração com designers para traduzir wireframes em código funcional.",
            "Testes de usabilidade e correção de bugs de front-end."
          ]
        },
        {
          "cargo": "Information Technology Intern - QA Tester",
          "periodo": "outubro de 2021 - dezembro de 2021 (3 meses)",
          "localizacao": "Belo Horizonte, Minas Gerais, Brasil",
          "responsabilidades": [
            "Execução de testes de qualidade para garantir o funcionamento correto das aplicações.",
            "Documentação de bugs e problemas encontrados durante os testes.",
            "Colaboração com desenvolvedores para resolver problemas identificados.",
            "Criação de scripts de teste automatizados para melhorar a eficiência do processo de QA."
          ]
        }
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
      appBar: SabrinaAppBarWidget(
        icon: const Icon(Icons.arrow_back),
        title: widget.companyName,
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assets/images/DefensoriaLogo.png'),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        widget.companyName,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              SingleChildScrollView(
                child: Text(
                  experiencias[0]['descricao'].toString(),
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    fontSize: 14,
                  ),
                ),
              ),
              for (var posicao in experiencias[0]['posicoes'])
                Cargo(
                  cargo: posicao["cargo"].toString(),
                  periodo: posicao["periodo"].toString(),
                  responsabilidades: posicao["responsabilidades"],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cargo extends StatelessWidget {
  const Cargo({
    super.key,
    required this.cargo,
    required this.periodo,
    required this.responsabilidades,
  });

  final String cargo;
  final String periodo;
  final List<dynamic> responsabilidades;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Row(
          children: [
            const Text(
              'Cargo: ',
              style: TextStyle(
                color: Color.fromRGBO(41, 159, 172, 1.0),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              cargo,
              style: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1.0),
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            const Text(
              'Período: ',
              style: TextStyle(
                color: Color.fromRGBO(41, 159, 172, 1.0),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Text(
                periodo,
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        const Text(
          "Responsabilidades:",
          style: TextStyle(
            color: Color.fromRGBO(41, 159, 172, 1.0),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        for (var responsabilidade in responsabilidades)
          Text(
            "- $responsabilidade",
            textAlign: TextAlign.justify,
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1.0),
              fontSize: 14,
            ),
          ),
      ],
    );
  }
}
