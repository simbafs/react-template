import React from 'react';
import ReactDom from 'react-dom';

class App extends React.Component{
	render(){
		return (
			<div>
				<h1>Hello world</h1>
				<p>compile by babel and webpack</p>
			</div>
		)
	}
}

ReactDom.render(<App />, document.getElementById('app'));
