<h1><b>Projeto Compilador</b></h1>

# Descrição
### Trabalho desenvolvido com o objetivo de criar um compilador para a disciplina de Compiladores.

# Pré Requisitos
* Certifique-se de ter um editor de código instalado. De preferência o Visual Studio Code.
* Certifique-se de ter instalado o flex/bison. <a href="https://drive.google.com/file/d/1npDjcReRgZMM4eczjHP2CguRnccqXBlL/view">Instalação para Windows</a> | <a href="https://howtoinstall.co/pt/bison">Instalação para Linux(ubuntu)</a>
* Certifique-se de ter instalado a extensão "Lex Flex Yacc Bison" no Visual Studio Code. 

# Documentação

### Para sinalizar o início e fim do programa
```
inicio
  ... //codigo
fim
```

### Ler um valor (inte,quebrado)
```
 leia(_a)
```

### Ler um valor (stringi)
```
 leias(_a)
```

### Imprimir um valor (inte,quebrado)
```
 imprima(_a)
```

### Imprimir um valor (stringi)
```
 imprimas(_a)
```
### Imprimir um texto
```
 escrever("Digite algo: ")
```

### Para pular a linha (quebra de linha -> o famoso "\n")
```
 pularLinha()
```
### Para fazer comentário
```
 * Para comentar usar o "--" antes da linha.
 --escrever("Essa linha não será executada")
```


### Declaração de uma variável
```
*  Toda variável começa com o caractere "_" e deve ser inicializada com um valor inteiro(0).

 inte _a = 0
 quebrado _b = 0
 stringi c_ = 0
```

### Operações Matemáticas

##### Adição
```
inte _a = 3
inte _b = 7
inte _c = _a + _b
```

##### Subtração
```
inte _a = 7
inte _b = 3
inte _c = _a - _b
```

##### Divisão
```
inte _a = 10
inte _b = 2
inte _c = _a / _b
```
 
##### Multiplicação
```
inte _a = 10
inte _b = 5
inte _c = _a * _b
```

##### Exponenciação
```
inte _a = 5
inte _b = 2
inte _c = _a ^ _b
```

### Testes condicionais
```
*if = Executa se a condição for verdade else = Executa caso a condição do if for falsa.

inicio

--problema onde verifica a média

quebrado _nota1 = 0
quebrado _nota2 = 0
quebrado _media = 0

escrever("Informe a sua primeira nota: ")
pularLinha()
leia(_nota1)

escrever("Informe a sua segunda nota: ")
pularLinha()
leia(_nota2)

_media = (_nota1+_nota2)/2

escrever("Sua média é: ")
imprima(_media)
pularLinha()

if (_media >= 7) {
    escrever("Você está aprovado")
    pularLinha()
}else {
    escrever("Você está reprovado")
    pularLinha()
}


fim 
```

### Laço de Repetição
```
* while = Repeti enquanto a condição for verdadeira

inicio
--exibir de 1 a 10
inte _num1 = 1
inte _num2 = 10


while(_num1 <= _num2){
    imprima(_num1)
    pularLinha()
    _num1 = _num1 + 1
}

fim

```