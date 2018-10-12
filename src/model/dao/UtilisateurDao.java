package model.dao;


	import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.bo.Utilisateur;
import utils.HibernateUtil;
	 
	public class UtilisateurDao {
	
	
	public boolean saveDetails(String name, String email,String password, String mark, String comment_site){
	{
	    boolean flag=true;
	      Session session = HibernateUtil.openSession();
	      Utilisateur utilisateur=new Utilisateur();
	        utilisateur.setName(name);
	        utilisateur.setEmail(email);
	        utilisateur.setMark(mark);
	        utilisateur.setPassword(password);
	        utilisateur.setComment_site(comment_site);
	     
	      Transaction transaction=session.beginTransaction();
	      try
	      {
	          session.save(utilisateur);
	          transaction.commit();
	      }catch(Exception e)
	      {
	          transaction.rollback();
	          flag=false;
	           
	      }
	      session.close();
	      return flag;
	      }
	}
	public Utilisateur getUserByUserId(String email, String password) {
        Session session = HibernateUtil.openSession();
        Transaction tx = null;
        Utilisateur user = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Utilisateur as user where user.email= :email and user.password= :password");
            query.setParameter("email", email);
            query.setParameter("password", password);
            user = (Utilisateur)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return user;
    }
	
	public String getNameByUserId(int id) {
        Session session = HibernateUtil.openSession();
        Transaction tx = null;
        Utilisateur user = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Utilisateur as user where user.id= :id");
            query.setParameter("id", id);
            user = (Utilisateur)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return user.getName();
    }
     

}
