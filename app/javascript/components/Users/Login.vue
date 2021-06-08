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
#login_form {	
    background:#4f4f4f;	
    font:12px arial, verdana, helvetica, sans-serif;	
    border-top:8px solid #cfcfcf;
    border-left:8px solid #cfcfcf;	
    border-right:8px solid #696969;
    border-bottom:8px solid #696969;
    border-collapse:collapse;
    color:#ff9900;	
}
#login_form th {
    background:#000000;
    padding:3px;
    font: bold 15px arial, verdana, helvetica, sans-serif;	
    border-bottom:1px solid #ff9900;	
}
#login_form td {	
    padding:3px;	
}
#login_form input {	
    background:#b5b5b5;	
    border:1px dashed #ff9900;	
}

#btn {	
    background:#000000;	
    color:#ffffff;
    border:2px solid #ffffff;
}	
</style>