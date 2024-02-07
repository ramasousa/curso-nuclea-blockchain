// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.19;

import "./owner.sol";
import "./titulo.sol";

/**
 * @title NotaRegistrada
 * @dev NotaRegistrada
 * @author Raul Sousa
 */
 contract NotaRegistrada is Titulo, Owner {
   
    string _estabelecimento;
    string _empCredenciadora;
    string _arranjoPgto;
    uint256 _dataLiquidacao;
    uint256 _valor;
    uint256 immutable _dataEmissao;    
    uint8 immutable _decimais;    


    constructor() {
        _empCredenciadora = "Stone";
        _arranjo = "001";
        _estabelecimento = "12345678900000";
        _dataEmissao = block.timestamp;
        _valor = 10000;
        _decimais = 2;
        _dataLiquidacao = _dataEmissao + 20 days;
        emit NovoPrazoPagamento(_dataEmissao, _dataLiquidacao);
    }

    

    /**
     * @dev Retorna o nome da Credenciadora emissora desse recebível.
     */
    function nomeEmissor() external view returns (string memory) {
        return _empCredenciadora;
    }

    /**
     * @dev Retorna o arranjo do recebivel.
     */
    function arranjo() external view returns (string memory) {
        return _arranjo;
    }

    /**
     * @dev Retorna o valor nominal.
     */
    function valorNominal() external view returns (uint256) {
        return _valor;
    }

    /**
     * @dev Retorna a data da emissao.
     */
    function dataEmissao() external view returns (uint256) {
        return _dataEmissao;
    }

    /**
     * @dev Retorna a data prevista de Liquidacao
     */
    function dataPrevistaDeLiquidacao() external view returns (uint256) {
        return _dataLiquidacao;
    }


 }
