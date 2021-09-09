package ltd.newbee.mall.service.impl;

import ltd.newbee.mall.dao.CommentsMapper;
import ltd.newbee.mall.entity.GoodsComments;
import ltd.newbee.mall.service.NewBeeMallCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;

/**
 * ClassName : NewBeeMallCommentServiceImpl  //类名
 * Description :   //描述
 * Author : WLS  //作者
 * Date: 2020-12-07 22:07  //时间
 */

@Service("NewBeeMallCommentService")
public class NewBeeMallCommentServiceImpl implements NewBeeMallCommentService {

    @Autowired
    private CommentsMapper commentsMapper;

    @Override
    public int insert(GoodsComments record) {
        commentsMapper.insert(record);
        return 0;
    }

    @Override
    public List<GoodsComments> getNewBeeMallGoodsCommentsById(Long id) {
        return commentsMapper.findCommentsByGoodsId(id);
    }
}
