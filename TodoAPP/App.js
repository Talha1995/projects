//import stuff
import React from 'react';
import {View,Text,TextInput,Button,TouchableOpacity} from 'react-native';


//create stuff             
class App extends React.Component{
  state = {
    text: "",
    todo: []
  }
  addTodo = () =>{
    var newTodo = this.state.text;
    var arr = this.state.todo;
    arr.push(newTodo);
    this.setState({todo: arr, text: ""});

  }
  deleteTodo = (t) =>{
    var arr = this.state.todo;
    var pos = arr.indexOf(t);
    arr.splice(pos,1);
    this.setState({todo: arr});
  }
  renderTodos = () =>{
    return this.state.todo.map(t=>{
      return (
        <TouchableOpacity k
        ey={t}>
          <Text
            style={styles.todo}
            onPress={()=>{this.deleteTodo(t)}}
          >{t}</Text>
        </TouchableOpacity>
      )
    })
  }
  render(){
    return(
      <View style={styles.wholeStyle}>
        <View style={styles.viewStyle}>
          <Text style={styles.header}>CSP</Text>
          <TextInput 
            style={styles.inputStyle}
            onChangeText={(text)=>this.setState({text})}
            value={this.state.text}
          />
          <Button 
            title="Enter Destination"
            color="white"
            onPress={this.addTodo}
          />
          <View style={{marginTop: 100}}/>
          for (arr = 0;arr <= 7; i++)
          {this.renderTodos()}
          {}
        </View>
      </View>
    
  }
}

const styles = {
  wholeStyle: {
    backgroundColor: "black",
    flex:1
  },
  viewStyle: {
    marginTop: 30,
    alignItems: 'center',
    justifyContent: 'center',
    margin: 10,
    
  },
  inputStyle:{
    color: 'white',
    height: 40,
    borderColor: "white",
    width:200,
    borderWidth: 1
  },
  header:{
    fontSize: 30,
    color: 'white',
    fontWeight: 'bold'
  },
  todo: {
    fontSize: 24,
    color: 'white'
  }
}

//export stuff
export default App;
