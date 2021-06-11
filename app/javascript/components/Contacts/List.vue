<template>
    <div>
        <div class="card">
            <div class="row">
                <div class="col-md-12">
                    <div class="card-content">
                        <!-- <div class="media"> -->
                            <div class="header-content">
                                <div class="media-left">
                                    <h4 class="card-title mt-0">Contatos</h4>
                                    <p class="card-category">Gerenciamento dos Clientes</p>
                                </div>
                                <div>
                                    <button class="button is-success" @click="newClient()">Novo Cadastro</button>
                                </div>
                            </div>
                        <!-- </div> -->
                        <div class="card-body">

                        </div>
                        <div>
                            <table class="table is-bordered is-striped">
                                <thead>
                                    <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>User ID</th>
                                    <th>Details</th>
                                    <th>Phone</th>
                                    <th colspan="2"></th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr v-for="contact in contacts" :key="contact.name">
                                        <td>{{contact.name}}</td>
                                        <td>{{contact.email}}</td>
                                        <td>{{contact.user_id}}</td>
                                        <td>{{contact.details}}</td>
                                        <td>{{contact.phone}}</td>
                                        <td><button class="button is-light" @click="showContact(contact.id)">Show</button></td>
                                        <td><button class="button is-light" @click="editContact(contact.id)">Edit</button></td>

                                    </tr>
                                    <br>
                                    <button class="button is-light" @click="createContact()">Create new</button>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'List',

        data(){
            return{
                contacts: [],
            }
        },
        props: {
            data: {
                type: Array
            }
        },

        mounted() {
            console.log("aqui",this.data)
            this.contacts = this.data
        },
        methods: {
            showContact: function (id) {
                window.location = '/contacts/' + id
            },
            editContact: function (id) {
                window.location = '/contacts/' + id + '/edit'
            },
            createContact: function (event) {
                window.location = '/contacts/new'
            }
        },
    }

</script>
<style>

</style>
