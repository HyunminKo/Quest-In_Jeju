package board;

import java.util.List;

import jdbcUtil.JdbcTemplate;
import rowmapper.PostRowMapper;

public class PostDAO {

    JdbcTemplate jdbc = new JdbcTemplate();
    
<<<<<<< HEAD
    public void insert(){
        Integer like_count = new Integer(10);
        String contents = new String("sdfsg");
        String date = new String("8월4일");
        Long user_id = new Long(1213);
        String src = new String("이미지 주소");
        Integer category = new Integer(2345);
        
=======
    public void insert( PostVO vo ){
        Integer like_count = new Integer( 0 );
        String contents = vo.getContents();
        String date = vo.getDate();
        Long user_id = null;
        String src = vo.getSrc();
        Integer category = vo.getCategory();
>>>>>>> 1450b7418d5c26787715048a53f0fa5339fbe67d
        
        String sql = "insert into post"
        		+ "(like_count, contents, date, user_id, src, category) "
        		+ "values(?,?,?,?,?,?)";
        try {
            jdbc.update(sql,like_count,contents, date, user_id, src, category);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public List<PostVO> findAll() {
        List<PostVO> ls = null;
        String sql = "select * from post";
        try {
            ls = jdbc.query(sql,new PostRowMapper());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ls;
    }
	
	
	
}
