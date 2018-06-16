import Vue from 'vue/dist/vue.esm';
import axios from 'axios';

// 作品のIDのリスト
// 劇場のIDのリスト
// var id_list = []

var theaterIndex =new Vue({
  el: '.js-theaterIndex',
  data: {
    scheduleInfo: {},
    scheduleInfoBool: false
  },
  methods: {
    setTheaterInfo(id){
      // id_list.push(id)
      axios.get(`api/schedules/show/${id}`)
        .then(res => {
          this.scheduleInfo = res.data;
          this.scheduleInfoBool = true;
        });
    }
  }
});
