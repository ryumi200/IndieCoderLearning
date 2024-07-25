let dom = document.querySelector('#root')
let element = React.createElement('p', {}, 'Hello, React Application!')

const root = ReactDOM.createRoot(dom)
root.render(element)