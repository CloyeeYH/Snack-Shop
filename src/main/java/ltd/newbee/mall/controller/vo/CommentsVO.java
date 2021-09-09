package ltd.newbee.mall.controller.vo;

import java.io.Serializable;
import java.util.List;

/**
 * ClassName : CommentsVO  //类名
 * Description :商品评论   //描述
 * Author : WLS  //作者
 * Date: 2020-12-07 21:05  //时间
 */

public class CommentsVO implements Serializable {
    private Long goodsId;

    private String comments;

    private Long userId;

    private String nickName;

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

}
