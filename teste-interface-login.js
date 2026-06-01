describe('Teste de Login', () => {

  it('Deve validar email inválido', () => {

    const email = 'usuarioemail.com';

    if (!email.includes('@')) {
      console.log('Email inválido');
    }

  });

  it('Deve validar campo vazio', () => {

    const email = '';

    if (email === '') {
      console.log('Campo obrigatório');
    }

  });

  it('Deve validar email correto', () => {

    const email = 'usuario@email.com';

    if (email.includes('@')) {
      console.log('Login permitido');
    }

  });

});
