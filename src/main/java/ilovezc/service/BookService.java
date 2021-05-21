package ilovezc.service;

import ilovezc.bean.Book;

public interface BookService {


    int deleteByPrimaryKey(String id);

    int insert(Book record);

    int insertSelective(Book record);

    Book selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Book record);

    int updateByPrimaryKey(Book record);

    Book selectByStudentId(String id);

}


