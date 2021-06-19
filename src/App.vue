<template>
  <div>
    Welcome to To Do App!
    <ToDoList/>
    <div>
      <input v-model="text"/> <button @click="handleAdd">Add</button>
    </div>
  </div>
</template>

<script>
import ToDoList from './components/ToDoList.vue'

export default {
  name: 'App',
  data() {
    return {
      text:""
    }
  },
  components: {
    ToDoList
  },
  methods:{
    handleAdd(){
      console.log(this.text)
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: left;
  color: #2c3e50;
  margin-top: 10px;
}
</style>
