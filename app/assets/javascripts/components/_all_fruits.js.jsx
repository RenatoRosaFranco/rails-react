const AllFruits = (props) => {
  
  var hasFruits = (props.fruits.length == 0) ? 
    <div>
     <p> None records found </p>
    </div> 
    : null
    
  var fruits = props.fruits.map((fruit) => {
    return(
      <div key={fruit.id}>
        <Fruit 
          fruit={ fruit } 
          handleDelete={ props.handleDelete }
          handleUpdate={ props.handleUpdate } />
      </div>
    )
  });

  return(
    <div>
      {fruits}

      {hasFruits}
    </div>
  )
}