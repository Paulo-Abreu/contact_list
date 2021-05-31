<template>
    <div id="list">
        <ul>
            <li v-for="contact in contacts" :key="contact.name">
                {{ contact.name }}
                <ol>
                    {{contact.email}}
                    {{contact.phone}}
                </ol>
            </li>
        </ul>
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
        }
    }

</script>
