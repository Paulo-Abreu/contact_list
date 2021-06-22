<template>
    <ul class="menu">
        <li class="menu-item">
        <a class="menu-link" @click="showReports">
            <p class="title is-2">Reports</p>
            <i class="fas fa-chart-line"></i>
        </a>
        </li>
        <hr>
        <li class="menu-item">
        <a class="menu-link" @click="showList">
            <p class="title is-2">Contacts</p>
            <i class="fas fa-table"></i>
        </a>
        </li>
        <hr>
        <li class="menu-item">
        <a class="menu-link" @click="showList">
            <p class="title is-2">Favorites</p>
            <i class="far fa-star"></i>
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
    showFavorites(event) {
      window.location = '/favorites'
    },
  }
}
</script>
<style>
.menu li p{
    color: #fff;
}
</style>