<template>
  <div class="mappage">
      <div class="section">
          <input type="text" placeholder="搜索" focus="true" v-model="keywords" @input="bindInput">
      </div>
      <scroll-view :scroll-y="true" class="addcont" style="height: 500rpx;">
          <div class="result" @touchstart="bindSearch(item.name)" v-for="(item, index) in tips" :key="index">
            {{item.name}}
          </div>
      </scroll-view>

      <div class="map_container">
          <div class="title">显示当前位置：</div>
          <map class="map" id="map" scale="16" :longitude="longitude" :latitdue="latitdue" :markers="markers"></map>
      </div>
  </div>
</template>

<script>
import amapFile from '../../utils/amap-wx'
import {mapMutations, mapActions} from 'vuex'
export default {
    data() {
        return {
            tips: [],
            longitude: 0,
            latitdue: 0,
            markers: [],
            keywords: ''
        }
    },
    mounted() {
        this.getMapaddress()
    },
    methods: {
        ...mapMutations(['update']),
        getMapaddress() {
            let _this = this
            var myAmapFun = new amapFile.AMapWX({
                key: 'df4e29d6019e9eeb879b88ae96012fe8'
            })
            myAmapFun.getRegeo({
                iconPath: "/static/images/marker.png",
                iconWidth: 22,
                iconHeight: 32,
                success: function (data) {
                    console.log(data);
                    let marker = [
                    {
                        id: data[0].id,
                        latitdue: data[0].latitdue,
                        longitude: data[0].longitude,
                        width: data[0].width,
                        height: data[0].height
                    }
                    ]
                    _this.markers = marker,
                    _this.longitude = data[0].longitude,
                    _this.latitdue = data[0].latitdue
                },
                fail(info) {
                    console.log(info);
                    
                }
            })
        },
        bindInput(e) {
            // console.log(e);
            let _this = this
            let keywords = _this.keywords
            var myAmapFun = new amapFile.AMapWX({
                key: 'df4e29d6019e9eeb879b88ae96012fe8'
            })
            myAmapFun.getInputtips({
                keywords: keywords,
                location: '',
                success: function(data) {
                    console.log(data);
                    if(data && data.tips) {
                        _this.tips = data.tips
                    }
                }
            })
        },
        bindSearch(cityName) {
            this.update({cityName: cityName})
            wx.navigateBack({
                delta: 1 //返回1个页面
            });
        }
    }
}
</script>

<style lang="less" scoped>
@import "./style.less";
</style>