import 'bulma/css/bulma.css';
import Vue from 'vue';
import VueTheMask from 'vue-the-mask';
import Main from '../components/Main/Main';
import VueApexCharts from 'vue-apexcharts';
const parseData = (prop) => {
    try {
      return JSON.parse(prop);
    } catch (e) {
      return prop;
    }
  };
Vue.use(VueTheMask)
const init = () => {
  const element = document.getElementById('contacts');
  if (element !== null) {
    const rawData = Object.assign({}, element.dataset);
    const propsData = Object.keys(rawData).reduce((acc, prop) => {
      acc[prop] = parseData(rawData[prop]);
      return acc;
    }, {});
    console.log(propsData)
    // eslint-disable-next-line no-new
    new Vue({
      el: element,
      render(h) {
        return h(Main, {
          props: propsData,
        });
      },
    });
  }
};

['DOMContentLoaded', 'page:load', 'page:restore'].forEach((event) => {
  document.addEventListener(event, init);
});