import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';

class Square extends React.Component{
	render(){
		return(
		<button className='square'></button>
		);
	}
}

class Board extends React.Component{
	renderSquare(i){
		return  <square />;
	}
	render(){
		const status='next player is : X';
		return(
		<div>
		<div>
		{this.renderSquare(1)};
		{this.renderSquare(2)};
		{this.renderSquare(3)};
		</div>
		<div>
		{this.renderSquare(4)};
		{this.renderSquare(5)};
		{this.renderSquare(6)};
		</div>
		<div>
		{this.renderSquare(7)};
		{this.renderSquare(8)};
		{this.renderSquare(9)};
		</div>
		</div>
		);
	}

}

class Game extends React.Component{
	render(){
		return (
			<div className='game'>
			<div className='game-board'>
			<Board />
			</div>
			<div className="game-info">
          		<div>{/* status */}</div>
          		<ol>{/* TODO */}</ol>
        	</div>
			</div>
			);
	}
}

ReactDOM.render(
	<Game />,document.getElementById('root'));