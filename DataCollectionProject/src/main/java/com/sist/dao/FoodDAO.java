package com.sist.dao;
import java.util.*;
import java.sql.*;
public class FoodDAO {
   private Connection conn;
   private PreparedStatement ps;
   private String URL="jdbc:oracle:thin:@localhost:1521:XE";
   public static void main(String[] args) {
	  FoodDAO dao=new FoodDAO();
	  dao.empData();
   }
   public FoodDAO()
   {
	   try
	   {
		   Class.forName("oracle.jdbc.driver.OracleDriver");
	   }catch(Exception ex) {}
   }
   public void getConnection()
   {
	   try
	   {
		   conn=DriverManager.getConnection(URL,"hr","happy");
	   }catch(Exception ex) {}
   }
   public void disConnection()
   {
	   try
	   {
		   if(ps!=null) ps.close();
		   if(conn!=null) conn.close();
	   }catch(Exception ex) {}
   }
   public void empData()
   {
	   try
	   {
		   getConnection();
		   String sql="SELECT ename FROM emp";
		   ps=conn.prepareStatement(sql);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   System.out.println(rs.getString(1));
		   }
		   rs.close();
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   disConnection();
	   }
   }
   // 맛집 카테고리 추가 ==> JPA ==> save(vo)
   public void foodCategoryInsert(CategoryVO vo) // 30
   {
	   try
	   {
		   getConnection();
		   String sql="INSERT INTO project_category VALUES(pc_cno_seq.nextval,?,?,?,?)";
		   // SQL문장 전송 
		   ps=conn.prepareStatement(sql);
		   // 실행전에 ?에 값을 채운다 
		   ps.setString(1, vo.getTitle());
		   ps.setString(2, vo.getSubject());
		   ps.setString(3, vo.getPoster());
		   ps.setString(4, vo.getLink());
		   // 실행요청 
		   ps.executeUpdate(); //commit()포함 
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   disConnection();
	   }
   }
   // 카테고리에서 카테고리 번호 , 링크 , 제목 => findByCno() 
   public ArrayList<CategoryVO> foodCategoryInfoData()
   {
	   ArrayList<CategoryVO> list=new ArrayList<CategoryVO>();
	   try
	   {
		   //1. 연결 
		   getConnection();
		   //2. SQL문장 제작 
		   String sql="SELECT cno,title,link FROM project_category ORDER BY cno ASC";
		   //3. SQL문장 전송
		   ps=conn.prepareStatement(sql);
		   //4. SQL문장 실행 요청 => 결과값 저장 
		   ResultSet rs=ps.executeQuery();
		   //5. ArrayList에 담기
		   while(rs.next())
		   {
			   CategoryVO vo=new CategoryVO();
			   vo.setCno(rs.getInt(1));
			   vo.setTitle(rs.getString(2));
			   vo.setLink("https://www.mangoplate.com"+rs.getString(3));
			   list.add(vo);
			   System.out.println();
		   }
		   rs.close();
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   disConnection();
	   }
	   return list;
   }
   /*
    *   CREATE TABLE project_food(
    fno NUMBER,
    cno NUMBER,
    poster VARCHAR2(1000) CONSTRAINT pf_poster_nn NOT NULL,
    name VARCHAR2(100) CONSTRAINT pf_name_nn NOT NULL,
    score NUMBER(2,1) CONSTRAINT pf_score_nn NOT NULL,
    address VARCHAR2(250) CONSTRAINT pf_address_nn NOT NULL,
    tel VARCHAR2(20) CONSTRAINT pf_tel_nn NOT NULL,
    type VARCHAR2(100) CONSTRAINT pf_type_nn NOT NULL,
    price VARCHAR2(20),
    parking VARCHAR2(20),
    time VARCHAR2(20),
    menu VARCHAR2(500),
    jjim_count NUMBER DEFAULT 0,
    like_count NUMBER DEFAULT 0,
    hit NUMBER DEFAULT 0,
    good , soso , bad
    CONSTRAINT pf_fno_pk PRIMARY KEY(fno),
    CONSTRAINT pf_cno_fk FOREIGN KEY(cno)
    REFERENCES project_category(cno)
);
    */
   /*
    *   String[] gus = { "강서구", "양천구", "구로구", "마포구", "영등포구", "금천구",
				    "은평구", "서대문구", "동작구", "관악구", "종로구", "중구", "용산구", "서초구", "강북구",
				    "성북구", "도봉구", "동대문구", "성동구", "강남구", "노원구", "중랑구", "광진구", "송파구",
				    "강동구","홍대","건대" };
	    https://www.mangoplate.com/search/%EB%8C%80%EA%B5%AC
    */
   public void foodDetailInsert(FoodVO vo)
   {
	   try
	   {
		   getConnection();
		   String sql="INSERT INTO project_food(fno,cno,poster,name,score,address,tel,type,price,parking,"
				     +"time,menu,good,soso,bad) VALUES(pf_fno_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		   ps=conn.prepareStatement(sql);
		   // ?에 값을 채운다 
		   ps.setInt(1, vo.getCno());
		   ps.setString(2, vo.getPoster());
		   ps.setString(3, vo.getName());
		   ps.setDouble(4, vo.getScore());
		   ps.setString(5, vo.getAddress());
		   ps.setString(6, vo.getTel());
		   ps.setString(7, vo.getType());
		   ps.setString(8, vo.getPrice());
		   ps.setString(9, vo.getParking());
		   ps.setString(10, vo.getTime());
		   ps.setString(11, vo.getMenu());
		   ps.setInt(12, vo.getGood());
		   ps.setInt(13,vo.getSoso());
		   ps.setInt(14, vo.getBad());
		   
		   ps.executeUpdate();
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   disConnection();
	   }
   }
}







