<template>
<div>
  <div class="wrapper">
    <div>
        <div class="main-panel">
          <div class="content">
            <header>
              <nav class="navbar" role="navigation" aria-label="main navigation">
                <div id="navbarBasicExample" class="navbar-menu">
                  <div class="navbar-end">
                    <div class="navbar-item">
                      <div class="buttons">
                        <a @click="logout()" class="button is-danger">
                          <strong>Log out</strong>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </nav>
            </header>
            <Sidebar />
            <div class="dashboard">
             <component :is="loadComponent" :data="componentData" />
            </div>
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
import Reports from '../Reports/Reports.vue';
import Sidebar from '../Sidebar/Sidebar.vue';
import Favorites from '../Favorites/Favorites.vue';
const componentDicionary = {
  home: Home,
  list: List,
  contacts_form: ContactsForm,
  show_contact: ShowContact,
  update_contact: UpdateContact,
  login: Login,
  create_user: CreateUser,
  reports: Reports,
  sidebar: Sidebar,
  favorites: Favorites,
};
import axios from 'axios';
export default {
  name: 'Main',

  components: {
    Home, List, ContactsForm, ShowContact, UpdateContact, Login, CreateUser, Reports, Sidebar, Favorites,
  },

  props: {
    componentName: {
      type: String,
      required: true,
    },
    componentData: {
      type: Array
    }
  },

  computed: {
    loadComponent() {
      return componentDicionary[this.componentName]
    }
  },
  methods: {
    logout: function (event) {
      window.location = '/users/sign_in'
    }
  },
}
</script>

<style>
.main-panel {
    position: relative;
    float: right;
    width: calc(100% - 260px);
    transition: .33s,cubic-bezier(.685,.0473,.346,1);
  }
  .content {
    /* padding-right: 15px; */
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
  }
  .main-panel>.content {
    margin-top: 80px;
    padding: 30px 15px;
    min-height: calc(100vh - 123px);
}

.dashboard {
  width: 80%;
  margin: auto;
}
</style>
