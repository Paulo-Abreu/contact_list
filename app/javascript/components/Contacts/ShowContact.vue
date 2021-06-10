<template>
    <div class="card">
  <div class="card-content">
    <div class="media">
      <div class="media-left">
      </div>
      <div class="media-content">
        <p class="title is-4">Name: {{this.data.name}}</p>
        <p class="title is-4">Email: {{this.data.email}}</p>
        <p class="title is-4">Details: {{this.data.details}}</p>
        <br>
        <button class="button is-primary" @click="ShowList">Back</button>
      </div>
    </div>
  </div>
</div>
</template>

<script>
    export default{
        name: 'Show',
        data(){
            return{
                contact: [],
            }
        },
        props:{
            data:{
                type: Array
            }
        },
        mounted(){
            console.log(this.data)
            this.contact = this.data.contact
        },
        methods: {
            ShowList: function (event) {
                window.location = '/contacts'
            }
        },
    }
</script>