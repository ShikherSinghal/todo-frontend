<template>
  <div>
    <ul>
      <li :key="toDo" v-for="toDo in list">
        {{toDo}}
      </li>
    </ul>
  </div>
</template>
<script>
export default {
  props:['list'],
  data() {
    return {
      toDoList:[1,2,3,4]
    }
  },
}
</script>
