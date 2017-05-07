package net.linghou.erp.sellorder.dao;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
@Repository("daoSupport")
public class DaoSupport implements Dao {
	/*
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	/**
	 * 淇濆瓨瀵硅薄
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	
	public Object save(String str, Object obj) throws Exception {	
		return sqlSessionTemplate.insert(str, obj);
	}
	/**
	 * 鎵归噺鏇存柊
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception

	public Object batchSave(String str,List objs)throws Exception{
		return sqlSessionTemplate.insert(str, objs);
	}
	/**
	 * 淇敼瀵硅薄
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception

	public Object update(String str, Object obj) throws Exception {
		return sqlSessionTemplate.update(str, obj);
	}
	/**
	 * 鎵归噺鏇存柊
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	
	public void batchupdate(String str,List objs)throws Exception{
		SqlSessionFactory sqlSessionFactory=sqlSessionTemplate.getSqlSessionFactory();
		//鎵归噺鎵ц鍣�
		SqlSession sqlSession=sqlSessionFactory.openSession(ExecutorType.BATCH,false);
		try {
			if(objs!=null){
				for (int i = 0; i < objs.size(); i++) {
					sqlSession.update(str, objs.get(i));
				}
				sqlSession.flushStatements();
				sqlSession.commit();
				sqlSession.clearCache();
			}
		} finally {
			sqlSession.close();
		}
	}

	/**
	 * 鍒犻櫎瀵硅薄
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	
	public Object delete(String str, Object obj) throws Exception {
		return sqlSessionTemplate.delete(str, obj);
	}
	
	/**
	 * 鎵归噺鏇存柊
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	
	public Object batchDelete(String str,List objs) throws Exception{
		return sqlSessionTemplate.delete(str, objs);
	}	
	
	/**
	 * 鏌ユ壘瀵硅薄
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception

	public Object findForObject(String str, Object obj) throws Exception {
		return sqlSessionTemplate.selectOne(str, obj);
	}
	
	/**
	 * 鏌ユ壘瀵硅薄
	 * @param str
	 * @param obj
	 * @return
	 * @throws Exception
	
	public Object findForList(String str, Object obj) throws Exception {
		return sqlSessionTemplate.selectList(str, obj);
	}
	
	/**
	 * 鏌ユ壘瀵硅薄灏佽鎴怣ap
	 * @param s
	 * @param obj
	 * @return
	 * @throws Exception
	
	public Object findForMap(String sql, Object obj, String key, String value) throws Exception {
		return sqlSessionTemplate.selectMap(sql, obj, value);
	}
*/
}
