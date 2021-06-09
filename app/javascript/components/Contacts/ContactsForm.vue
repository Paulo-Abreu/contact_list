<template>
    <div>
       <form name="login">  
            <table id="create_form">    
                <tr>       
                    <th colspan="2">Formulario de Criar Contato</th>
                </tr>

                <tr>
                    <td><label>Name</label></td>
                    <td><input name="name" type="text" v-model="newObject.name"></td>
                </tr>    
   

                <tr>
                    <td><label>Email</label></td>
                    <td><input name="email" type="text" v-model="newObject.email"></td>
                </tr>    

                <tr>       
                    <td><label>User_id</label> </td>
                    <td><input name="number" type="number" v-model="newObject.user_id"></td>    
                </tr> 

                <tr>       
                    <td><label>Details</label> </td>
                    <td><input name="text" type="text" v-model="newObject.details"></td>    
                </tr> 

                <button id="btn" @click="submitForm()">Criar Contato!</button><br><br>
                <button id="btn" @click="ShowList">Back</button>
            </table><br>
        </form>
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
                    user_id: '',
                    details: ''
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
                .then(response => {window.location = '/contacts', console.log(response) })
            },
            ShowList: function (event) {
                window.location = '/contacts'
            } 
        },
    }
</script>

<style>
    #create_form {	
        background:#4f4f4f;	
        font:12px arial, verdana, helvetica, sans-serif;	
        border-top:8px solid #cfcfcf;
        border-left:8px solid #cfcfcf;	
        border-right:8px solid #696969;
        border-bottom:8px solid #696969;
        border-collapse:collapse;
        color:#ff9900;	
        width: 400px;
        height: 10px;
        align-items: center;
        margin: auto;
    }
    #create_form th {
        background:#000000;
        padding:3px;
        font: bold 15px arial, verdana, helvetica, sans-serif;	
        border-bottom:1px solid #ff9900;	
    }
    #create_form td {	
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
