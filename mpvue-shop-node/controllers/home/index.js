const { mysql } = require('../../mysql')

module.exports = async (ctx) => {
    // 轮播图数据 
    const banner = await mysql('nideshop_ad').where({
        ad_position_id: 1
      }).select()

      //tab
      const channel = await mysql('nideshop_channel').select()

      //品牌列表
      const brandList = await mysql('nideshop_brand').where({
        is_new: 1
      }).orderBy('new_sort_order', 'asc').limit(4).select()

    ctx.body = {
        'banner': banner,
        'channel': channel,
        'brandList': brandList
    }
}

