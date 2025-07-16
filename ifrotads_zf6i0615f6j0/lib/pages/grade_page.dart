import 'package:flutter/material.dart';

class GradePage extends StatelessWidget {
  const GradePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Grade Curricular',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SectionTitle('Apresentação'),
            SectionText(
              'A grade curricular do curso de Tecnologia em Análise e Desenvolvimento de Sistemas foi '
              'estruturada para oferecer uma formação sólida, combinando teoria e prática para preparar '
              'os estudantes para os desafios do mercado de trabalho e para o desenvolvimento de soluções inovadoras.',
            ),
            SizedBox(height: 32),
            SectionTitle('Disciplinas por Semestre'),
            SizedBox(height: 16),
            SemesterList(),
            SizedBox(height: 32),
            SectionTitle('Atividades Complementares'),
            SectionText(
              'Além das disciplinas obrigatórias, o curso oferece atividades complementares, '
              'como participação em eventos, workshops, projetos de extensão e pesquisa, visando ampliar '
              'a formação e as oportunidades de aprendizado prático dos alunos.',
            ),
            SizedBox(height: 32),
            SectionTitle('Carga Horária'),
            SectionText(
              'O curso possui carga horária total de 2.400 horas, distribuídas ao longo de 3 anos, com aulas teóricas, '
              'práticas em laboratório, estágios supervisionados e atividades complementares.',
            ),
            SizedBox(height: 32),
            Center(
              child: Text(
                '© 2025 IFRO - Tecnologia em Análise e Desenvolvimento de Sistemas',
                style: TextStyle(color: Colors.white70, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SemesterList extends StatelessWidget {
  const SemesterList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, List<String>>> semesters = [
      {
        '1º Semestre': [
          'Lógica de Programação',
          'Matemática Discreta',
          'Algoritmos e Estruturas de Dados',
          'Introdução à Computação',
          'Comunicação e Expressão',
        ],
      },
      {
        '2º Semestre': [
          'Programação Orientada a Objetos',
          'Banco de Dados I',
          'Sistemas Operacionais',
          'Engenharia de Software I',
          'Probabilidade e Estatística',
        ],
      },
      {
        '3º Semestre': [
          'Estrutura de Dados Avançada',
          'Banco de Dados II',
          'Engenharia de Software II',
          'Redes de Computadores',
          'Projeto Integrador I',
        ],
      },
      {
        '4º Semestre': [
          'Desenvolvimento Web',
          'Programação Mobile',
          'Segurança da Informação',
          'Gestão de Projetos de TI',
          'Projeto Integrador II',
        ],
      },
      {
        '5º Semestre': [
          'Inteligência Artificial',
          'Tópicos Especiais em TI',
          'Empreendedorismo e Inovação',
          'Estágio Supervisionado',
          'Projeto Integrador III',
        ],
      },
      {
        '6º Semestre': [
          'Optativa I',
          'Optativa II',
          'Trabalho de Conclusão de Curso (TCC)',
          'Atividades Complementares',
        ],
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: semesters.map((semester) {
        final title = semester.keys.first;
        final subjects = semester[title]!;
        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              ...subjects.map((subject) => Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 4),
                    child: Text(
                      '• $subject',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  )),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.green,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SectionText extends StatelessWidget {
  final String text;
  const SectionText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white70,
        fontSize: 16,
        height: 1.4,
      ),
    );
  }
}
