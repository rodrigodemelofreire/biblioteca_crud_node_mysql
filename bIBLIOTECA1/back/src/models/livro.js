class livro {

    constructor(i) {
        this.id = i.id
        this.nome = i.nome
        this.autor = i.autor
        this.valor = i.valor
        this.data_emprestimo = i.data_emprestimo
        this.data_devolucao_prevista = i.data_devolucao_prevista
        this.data_devolucao = i.data_devolucao

    }

    create() {
        return `INSERT INTO livro VALUES('${this.id}','${this.nome}','${this.autor}',${this.valor},'${this.data_emprestimo}',
         '${this.data_devolucao_prevista}','${this.data_devolucao}')`
    }

    read() {
        if (this.id == undefined)
            return `SELECT * FROM livro`
        else
            return `SELECT * FROM livro WHERE id = '${this.id}'`
    }

    update(id) {
        return `UPDATE livro SET nome = '${this.nome}', autor = '${this.autor}', valor = '${this.valor}', 
        data_emprestimo = '${this.data_emprestimo}', data_devolucao_prevista = '${this.data_devolucao_prevista}'
        data_devolucao = '${this.data_devolucao}' WHERE id = '${id}'`
    }

    delete() {
        return `DELETE FROM livro WHERE id = '${this.id}'`
    }
}

module.exports = livro 