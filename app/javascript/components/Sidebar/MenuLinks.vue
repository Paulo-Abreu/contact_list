<template>
    <ul class="menu">
        <li class="menu-item">
        <a class="menu-link" @click="showReports">
            <p class="title is-2">Reports</p>
        </a>
        </li>
        <hr>
        <li class="menu-item">
        <a class="menu-link" @click="showList">
            <p class="title is-2">Contacts</p>
        </a>
        </li>
    </ul>
</template>

<script>
export default {
  name: 'MenuLinks',
  methods: {
    showReports(event) {
      window.location = '/reports'
    },
    showList(event) {
      window.location = '/contacts'
    },
  }
}
</script>
<style>
.menu li p{
    color: #fff;
}
</style>