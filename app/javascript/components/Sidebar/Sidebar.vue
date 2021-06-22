<template>
    <div class="sidebar">
        <div class="sidebarWrapper">
            <MenuLinks/>
        </div>
    </div>
</template>

<script>
import MenuLinks from './MenuLinks.vue';
export default {
  name: 'Sidebar',
  components: { MenuLinks },
}
</script>
<style>
.sidebar {
    color: #fff;
    position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    z-index: 1;
    width: 260px;
    background: #00d1b2;
    box-shadow: 0 16px 38px -12px rgba(0,0,0,.56), 0 4px 25px 0 rgba(0,0,0,.12), 0 8px 10px -5px rgba(0,0,0,.2);

  }
  .sidebar .menu li a
  {
    margin: 10px 15px;
    color: #fff;
    font-size: 16px;
    padding: 10px 15px;
    cursor: pointer;
  }

  .sidebar .menu p 
  {
    font-size: 16px;    
  }
    .menu-item {
    display: flex;
    }
</style>