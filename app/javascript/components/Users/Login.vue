<template>
    <div id="login">
        <form name="login">  
            <table id="login_form">    
                <tr>       
                    <th colspan="2">Formulario de login</th>
                </tr>    

                <tr>
                    <td><label>Email</label></td>
                    <td><input name="email" type="text" v-model="newObject.email"></td>
                </tr>    

                <tr>       
                    <td><label>Senha</label> </td>
                    <td><input name="password" type="password" v-model="newObject.password"></td>    
                </tr> 

                <tr> 
                    <td><button id="btn" @click="Login">Login</button></td>      
                </tr>  
            </table>
        </form>
    </div>
</template>
<script>
    import axios from 'axios';
    export default{
        name: 'Login',

        data(){
            return{
                newObject:{
                    email:'',
                    password:''
                }
            }
        },

        props: {
            data:{
                type: Array
            }
        },
        methods: {
            Login: function (event) {
            axios.post('/api/v1/login', { user: { email: 'email', password: 'password'}})
                .then(response => {window.location = '/contacts', console.log(response) })
                .catch((err) => { console.error("ops! ocorreu um erro")})
            }   
        },
    }
</script>

<style>
