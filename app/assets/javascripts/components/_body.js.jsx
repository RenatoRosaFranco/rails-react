class Body extends React.Component {
  
  constructor(props) {
    super(props);
    this.state = {
      fruits: []
    };
  }

  componentDidMount(){
    fetch('/api/v1/fruits')
      .then((response) => {
        return response.json()
      })
      .then((data) => {
        this.setState({ fruits: data['fruits'] })
        console.log(data['fruits'])
      });
  }

  render(){
    return(
      <div>
        <AllFruits fruits={this.state.fruits}/>
      </div>
    )
  }
}