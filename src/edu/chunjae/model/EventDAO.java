package edu.chunjae.model;

import edu.chunjae.dto.Event;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EventDAO {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public List<Event> getEventList(){
        List<Event> eventList = new ArrayList<>();
        DBConnect con = new PostgreCon();
        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.EVENT_SELECT_ALL);
            rs = pstmt.executeQuery();
            while(rs.next()){
                Event event = new Event();
                event.setImg(rs.getString("img"));
                event.setTitle(rs.getString("title"));
                event.setContent(rs.getString("content"));
                event.setResdate(rs.getString("resdate"));
                eventList.add(event);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return eventList;
    }

    public Event getEvent(int no){
        Event event = new Event();
        DBConnect con = new PostgreCon();
        conn = con.connect();
        if(conn!=null){
            System.out.println("PostgreSQL 연결 성공");
        }

        try {
            pstmt = conn.prepareStatement(DBConnect.EVENT_SELECT_ONE);
            pstmt.setInt(1, no);
            rs = pstmt.executeQuery();

            if(rs.next()){
                event.setImg(rs.getString("img"));
                event.setNo(rs.getInt("no"));
                event.setTitle(rs.getString("title"));
                event.setContent(rs.getString("content"));
                event.setResdate(rs.getString("resdate"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return event;
    }

    public int addEvent(Event event){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.EVENT_INSERT);
            pstmt.setString(1, event.getTitle());
            pstmt.setString(2, event.getContent());
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

    public int updateEvent(Event event){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        if(conn!=null){
            System.out.println("PostgreSQL 연결 성공");
        }

        String sql = "update event set title=?, content=? where no=?";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "수정 DAO테스트1");
            pstmt.setString(2, "수정 DAO테스트내용입니다.1");
            pstmt.setInt(3, 3);
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

    public int deleteEvent(int no){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        if(conn!=null){
            System.out.println("PostgreSQL 연결 성공");
        }

        String sql = "delete from event where no=?";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, 5);
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }
}
