# Bibliotecas
import pandas as pd
import sqlite3

from config import RAW, DATABASE

# Mapeamento das tabelas
TABELAS = {
  "tbl_alunos.xlsx": "raw_alunos",
  "tbl_planos.xlsx": "raw_planos",
  "tbl_matriculas.xlsx": "raw_matriculas",
  "tbl_pagamentos.xlsx": "raw_pagamentos",
  "tbl_presencas.xlsx": "raw_presencas"
}

# Função para carregar os dados no SQLite
def carregar_dados():
  conn = sqlite3.connect(DATABASE)
  try:
    for arquivo, tabela in TABELAS.items():
      caminho = RAW / arquivo
      df = pd.read_excel(caminho, sheet_name=0)
      df.to_sql(
        tabela,
        conn,
        if_exists="replace",
        index=False,
        chunksize=5000
      )

      del df
  finally:
    conn.close()

if __name__ == "__main__":
  carregar_dados()