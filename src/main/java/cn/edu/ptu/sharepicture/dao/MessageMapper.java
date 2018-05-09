package cn.edu.ptu.sharepicture.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.ptu.sharepicture.entity.Message;
import cn.edu.ptu.sharepicture.entity.SearchForm;

public interface MessageMapper {

	boolean insertMessage(Message message);

	boolean deleteMessage(String messageId);

	boolean updateMessage(Message message);

	List<Message> getMsgsByPId(SearchForm sf);

	int getTotal(@Param(value = "key") String key);

}
