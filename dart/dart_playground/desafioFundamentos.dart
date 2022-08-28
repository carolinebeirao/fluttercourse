void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman |35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  var nomes = [];
  var idades = [];
  var profissoes = [];
  var estado = [];

  for (var i = 0; i < pacientes.length; i++) {
    // print(pacientes[i]);
    var pacienteDaVez = pacientes[i].split('|');
    nomes.add(pacienteDaVez[0]);
    idades.add(pacienteDaVez[1]);
    profissoes.add(pacienteDaVez[2]);
    estado.add(pacienteDaVez[3]);
  }

  var maior20 = [];

  for (var i = 0; i < idades.length; i++) {
    if (int.parse(idades[i]) > 20) {
      maior20.add(nomes[i]);
    }
  }

  print('------------------');
  print('Pacientes com mais de 20 anos');

  for (var paciente in maior20) {
    print('Nome: $paciente');
  }

  print('------------------');

  var dev = 0;
  var jorna = 0;
  var estu = 0;
  var dent = 0;

  for (var i = 0; i < profissoes.length; i++) {
    var profissao = profissoes[i].toString();
    if (profissao.toLowerCase().contains('desenvolvedor')) {
      dev++;
    } else if (profissao.toLowerCase().contains('estudante')) {
      estu++;
    } else if (profissao.toLowerCase().contains('dentista')) {
      dent++;
    } else if (profissao.toLowerCase().contains('jornalista')) {
      jorna++;
    }
  }

  print('---------------');
  print('Quantidade de pacientes por profissão');
  print('Desenvolvedor:  $dev');
  print('Jornalista: $jorna');
  print('Estudante: $estu');
  print('Dentista: $dent');
  print('---------------');

  var qtd = 0;
  for (var item in estado) {
    if (item.toString().toLowerCase().contains('sp')) {
      qtd++;
    }
  }

  print('---------------');
  print('$qtd pacientes moram em SP');
  print('---------------');

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP
}





