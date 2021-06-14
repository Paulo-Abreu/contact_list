<template>
    <div>
        <div class="card">
            <div class="row">
                <div class="col-md-12">
                    <div class="card-content">
                        <!-- <div class="media"> -->
                            <div class="header-content">
                                <div class="media-left">
                                    <h4 class="card-title mt-0">Reports</h4>
                                    <p class="card-category">Gerenciamento</p>
                                </div>
                            </div>
                        <!-- </div> -->
                        <div class="card-body">

                        </div>
                        <div>
                            <table class="table is-bordered is-striped">
                                <thead>
                                    <tr>
                                    <th>Total Contatos</th>
                                    <th>Total Users</th>
                                    <th>Media Contato x User</th>
                                    <th>Users novos na ultima semana</th>
                                    <th>Contatos Novos na ultima semana</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>{{total_contacts}}</td>
                                        <td>{{total_users}}</td>
                                        <td>{{round}}</td>
                                        <td>{{last_contacts}}</td>
                                        <td>{{last_users}}</td>
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

    name: 'Reports',
    data () {
      return {
          total_contacts: [],
          total_users: [],
          last_contacts: [],
          last_users: [],
          round: []
      }
    },
    
    props:{
        data:{
            type: Array
        }
    },
    
    mounted () {
        console.log(this.data)
        this.total_contacts = this.data[0].total_contacts
        this.total_users = this.data[0].total_users
        this.last_contacts = this.data[0].last_contacts
        this.last_users = this.data[0].last_users
        this.round = this.data[0].round
    },
    methods: {
        showList: function () {
            window.location = '/contacts'
        }
    },
  }
</script>