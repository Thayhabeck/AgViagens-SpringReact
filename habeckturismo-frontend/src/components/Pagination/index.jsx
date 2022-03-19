import React, { Component } from "react";
import { ReactComponent as Arrow } from '../../assets/arrow.svg'
import './styles.css'


export default class DestCard extends Component {

    render (){
        return(
        <div className="arrow-pagination-container">
            <div className="arrow-pagination-box">
                <button className="arrow-pagination-button" disabled={this.props.page.first} onClick={() => this.props.onChange(this.props.page.number - 1)}>
                    <Arrow />
                </button>
                <p>{`${this.props.page.number + 1} de ${this.props.page.totalPages}`}</p>
                <button className="arrow-pagination-button" disabled={this.props.page.last} onClick={() => this.props.onChange(this.props.page.number + 1)}>
                    <Arrow className="arrow-flip-horizontal" />
                </button>
            </div>
        </div>);
    };
}
