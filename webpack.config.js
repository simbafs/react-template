module.exports = {
	module: {
		rules: [
			{
				test: /\.(js|jsx)$/,
				exclude: /node_modules/,
				use: {
					loader: "babel-loader"
				}
			}
		]
	},
	devServer: {
		contentBase: require('path').join(__dirname, 'dist'),
		compress: true,
		port: 3000
	}
};
