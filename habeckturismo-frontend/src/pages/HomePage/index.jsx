import { Link } from "react-router-dom";
import "./styles.css"

export default function Home() {
    return (
        <>
        <div className="container-fluid mt-3">
            <main role="main" className="pb-3">
                <div id="bookstoreCarrousel" className="carousel slide carousel-fade" data-bs-ride="carousel">
                <div className="carousel-inner">
                    <div className="carousel-item active">
                        
                        <img src="https://media.discordapp.net/attachments/899633526411001876/954464587456086056/img2.jpg?width=1440&height=323" className="d-block w-100" alt="..." />
                    </div>
                    <div className="carousel-item">
                        <img src="https://media.discordapp.net/attachments/899633526411001876/954464587992936468/img3.jpg?width=1440&height=323" className="d-block w-100" alt="..." />
                    </div>
                    <div className="carousel-item">
                        <img src="https://media.discordapp.net/attachments/899633526411001876/954464588424945744/img1.jpg?width=1440&height=323" className="d-block w-100" alt="..." />
                    </div>
                </div>
                <button className="carousel-control-prev" type="button" data-bs-target="#bookstoreCarrousel" data-bs-slide="prev">
                    <span className="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span className="visually-hidden">Previous</span>
                </button>
                <button className="carousel-control-next" type="button" data-bs-target="#bookstoreCarrousel" data-bs-slide="next">
                    <span className="carousel-control-next-icon" aria-hidden="true"></span>
                    <span className="visually-hidden">Next</span>
                </button>
            </div>
                <div className="jumbotron conteiner d-flex">
                    <div className="w-100 text-center">
                        <h1 className="display-4">Bem vindo Viajante</h1>
                        <p>Conheça nossos destinos mais procurados e planeje as férias dos seus sonhos. <br />Belíssimas paisagens naturais, e praias paradisíacas para uma viagem inesquecível!</p>
                        <hr />
                        <div className="btn-group">
                        <Link to='/Destinos' className="btn btn-outline-dark btn-md">
                            Conhecer Destinos
                        </Link>
                        <Link to='/cadastro' className="btn btn-outline-dark btn-md">
                            Cadastre-se
                        </Link>
                        </div>
                   </div>
                </div>
            </main>
        </div>
        </>
    );
}