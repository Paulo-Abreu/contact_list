<template>
   <div id="app">
    <label>Nome</label><br>
    <input type="text" v-model="newObject.name">

    <br><br>
    <label>E-mail</label><br>
    <input type="text" v-model="newObject.email">

    <br><br>
    <label>User ID</label><br>
    <input type="number" v-model="newObject.user_id">
    <hr>

    Nome: {{ newObject.nome }} <br>
    E-mail: {{ newObject.email }} <br>
    User Id: {{newObject.user_id}} <br>

    <button @click="submitForm()">Criar Contato!</button>

    </div>

</template>

<script>
import axios from 'axios';
    export default{
        name: 'ContactsForm',

        data(){
            return{
                newObject: {
                    name: '',
                    email: '',
                    user_id: ''
                }
            }
        },
    
        props: {
            data: {
                type: Array
            } 
        },
        methods: {
            submitForm: function (event) {
                axios.post('/api/v1/contacts', {contact: this.newObject})
                .then(response => { console.log(response) })
            } 
        },

    }
</script>
