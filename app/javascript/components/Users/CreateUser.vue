<template>
    <div>
       <form name="login">  
            <table  class="card" id="create_form">    
                <tr class="card-content">       
                    <th class="card-title" id="title" colspan="2">Formulario de Criar Contato</th>
                </tr>

                <tr class="card-content">
                    <td><label class="label">Name</label></td>
                    <td><input class="input is-primary" name="name" type="text" placeholder="Name" v-model="newObject.name"></td>
                </tr>    
   

                <tr class="card-content">
                    <td><label class="label">Email</label></td>
                    <td><input class="input is-primary" name="email" type="email" placeholder="Email" v-model="newObject.email"></td>
                </tr>    

                <tr class="card-content">       
                    <td><label class="label">Senha</label> </td>
                    <td><input class="input is-primary" name="text" type="password" placeholder="password" v-model="newObject.password"></td>    
                </tr> 
                <br>
                <br>
                <button  class="button is-primary" id="button" @click="Create">Criar USer!</button><br><br>
            </table><br>
        </form>
    </div>
</template>

<script>
import axios from 'axios';
export default{
    name: 'CreateUser',

    data(){
        return{
            newObject:{
                email:'',
                password:'',
                name:''
            }
        }
    },

    props:{
        data:{
            type: Array
        }
    },

    methods: {
        Create: function (event) {
         axios.post('/api/v1/users', {user: this.newObject})
                .then(response => { window.location = '/login', console.log(response) })
        }   
    },
}
</script>

<style>
.card{
    width: 800px;
    margin: 30px;
}
</style>