void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  var newList =  pessoas.toSet().map((p) => p.split('|')).toList();
  for (var personInformation in newList) {
    print(personInformation[0]);
  }
  print('');
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  int countM = 0;
  int countF = 0;
  var personM = <String>[];
  var personF = <String>[];
  for (var personInformation in newList) {
    if (personInformation[2].contains('Masculino')) {
      countM++;
      personM.add(personInformation[0]);
    }
    if (personInformation[2].contains('Feminino')) {
      countF++;
      personF.add(personInformation[0]);
    }
  }
  print('Tem $countM pessoas do sexo masculino:');
  personM.forEach(print);
  print('');
  print('Tem $countF pessoas do sexo feminina:');
  personF.forEach(print);
  print('');

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  var person18 = newList.where((p) {
    var idade = int.tryParse(p[1]) ?? 0;
    return (idade > 18);
  }
  );
  for (var p in person18) {print(p[0]);} 
  print('');
  
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  var orderedList = [...person18];
  orderedList.toList();
  orderedList.sort(
    (a, b) {
      final idade1 = int.tryParse(a[1]) ?? 0;
      final idade2 = int.tryParse(b[1]) ?? 0;
      return idade1.compareTo(idade2);
    }
  );
print('A pessoa mais velha da lista e ${orderedList.last[0]}');
}
