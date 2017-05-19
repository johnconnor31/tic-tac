import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';

function Square(props)
	{
	return (<button className="square" 
		 		 onClick={props.handle}>
		 		 {props.val}
			</button>
			);
		}

class Board extends React.Component
{
	constructor(){
		super();
		this.state={
			square: new Array(9),
			isNext:false
		};
	}
	handleClick(i){
		var vals= this.state.square.slice();
		vals[i]=this.state.isNext?'O':'X';
		this.setState({
			square:vals,
			isNext:!this.state.isNext
		});
	}
	renderSquare(i){
		return  <Square val={this.state.square[i]} handle={()=>this.handleClick(i)}/>;
	}
	checkWinner(squareVals){
		var winnerArr=[
			[0,1,2],
			[3,4,5],
			[6,7,8],
			[0,3,6],
			[1,4,7],
			[2,5,8],
			[0,4,8],
			[2,4,6],
			];
		for(let i=0;i<winnerArr.length;i++){
			var [a,b,c]=winnerArr[i];
		if(squareVals[a]&&squareVals[a]===squareVals[b]&&squareVals[a]===squareVals[c])
				return squareVals[a];
			
		}
		return null;
		}
	render(){

		const status = 'next player is :' + (this.state.isNext?'O':'X');
		var squareVals=this.state.square;
		var result=this.checkWinner(squareVals);
		console.log(result);
		return(
		<div>
			<div className="status">
				{result?('Winner is:'+result):status}
			</div>
			<div className='board-row'>
				{this.renderSquare(0)}
				{this.renderSquare(1)}
				{this.renderSquare(2)}
			</div>
			<div className='board-row'>
				{this.renderSquare(3)}
				{this.renderSquare(4)}
				{this.renderSquare(5)}
			</div>
			<div className='board-row'>
				{this.renderSquare(6)}
				{this.renderSquare(7)}
				{this.renderSquare(8)}
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
          		<div>{status}</div>
          		<ol>{/* TODO */}</ol>
        	</div>
			</div>
			);
	}
}

ReactDOM.render(
	<Game />,document.getElementById('root'));