import axios from "axios";

const REGIAO_API_URL = "http://localhost:8080/regiao";

class RegiaoService {
    getAllRegioes() {
        return axios.get(REGIAO_API_URL);
    }
}

export default new RegiaoService();