const express = require("express");
const { Pool } = require("pg");
const cors = require("cors");
require("dotenv").config();


const app = express();

app.use(cors());
app.use(express.json());


// conexão com PostgreSQL
const pool = new Pool({
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    database: process.env.DB_NAME,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
});


// listar salgados
app.get("/api/salgados", async (req,res)=>{

    try{

        const resultado = await pool.query(
            "SELECT * FROM item_cardapio WHERE id_categoria = 1"
        );


        res.json(resultado.rows);


    }catch(erro){

        console.log(erro);

        res.status(500).json({
            erro:"Erro no banco"
        });

    }

});



// listar doces
app.get("/api/doces", async (req,res)=>{

    try{

        const resultado = await pool.query(
            "SELECT * FROM item_cardapio WHERE id_categoria = 2"
        );


        res.json(resultado.rows);


    }catch(erro){

        console.log(erro);

    }

});



// listar bebidas
app.get("/api/tudo", async (req,res)=>{

    try{

        const resultado = await pool.query(
            "SELECT * FROM item_cardapio"
        );


        res.json(resultado.rows);


    }catch(erro){

        console.log(erro);

        res.status(500).json({
            erro:"Erro no banco"
        });

    }

});





app.listen(3001, ()=>{

    console.log("Servidor rodando na porta 3001");

});