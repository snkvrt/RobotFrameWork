import requests

# Configuration
url = "https://xray.cloud.getxray.app/api/v2/import/execution/robot"
project_key = "POEI2025"
token = "votre_token_jwt_ici"  # Remplacez par votre token réel
file_path = "outputs/output.xml"  # Chemin vers votre fichier XML

# En-têtes
headers = {
    "Content-Type": "text/xml",
    "Authorization": f"Bearer {token}"
}

# Lecture du fichier XML
try:
    with open(file_path, 'rb') as file:
        xml_data = file.read()
except FileNotFoundError:
    print(f"Erreur: Le fichier {file_path} n'a pas été trouvé.")
    exit(1)

# Paramètres de la requête
params = {
    "projectKey": project_key
}

# Envoi de la requête POST
def export(token): 
    print("Début de l'importation...")
    try:
        response = requests.post(
            url,
            headers=headers,
            data=xml_data,
            params=params
        )
        
        # Vérification de la réponse
        response.raise_for_status()  # Lève une exception pour les codes 4xx/5xx
        
        print("Import réussi!")
        print("Réponse:", response.json())
    
    except requests.exceptions.RequestException as e:
        print("Erreur lors de l'import:")
        print(e)
        if e.response:
            print("Détails de l'erreur:", e.response.text)