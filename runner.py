import resources.func.generateXrayToken as generateXrayToken
import resources.func.exportXMLXray as exportXMLXray
if __name__ == "__main__":
    token = generateXrayToken.get_token()
    exportXMLXray.export(token)
