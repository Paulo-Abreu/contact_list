<template>
     <div>
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
                <td><label class="label">Details</label> </td>
                <td><input class="input is-primary" name="text" type="text" placeholder="Details" v-model="newObject.details"></td>    
            </tr> 

            <tr class="card-content">       
                <td><label class="label">Phone</label> </td>
                <td><input class="input is-primary" v-mask="['(##) #####-####']" placeholder="(##) #####-####" v-model="newObject.phone"></td>    
            </tr> 
            <br>
            <br>
            <button  class="button is-primary" id="button" @click="submitForm(newObject.id)">Editar Contato!</button><br><br>
            <button  class="button is-primary" id="button" @click="showList">Back</button>
        </table><br>
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
                    details: '',
                    phone:''
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
            this.newObject.phone = this.data[0].phone



        },
        methods: {
            showList: function (event) {
                window.location = '/contacts'
            },
            submitForm: function (id) {
                axios.patch('/api/v1/contacts/' + id, {contact: this.newObject})
                .then(response => {window.location = '/contacts', console.log(response) })
            }
        },
    }
</script>

<style>
   #button{
    margin: 5px;
}
</style>
