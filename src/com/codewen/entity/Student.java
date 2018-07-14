package com.codewen.entity;

/**
 * student bean
 * @author WEN
 *
 */
public class Student {

	private Integer id;
	private String tname;
	private String nname;
	private Byte sex;
	private String birthday;
	private String major;
	private String tclass;
	private String[] tclasss;
	private String interesting;
	private String[] interestings;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getNname() {
		return nname;
	}

	public void setNname(String nname) {
		this.nname = nname;
	}

	public Byte getSex() {
		return sex;
	}

	public void setSex(Byte sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getTclass() {
		if (tclasss != null) {
			for (int i = 0; i < tclasss.length; i++) {
				tclass += tclasss[i];
			}
		}
		return tclass;
	}

	public void setTclass(String tclass) {
		this.tclass = tclass;
	}

	public String[] getTclasss() {
		return tclasss;
	}

	public void setTclasss(String[] tclasss) {
		this.tclasss = tclasss;
	}

	public String getInteresting() {
		if (interestings != null) {
			for (int i = 0; i < interestings.length; i++) {
				interesting += interestings[i];
			}
		}
		return interesting;
	}

	public void setInteresting(String interesting) {
		this.interesting = interesting;
	}

	public String[] getInterestings() {
		return interestings;
	}

	public void setInterestings(String[] interestings) {
		this.interestings = interestings;
	}

}
