package com.wechat.mapper;

import com.wechat.domain.WechaetUser;
import com.wechat.domain.WechaetUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WechaetUserMapper {
    int countByExample(WechaetUserExample example);

    int deleteByExample(WechaetUserExample example);

    int deleteByPrimaryKey(Long id);

    int insert(WechaetUser record);

    int insertSelective(WechaetUser record);

    List<WechaetUser> selectByExample(WechaetUserExample example);

    WechaetUser selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") WechaetUser record, @Param("example") WechaetUserExample example);

    int updateByExample(@Param("record") WechaetUser record, @Param("example") WechaetUserExample example);

    int updateByPrimaryKeySelective(WechaetUser record);

    int updateByPrimaryKey(WechaetUser record);
}