import axios from "axios";

const DESTINO_API_URL = "http://localhost:8080/destino";

class DestinoService {
    getAllDestinos() {
        return axios.get(DESTINO_API_URL + "?size=24");
    }

    createDestino(destino){
        return axios.post(DESTINO_API_URL + "/create", destino);
    }

    getDestinoById(destinoId) {
        return axios.get(DESTINO_API_URL + "/" + destinoId);
    }

    updateDestino(destinoId, destino) {
        return axios.put(DESTINO_API_URL + "/" + destinoId, destino);
    }

    deleteDestino(destinoId) {
        return axios.delete(DESTINO_API_URL + "/" + destinoId);
    }
}

export default new DestinoService();