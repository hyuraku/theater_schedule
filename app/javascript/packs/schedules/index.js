import Vue from 'vue/dist/vue.esm';
import axios from 'axios';

// 作品のIDのリスト
// 劇場のIDのリスト
var thea_id_list = []
var work_id_list = []
var target = []
window.onload = function (){
var theaterIndex =new Vue({
  el: '#js-theaterIndex',
  data: {
    scheduleInfo: {},
    scheduleInfoBool: false
  },
  methods: {
    setTheaterInfo(id){
      thea_id_list.push(id)
      axios.get(`api/schedules/show/${id}`)
        .then(res => {
          this.scheduleInfo = res.data;
          this.scheduleInfoBool = true;
        });
    },
    setWorkInfo(id){
      work_id_list.push(id)
      axios.get(`api/schedules/index/${id}`)
      .then(res => {
        this.scheduleInfo = res.data;
        this.scheduleInfoBool = true;
      });
    },
    setDateInfo(id){
      target.push(id)
      axios.get(`api/schedules/get/${id}`)
      .then(res => {
        this.scheduleInfo = res.data;
        this.scheduleInfoBool = true;
      });
    }
  }
});

console.log(target)
}
