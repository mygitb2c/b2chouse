package cn.edu.ptu.sharepicture.dao;

import cn.edu.ptu.sharepicture.entity.Message;

public interface MessageMapper {

	boolean insertMessage(Message message);

	boolean deleteMessage(String messageId);

	boolean updateMessage(Message message);

}
