<template>
<div>
  <div class="wrapper">
    <div class="dashboard">
        <div class="main-panel">
          <div class="content">
            <component :is="loadComponent" :data="componentData" />

          </div>
        </div>
    </div>
  </div>
</div>
</template>

<script>
import Home from '../Home/Home';
import List from '../Contacts/List';
import ContactsForm from '../Contacts/ContactsForm';
import ShowContact from '../Contacts/ShowContact';
import UpdateContact from '../Contacts/UpdateContact';
import Login from '../Users/Login';
import CreateUser from '../Users/CreateUser';

const componentDicionary = {
  home: Home,
  list: List,
  contacts_form: ContactsForm,
  show_contact: ShowContact,
  update_contact: UpdateContact,
  login: Login,
  create_user: CreateUser,
};

export default {
  name: 'Main',

  components: {
    Home, List, ContactsForm, ShowContact, UpdateContact, Login, CreateUser
  },

  props: {
    componentName: {
      type: String,
      required: true,
    },
    componentData: {
      type: Array,
    }
  },

  computed: {
    loadComponent() {
      return componentDicionary[this.componentName]
    }
  }
}
</script>

<style>

</style>