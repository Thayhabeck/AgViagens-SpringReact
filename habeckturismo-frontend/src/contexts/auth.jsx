import React, { createContext, useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import UsuarioService from "../services/UsuarioService";

export const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
    const navigate = useNavigate();
    const [isLogged, setIsLogged] = useState(false);
    const [loggedUser, setLoggedUser] = useState({});
    const [user, setUser] = useState(null);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
      const recoveredUser = localStorage.getItem("user");

      if(recoveredUser){
          setUser(JSON.parse(recoveredUser));
      }
      setLoading(false);
    
    }, [])

    const getUserByLogin = (username) => {
        UsuarioService.getUsuarioByLogin(username).then((response) => {
            setLoggedUser({idUsuario: response.data.idUsuario, nome: response.data.nome, email: response.data.email, login: response.data.login, senha: response.data.senha})
        }).catch((error) => {
            console.log(error);
        })
    }

    const validateUser = (username, password) => {
        UsuarioService.authUsuario(username, password).then((response) => {
            setIsLogged(response.data);
        }).catch((error) => {
            console.log(error);
        })
    };

    const login = (username, password) => {
        console.log('login auth', { username, password } );
        
        
        validateUser(username, password);
        if (isLogged) {
            getUserByLogin(username);
            setUser(loggedUser);
            localStorage.setItem("user", JSON.stringify(loggedUser));
            navigate("/");
        }
    };

    const logout = () => {
        console.log("logout");
        localStorage.removeItem("user");
        setUser(null);
        setIsLogged(false);
        navigate("/login");
    };
    return (
        <AuthContext.Provider value={{ authenticated: !!user, user, isLogged, loading, login, logout }}>
            {children}
        </AuthContext.Provider>
    );

};