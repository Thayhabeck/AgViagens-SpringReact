import axios from "axios";

const USUARIO_API_URL = "http://localhost:8080/usuario";

class UsuarioService {
    getAllUsuarios() {
        return axios.get(USUARIO_API_URL);
    }

    createUsuario(usuario){
        return axios.post(USUARIO_API_URL + "/create", usuario);
    }

    getUsuarioById(usuarioId) {
        return axios.get(USUARIO_API_URL + "/" + usuarioId);
    }

    getUsuarioByLogin(usuarioLogin) {
        return axios.get(USUARIO_API_URL + "/login/" + usuarioLogin);
    }

    updateUsuario(usuarioId, usuario) {
        return axios.put(USUARIO_API_URL + "/" + usuarioId, usuario);
    }

    deleteUsuario(usuarioId) {
        return axios.delete(USUARIO_API_URL + "/" + usuarioId);
    }

    authUsuario(usuarioLogin, usuarioSenha) {
        return axios.get(USUARIO_API_URL + "/auth?login=" + usuarioLogin + "&senha=" + usuarioSenha, usuarioLogin, usuarioSenha);
    }
}

export default new UsuarioService();