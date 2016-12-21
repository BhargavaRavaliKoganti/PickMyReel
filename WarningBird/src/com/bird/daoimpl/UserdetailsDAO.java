package com.bird.daoimpl;

// default package

import java.io.File;
import java.io.FileInputStream;
import java.sql.Blob;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Hibernate;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;

import com.bird.dao.hibernatesessionfactory.BaseHibernateDAO;
import com.bird.pojo.Userdetails;

/**
 * A data access object (DAO) providing persistence and search support for
 * Userdetails entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see .Userdetails
 * @author MyEclipse Persistence Tools
 */

public class UserdetailsDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(UserdetailsDAO.class);
	// property constants
	public static final String FULLNAME = "fullname";
	public static final String EMAIL = "email";
	public static final String LOGINNAME = "loginname";
	public static final String PASSWORD = "password";
	public static final String PROFILEIMAGE = "profileimage";
	public static final String BACKGROUNDIMAGE = "backgroundimage";
	public static final String LOCATION = "location";
	public static final String WEBSITE_URL = "websiteUrl";
	public static final String BIODATA = "biodata";
	public static final String PHNO = "phno";
	public static final String STATUS = "status";

	public boolean save(Userdetails transientInstance) {
		log.debug("saving Userdetails instance");
		try {
			Session session = getSession();
			Transaction transaction = session.beginTransaction();
			session.save(transientInstance);
			transaction.commit();
			log.debug("save successful");
			return true;
		} catch (RuntimeException re) {
			System.out.println(re);
			log.error("save failed", re);
			throw re;

		}
	}

	public boolean updateProfile(Userdetails transientInstance) {
		log.debug("saving Userdetails instance");
		try {
			Session session = getSession();
			Transaction transaction = session.beginTransaction();
			Query query = session
					.createQuery("update Userdetails set fullname=? ,email=?,location=?,websiteUrl=?,biodata=?,phno=? where userid=?");

			query.setParameter(0, transientInstance.getFullname());
			query.setParameter(1, transientInstance.getEmail());
			query.setParameter(2, transientInstance.getLocation());
			query.setParameter(3, transientInstance.getWebsiteUrl());
			query.setParameter(4, transientInstance.getBiodata());
			query.setParameter(5, transientInstance.getPhno());
			query.setParameter(6, transientInstance.getUserid());
			int result = query.executeUpdate();
			if (result > 0) {
				transaction.commit();
				try {// Userdetails us=transientInstance;
					// imageClear(transientInstance);
					Transaction transaction1 = session.beginTransaction();
					File profile = transientInstance.getProfileimagefile();
					byte[] personByteArray = new byte[(int) profile.length()];
					Blob bprofile = Hibernate.createBlob(personByteArray);

					FileInputStream fileInputStream = new FileInputStream(
							profile);
					fileInputStream.read(personByteArray);
					fileInputStream.close();
					transientInstance.setProfileimage(bprofile);

					File backimage = transientInstance.getBackgroundimagefile();
					byte[] backimagearray = new byte[(int) backimage.length()];
					Blob backprofile = Hibernate.createBlob(backimagearray);

					FileInputStream fileInputStream1 = new FileInputStream(
							backimage);
					fileInputStream1.read(backimagearray);
					fileInputStream1.close();
					transientInstance.setBackgroundimage(backprofile);

					Userdetails userdetails = (Userdetails) session.get(
							Userdetails.class, new Integer(transientInstance
									.getUserid()));

					userdetails.setProfileimage(transientInstance
							.getProfileimage());
					userdetails.setBackgroundimage(transientInstance
							.getBackgroundimage());

					session.update(userdetails);

					transaction1.commit();
					log.debug("save successful");
				} catch (Exception e) {
					System.out.println(e);
				}
			}

			return true;
		} catch (RuntimeException re) {
			System.out.println(re);
			log.error("save failed", re);
			throw re;

		}
	}

	public boolean imageClear(Userdetails userdetails) {

		log.debug("saving Userdetails instance");
		try {

			Session session = getSession();
			Transaction transaction = session.beginTransaction();

			Userdetails userdetails1 = (Userdetails) session.get(
					Userdetails.class, new Integer(userdetails.getUserid()));
			byte[] byt = new byte[0];
			Blob bprofile = null;
			userdetails1.setProfileimage(bprofile);
			userdetails1.setBackgroundimage(bprofile);

			session.update(userdetails1);

			transaction.commit();
			log.debug("clear successful");

			return true;
		} catch (RuntimeException re) {
			System.out.println(re);
			log.error("save failed", re);
			throw re;

		}

	}

	public List loginCheck(Userdetails userdetails) {
		log.debug("finding Userdetails instance with property: "
				+ userdetails.getLoginname());
		try {
			String queryString = "from Userdetails where loginname=? and password=?";
			System.out.println(queryString);
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, userdetails.getLoginname());
			queryObject.setParameter(1, userdetails.getPassword());
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public Userdetails findById(int id) {
		log.debug("getting Userdetails instance with id: " + id);
		try {
			Userdetails instance = (Userdetails) getSession().get(
					"com.bird.pojo.Userdetails", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public boolean updateStatus(int userid) {

		log.debug("deleting Tweets instance");
		try {

			Userdetails userdetails = findById(userid);
			userdetails.setStatus("blocked");
			Session session = getSession();
			Transaction transaction = session.beginTransaction();
			session.update(userdetails);
			transaction.commit();
			log.debug("update successful");
			return true;
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public List findByExample(Userdetails instance) {
		log.debug("finding Userdetails instance by example");
		try {
			List results = getSession().createCriteria("Userdetails").add(
					Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Userdetails instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Userdetails as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByFullname(Object fullname) {
		return findByProperty(FULLNAME, fullname);
	}

	public List findByEmail(Object email) {
		return findByProperty(EMAIL, email);
	}

	public List findByLoginname(Object loginname) {
		return findByProperty(LOGINNAME, loginname);
	}

	public List findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
	}

	public List findByProfileimage(Object profileimage) {
		return findByProperty(PROFILEIMAGE, profileimage);
	}

	public List findByBackgroundimage(Object backgroundimage) {
		return findByProperty(BACKGROUNDIMAGE, backgroundimage);
	}

	public List findByLocation(Object location) {
		return findByProperty(LOCATION, location);
	}

	public List findByWebsiteUrl(Object websiteUrl) {
		return findByProperty(WEBSITE_URL, websiteUrl);
	}

	public List findByBiodata(Object biodata) {
		return findByProperty(BIODATA, biodata);
	}

	public List findByPhno(Object phno) {
		return findByProperty(PHNO, phno);
	}

	public List findByStatus(Object status) {
		return findByProperty(STATUS, status);
	}

	public List findAll() {
		log.debug("finding all Userdetails instances");
		try {
			String queryString = "from Userdetails";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Userdetails merge(Userdetails detachedInstance) {
		log.debug("merging Userdetails instance");
		try {
			Userdetails result = (Userdetails) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Userdetails instance) {
		log.debug("attaching dirty Userdetails instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Userdetails instance) {
		log.debug("attaching clean Userdetails instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}