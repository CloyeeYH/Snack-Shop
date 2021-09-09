package ltd.newbee.mall.dao;

import ltd.newbee.mall.entity.GoodsComments;

import java.util.List;

/**
 * ClassName : CommentsMapper  //类名
 * Description :   //描述
 * Author : WLS  //作者
 * Date: 2020-12-08 08:08  //时间
 */
public interface CommentsMapper {
    int insert(GoodsComments record);

    List<GoodsComments> findCommentsByGoodsId(Long goodsId);
}
