// This file is for react-static, if you don't need it just use the follow commented code replaces it.
// import React from 'react';
// import ReactDOM from 'react-dom';
//
// import App from './App.js';
//
// ReactDom.render(<App />, document.getElementById('root'));


import React from 'react';
import ReactDOM from 'react-dom';

// Your top level component
import App from './App.js';

// Export your top level component as JSX (for static rendering)
export default App;

// Render your app
if (typeof document !== 'undefined') {
	const target = document.getElementById('root');

	const renderMethod = target.hasChildNodes()
		? ReactDOM.hydrate
		: ReactDOM.render;

	const render = Comp => {
		renderMethod(
			<Comp />,
			target
		);
	};

	// Render!
	render(App);

	// Hot Module Replacement
	if (module && module.hot) {
		module.hot.accept('./App', () => {
			render(App);
		});
	}
}
