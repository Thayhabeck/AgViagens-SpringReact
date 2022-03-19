import axios from "axios";

const REGIAO_API_URL = "https://habeckturismo.herokuapp.com/regiao";

class RegiaoService {
    getAllRegioes() {
        return axios.get(REGIAO_API_URL);
    }
}

export default new RegiaoService();