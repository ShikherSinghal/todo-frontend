<template>
  <div>
    Welcome to To Do App!
    <ToDoList :list="list"/>
    <div>
      <input v-model="text" />
      <button @click="handleAdd">Add</button>
    </div>
  </div>
</template>

<script>
import ToDoList from "./components/ToDoList.vue";
import axios from 'axios'

export default {
  name: "App",
  data() {
    return {
      text: "",
      list :[],
    };
  },
  mounted() {
    this.fetchList()
  },
  components: {
    ToDoList,
  },
  methods: {
    fetchList(){
      const url = "http://localhost:8000/api/todo/get_list";
      axios.get(url).then((response) => {
        this.list = response.data;
      });
    },
    handleAdd() {
      const url = "http://localhost:8000/api/todo/add_todo/";
      const payload = {title:this.text}
      axios.post(url,payload).then((response) => {
        console.log(response.data);
      });
      this.fetchList()
    },
  },
};
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
