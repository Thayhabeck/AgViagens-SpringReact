import React, { useEffect, useState } from "react";
import axios from "axios";
import Header from '../../components/Header';
import DestCard from "../../components/DestCard";
import Pagination from "../../components/Pagination/index";
import "./styles.css"

export default function Destinos() {
    
    const [pageNb, setPageNb] = useState(0);
    const [page, setPage] = useState({
        content: [],
        last: true,
        totalPages: 0,
        totalElements: 0,
        size: 12,
        number: 0,
        first: true,
        numberOfElements: 0,
        empty: true
    });
    useEffect(() => {
        axios.get(`http://localhost:8080/destino?size=12&page=${pageNb}&sort=cidade`).then(response => {
            const data = response.data;
            setPage(data);
        });
    }, [pageNb]);
    const handlePageChange = (newPageNumber) => {
        setPageNb(newPageNumber);
    }
    return (
        <div className="p-0 m-0">
            <Header title="Destinos" />
            <hr className="p-0 m-0" />
            <main className="main-pags">
                <div className=" justify-content-around">
                    <Pagination page={page} onChange={handlePageChange} />
                    <div className="dests justify-content-around">
                        <div className="row dests justify-content-center align-content-center">
                            {page.content.map(destino =>
                            (
                                <div key={destino.idDestino} className="col-sm-6 col-lg-4 col-xl-3 mb-3">
                                    <DestCard imagem={destino.imagem} cidade={destino.cidade} estado={destino.estado} preco={destino.precoDiaria} />
                                </div>
                            ))}
                        </div>
                    </div>
                </div>
            </main>
        </div>
    );
}