from ingestion import carregar_dados
from run_models import atualizar_modelos

def main():
  print("Iniciando pipeline de dados...")
  try:
    print("\nCarregando dados...")
    carregar_dados()

    print("\nExecução dos modelos...")
    atualizar_modelos()

  except Exception:
    print("\nPipeline interrompido devido a erros...")
    raise
  
  print("\nPipeline concluído com sucesso...")

if __name__ == "__main__":
  main()