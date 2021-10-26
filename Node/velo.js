const readline = require('readline-sync');

const velo = () => {
  const dist = readline.questionInt('Qual a distância (m)? ');
  const tempo = readline.questionInt('Qual o tempo (s)? ');

  const velocidade = dist / tempo;

  console.log(`Velocidade: ${velocidade.toFixed(2)}m/s`);
}

velo();