<template>
    <div>
        <p>
        <strong>Name:</strong>
            {{this.data.name}}
        </p>

        <p>
        <strong>Email:</strong>
            {{this.data.email}}
        </p>

        <p>
        <strong>User ID:</strong>
            {{this.data.user_id}}
        </p>
        <p>
        <strong>Details:</strong>
            {{this.data.details}}
        </p>
        <button @click="ShowList">Back</button>
    </div>
</template>

<script>
    export default{
        name: 'Show',
        data(){
            return{
                contact: [],
            }
        },
        props:{
            data:{
                type: Array
            }
        },
        mounted(){
            console.log(this.data)
            this.contact = this.data.contact
        },
        methods: {
            ShowList: function (event) {
                window.location = '/contacts'
            }
        },
    }
</script>