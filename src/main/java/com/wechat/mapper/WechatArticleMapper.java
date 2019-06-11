package com.wechat.mapper;

import com.wechat.domain.WechatArticle;
import com.wechat.domain.WechatArticleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WechatArticleMapper {
    int countByExample(WechatArticleExample example);

    int deleteByExample(WechatArticleExample example);

    int deleteByPrimaryKey(Long id);

    int insert(WechatArticle record);

    int insertSelective(WechatArticle record);

    List<WechatArticle> selectByExampleWithBLOBs(WechatArticleExample example);

    List<WechatArticle> selectByExample(WechatArticleExample example);

    WechatArticle selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") WechatArticle record, @Param("example") WechatArticleExample example);

    int updateByExampleWithBLOBs(@Param("record") WechatArticle record, @Param("example") WechatArticleExample example);

    int updateByExample(@Param("record") WechatArticle record, @Param("example") WechatArticleExample example);

    int updateByPrimaryKeySelective(WechatArticle record);

    int updateByPrimaryKeyWithBLOBs(WechatArticle record);

    int updateByPrimaryKey(WechatArticle record);
}