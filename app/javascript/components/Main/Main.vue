<template>
<div>
  <div class="wrapper">
    <div class="dashboard">
        <div class="main-panel">
          <div class="content">
            <component :is="loadComponent" :data="componentData" />
          </div>
        </div>
    </div>
  </div>
</div>
</template>

<script>
import Home from '../Home/Home';

const componentDicionary = {
  home: Home,
};

export default {
  name: 'Main',

  components: {
    Home
  },

  props: {
    componentName: {
      type: String,
      required: true,
    },
    componentData: {
      type: Array,
    }
  },

  computed: {
    loadComponent() {
      return componentDicionary[this.componentName]
    }
  }
}
</script>

<style>

</style>