package edu.chunjae.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface DBConnect {
    final static String NOTICE_SELECT_ALL = "select * from notice order by no desc";
    final static String NOTICE_SELECT_ONE = "select * from notice where no=?";
    final static String NOTICE_INSERT = "insert into notice values (default,?,?,default);";
    final static String NOTICE_UPDATE = "update notice set title=?, content=? where no=?";
    final static String NOTICE_DELETE = "delete from notice where no=?";

    final static String EVENT_SELECT_ALL = "select * from event order by no desc";
    final static String EVENT_SELECT_ONE = "select * from event where no=?";
    final static String EVENT_INSERT = "insert into event values (default,?,?,default, ?);";
    final static String EVENT_UPDATE = "update event set title=?, content=? where no=?";
    final static String EVENT_DELETE = "delete from event where no=?";

    final static String WINNER_SELECT_ALL = "select * from winner order by no desc";
    final static String WINNER_SELECT_ONE = "select * from winner where no=?";
    final static String WINNER_INSERT = "insert into winner values (default,?,?,default);";
    final static String WINNER_UPDATE = "update winner set title=?, content=? where no=?";
    final static String WINNER_DELETE = "delete from winner where no=?";

    final static String CUSTOM_SELECT_ALL = "select * from custom order by regdate desc";
    final static String CUSTOM_SELECT_ONE = "select * from custom where id=?";
    final static String CUSTOM_SELECT_LOG = "select * from custom where id=?";
    final static String CUSTOM_INSERT = "insert into custom values (?,?,?,default,default,?,?,?,default,?)";
    final static String CUSTOM_UPDATE = "update custom set pw=?,tel=?,email=? where id=?";
    final static String CUSTOM_DELETE = "delete from custom where id=?";

    public Connection connect();
    public void close(PreparedStatement pstmt, Connection conn);
    public void close(ResultSet rs, PreparedStatement pstmt, Connection conn);
}
