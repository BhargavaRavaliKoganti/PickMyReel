package com.bird.daoimpl;

// default package

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;

import com.bird.dao.hibernatesessionfactory.BaseHibernateDAO;
import com.bird.pojo.Tweets;
import com.bird.pojo.Userdetails;

/**
 * A data access object (DAO) providing persistence and search support for
 * Tweets entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see .Tweets
 * @author MyEclipse Persistence Tools
 */

public class TweetsDAO extends BaseHibernateDAO {
	private static final Log log = LogFactory.getLog(TweetsDAO.class);
	// property constants
	public static final String TWEETERDESC = "tweeterdesc";

	public boolean save(Tweets transientInstance) {
		log.debug("saving Tweets instance");
		try {
			Session session = getSession();
			Transaction transaction = session.beginTransaction();
			System.out.println(transientInstance.getUserdetails().getUserid());
			transientInstance.setUserdetails(new Userdetails(transientInstance
					.getUserdetails().getUserid()));
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

	public boolean delete(int tweetid) {

		log.debug("deleting Tweets instance");
		try {
			getSession().delete(findById(tweetid));
			log.debug("delete successful");
			return true;
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Tweets findById(int id) {
		log.debug("getting Tweets instance with id: " + id);
		try {
			Tweets instance = (Tweets) getSession().get("com.bird.pojo.Tweets",
					id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Tweets instance) {
		log.debug("finding Tweets instance by example");
		try {
			List results = getSession().createCriteria("Tweets").add(
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
		log.debug("finding Tweets instance with property: " + propertyName
				+ ", value: " + value);
		System.out.println(propertyName);
		System.out.println(value);
		try {
			String queryString = "from Tweets as model where model."
					+ propertyName + "= ?";
			System.out.println(queryString);
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			System.out.println(queryObject.list().size());
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByTweeterdesc(Object tweeterdesc) {
		return findByProperty(TWEETERDESC, tweeterdesc);
	}

	public List findAll() {
		log.debug("finding all Tweets instances");
		try {
			String queryString = "from Tweets";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public List findAllMyTweets(int userid) {
		log.debug("finding all Tweets instances");
		try {
			String queryString = "from Tweets where userdetails=?  order by tweetid  desc";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, userid);
			return queryObject.list();
		} catch (RuntimeException re) {
			System.out.println(re);
			log.error("find all failed", re);
			throw re;
		}
	}

	public Tweets merge(Tweets detachedInstance) {
		log.debug("merging Tweets instance");
		try {
			Tweets result = (Tweets) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Tweets instance) {
		log.debug("attaching dirty Tweets instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Tweets instance) {
		log.debug("attaching clean Tweets instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}