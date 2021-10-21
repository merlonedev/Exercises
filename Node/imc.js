const readline = require('readline-sync');

const imc = () => {
  const altura = readline.questionInt('Qual sua altura (cm)? ');
  const peso = readline.questionFloat('Qual seu peso (kg)? ');

  const imc = peso / ((altura / 100) ** 2);

  console.log(`Seu IMC é ${imc.toFixed(2)}`);

  if (imc >= 18.5 && imc <= 24.9) {
    console.log('Peso Normal');
  } else if (imc >= 25 && imc <= 29.9) {
    console.log('Acima do Peso');
  } else if (imc >= 30 && imc <= 34.9) {
    console.log('Obesidade I');
  } else if (imc >= 35 && imc <= 39.9) {
    console.log('Obesidade II');
  } else if (imc >= 40) {
    console.log('Obesidade III e IV');
  } else {
    console.log('Abaixo do peso');
  }
}

imc();