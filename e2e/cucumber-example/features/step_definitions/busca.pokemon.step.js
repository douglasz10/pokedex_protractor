const chai = require('chai');
const chaiAsPromised = require('chai-as-promised');

const ListagemPage = require('../../../pages/listagem.po.js');

chai.use(chaiAsPromised);
const expect = chai.expect;

module.exports = function(){
  const listagemPage = new ListagemPage();
  
  // encontrar 2 pokemons
  this.Given(/^que eu estou na tela de listagem de pokémons$/, function (callback) {
    listagemPage.visit().then(callback);
  });

  this.When(/^eu digito "([^"]*)" no campo de pesquisa$/, function (nome, callback) {
    const filtro = listagemPage.filtro;
    
    const EC = protractor.ExpectedConditions;
    browser.wait(EC.presenceOf(filtro));
    
    listagemPage.pesquisarPokemon(nome).then(callback);
  });

  this.Then(/^devo visualizar dois pokémons no resultado$/, function (callback) {
    expect(listagemPage.resultados.count()).to.eventually.equal(2).and.notify(callback);
  });

  // lista vazia após pesquisar pokemon
  this.Then(/^devo visualizar a lista vazia$/, function (callback) {
    expect(listagemPage.resultados.count()).to.eventually.equal(0).and.notify(callback);
  });


}