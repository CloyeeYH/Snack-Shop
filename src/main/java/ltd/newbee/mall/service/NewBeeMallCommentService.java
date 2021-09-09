package ltd.newbee.mall.service;

import ltd.newbee.mall.entity.GoodsComments;

import java.util.List;

/**
 * ClassName : NewBeeMallCommentService  //类名
 * Description :   //描述
 * Author : WLS  //作者
 * Date: 2020-12-07 22:04  //时间
 */
public interface NewBeeMallCommentService {
    int insert(GoodsComments record);

    List<GoodsComments> getNewBeeMallGoodsCommentsById(Long id);
}
