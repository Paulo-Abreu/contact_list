<template>
    <div id="list">
        <table>
            <thead>
                <tr>
                <th>Name</th>
                <th>Email</th>
                <th>User ID</th>
                <th>Details</th>
                <th colspan="2"></th>
                </tr>
            </thead>

            <tbody>
                <tr  v-for="contact in contacts" :key="contact.name">
                    <td>{{contact.name}}</td>
                    <td>{{contact.email}}</td>
                    <td>{{contact.user_id}}</td>
                    <td>{{contact.details}}</td>
                    <td><button @click="showContact(contact.id)">Show</button></td>
                    <td><button @click="editContact(contact.id)">Edit</button></td>

                </tr>
                <br>
                <button @click="createContact()">Create new</button>

            </tbody>
        </table>
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
<style scoped>
    tr{
        text-align: center;
    }
</style>