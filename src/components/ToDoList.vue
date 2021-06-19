<template>
  <div>
    <ul>
      <li :key="toDo" v-for="toDo in toDoList">
        {{toDo}}
      </li>
    </ul>
  </div>
</template>
<script>
export default {
  data() {
    return {
      toDoList:[1,2,3,4]
    }
  },
}
</script>
