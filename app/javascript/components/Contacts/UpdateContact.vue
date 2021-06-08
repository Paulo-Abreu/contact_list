<template>
     <div>
       <form name="login">  
            <table id="update_form">    
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

                <button id="btn" @click="submitForm(newObject.id)">Edit Contato!</button><br><br>
                <button id="btn" @click="ShowList">Back</button>
            </table><br>
        </form>
    </div>
</template>
<script>
import axios from 'axios';
    export default{
        name: 'UpdateContact',

        data(){
            return{
                newObject: {
                    id:'',
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
        mounted(){
            console.log('aqui',this.data)
            this.newObject.id = this.data[0].id
            this.newObject.name = this.data[0].name
            this.newObject.email = this.data[0].email
            this.newObject.user_id = this.data[0].user_id
            this.newObject.details = this.data[0].details


        },
        methods: {
            submitForm: function (id) {
                axios.patch('/api/v1/contacts/' + id, {contact: this.newObject})
                .then(response => {window.location = '/contacts', console.log(response) })
            },
            ShowList: function (event) {
                window.location = '/contacts'
            } 
        },
    }
</script>

<style>
    #update_form {	
        background:#4f4f4f;	
        font:12px arial, verdana, helvetica, sans-serif;	
        border-top:8px solid #cfcfcf;
        border-left:8px solid #cfcfcf;	
        border-right:8px solid #696969;
        border-bottom:8px solid #696969;
        border-collapse:collapse;
        color:#ff9900;	
    }
    #update_form th {
        background:#000000;
        padding:3px;
        font: bold 15px arial, verdana, helvetica, sans-serif;	
        border-bottom:1px solid #ff9900;	
    }
    #update_form td {	
        padding:3px;	
    }
    #update_form input {	
        background:#b5b5b5;	
        border:1px dashed #ff9900;	
    }

    #btn {	
        background:#000000;	
        color:#ffffff;
        border:2px solid #ffffff;
    }	
</style>
