<template>
    <div>
        <div class="card">
            <div class="row">
                <div class="col-md-12">
                    <div class="card-content">
                        <!-- <div class="media"> -->
                            <div class="header-content">
                                <div class="media-left">
                                    <h4 class="card-title mt-0">Contatos Favoritos</h4>
                                </div>
                                <div>
                                    <input type="search" v-model="mySearch" class="input is-primary" placeholder="Search by name" />     
                                    <br>     
                                    <br>                     
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
                                    <tr v-for="favorite in favorites" :key="favorite.name">
                                        <td>{{favorite.name}}</td>
                                        <td>{{favorite.email}}</td>
                                        <td>{{favorite.user_id}}</td>
                                        <td>{{favorite.details}}</td>
                                        <td>{{favorite.phone}}</td>
                                        <td><button class="button is-light" @click="showContact(favorite.favorite_id)">Show</button></td>
                                        <td><button class="button is-light" @click="editContact(favorite.favorite_id)">Edit</button></td>
                                    </tr>
                                    <br>
                                </tbody>
                                <button class="button is-primary" @click="showList">Back</button>
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

    name: 'Favorites',
    data(){
        return{
            favorites: [],
            mySearch: '',
            newObject:{
                favorite_id:'',
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

    mounted() {
        console.log("aqui",this.data)
        this.newObject.favorite_id = this.data[0].id
        this.newObject.name = this.data[0].name
        this.newObject.email = this.data[0].email
        this.newObject.user_id = this.data[0].user_id
        this.newObject.details = this.data[0].details
        this.newObject.phone = this.data[0].phone
        this.favorites = this.data

    },
    methods: {
        showContact: function (id) {
            window.location = '/contacts/' + id
        },
        editContact: function (id) {
            window.location = '/contacts/' + id + '/edit'
        },
        getContacts(name) {
            axios.get('/api/v1/contacts?filter=' + name + '&fields=id,name,phone,email,details,user_id')
            .then(response => {
            this.contacts = response.data
            })
        },
        showList(event){
            window.location = '/contacts'
        }
    },
    watch:{
        mySearch: function(val, oldVal) {
            if(val.length > 2) {
                this.getContacts(val)
            }
        },
    }
}
</script>