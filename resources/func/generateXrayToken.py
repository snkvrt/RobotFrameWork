import subprocess
import json

# Configuration
url = "https://xray.cloud.getxray.app/api/v2/authenticate"
data = {
    "client_id": "DA94515D482B438FA35A924E4B840298",
    "client_secret": "8da250e9eb7def34f65be632e6fc7e13a229059bcc8a9dbb1ae1e9c3deb33fdf"
}

# Conversion des données en JSON
json_data = json.dumps(data)

# Construction de la commande curl
command = [
    'curl',
    '-H', 'Content-Type: application/json',
    '-X', 'POST',
    '--data', json_data,
    url
]

token = None

def get_token():
    print("Génération d'un token jwt...")
    # Exécution
    try:
        result = subprocess.run(command, capture_output=True, text=True, check=True)
        global token
        token = result.stdout.strip().replace('"', '')
        # Affichage du token
        print("Token généré avec succès ! :")
        print(token)
    except subprocess.CalledProcessError as e:
        print("Erreur:", e.stderr)
    
    return token