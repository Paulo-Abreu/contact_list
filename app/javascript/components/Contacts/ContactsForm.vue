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
                <td><input class="input is-primary" name="details" type="text" placeholder="Details" v-model="newObject.details"></td>
            </tr>

            <tr class="card-content">
                <td><label class="label">Phone</label> </td>
                <td><input class="input is-primary" v-mask="['(##) #####-####']" placeholder="(##) #####-####" v-model="newObject.phone"></td>
            </tr>
            <br>
            <br>
            <button  class="button is-primary" id="button" @click="submitForm()">Criar Contato!</button><br><br>
            <button  class="button is-primary" id="button" @click="showList">Back</button>
        </table><br>
    </div>

</template>

<script>
import axios from 'axios';
import {TheMask} from 'vue-the-mask';
    export default{
        name: 'ContactsForm',

        data(){
            return{
                newObject: {
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
        methods: {
            submitForm: function (event) {
                axios.post('/api/v1/contacts', {contact: this.newObject})
                .then(response => {window.location = '/contacts', console.log(response) })
            },
            showList: function () {
                window.location = '/contacts'
            }
        },
    }
</script>

<style>
/* .card{
    width: 800px;
    margin: 30px;
} */
.content table{
    width: 800px;
}
#title{
    background: rgb(17, 236, 200);
    color: white;
}
</style>
