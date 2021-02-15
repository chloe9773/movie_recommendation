package com.jeonghwapark.portfolio.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MemberVO {
	private int mid;
	private String mEmail;
	private String mUserName;
	private String mPassword;
	private String mName;
	private String mBirthYear;
	private String mBirthMonth;
	private String mBirthDay;
	private Date mBirthdate;
	private int mAgeGroup;
	private int mGender;
	private String mGenderTitle;
	private String mPostcode;
	private String mSido;
	private String mAddress;
	private String mExtraAddress;
	private String mFavGenre;
	private int mLevel;
	private Date mRegdate;
	private String mPosition;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmUserName() {
		return mUserName;
	}
	public void setmUserName(String mUserName) {
		this.mUserName = mUserName;
	}
	public String getmPassword() {
		return mPassword;
	}
	public void setmPassword(String mPassword) {
		this.mPassword = mPassword;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmBirthYear() {
		return mBirthYear;
	}
	public void setmBirthYear(String mBirthYear) {
		this.mBirthYear = mBirthYear;
	}
	public String getmBirthMonth() {
		return mBirthMonth;
	}
	public void setmBirthMonth(String mBirthMonth) {
		this.mBirthMonth = mBirthMonth;
	}
	public String getmBirthDay() {
		return mBirthDay;
	}
	public void setmBirthDay(String mBirthDay) {
		this.mBirthDay = mBirthDay;
	}
	public Date getmBirthdate() {
		return mBirthdate;
	}
	public void setmBirthdate(Date mBirthdate) {
		this.mBirthdate = mBirthdate;
	}
	public int getmAgeGroup() {
		return mAgeGroup;
	}
	public void setmAgeGroup(int mAgeGroup) {
		this.mAgeGroup = mAgeGroup;
	}
	public int getmGender() {
		return mGender;
	}
	public void setmGender(int mGender) {
		this.mGender = mGender;
	}
	public String getmPostcode() {
		return mPostcode;
	}
	public void setmPostcode(String mPostcode) {
		this.mPostcode = mPostcode;
	}
	public String getmSido() {
		return mSido;
	}
	public void setmSido(String mSido) {
		this.mSido = mSido;
	}
	public String getmAddress() {
		return mAddress;
	}
	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}
	public String getmExtraAddress() {
		return mExtraAddress;
	}
	public void setmExtraAddress(String mExtraAddress) {
		this.mExtraAddress = mExtraAddress;
	}
	public String getmFavGenre() {
		return mFavGenre;
	}
	public void setmFavGenre(String mFavGenre) {
		this.mFavGenre = mFavGenre;
	}
	public int getmLevel() {
		return mLevel;
	}
	public void setmLevel(int mLevel) {
		this.mLevel = mLevel;
	}
	public Date getmRegdate() {
		return mRegdate;
	}
	public void setmRegdate(Date mRegdate) {
		this.mRegdate = mRegdate;
	}
	public String getmPosition() {
		return mPosition;
	}
	public void setmPosition(String mPosition) {
		this.mPosition = mPosition;
	}
	public String getmGenderTitle() {
		return mGenderTitle;
	}
	public void setmGenderTitle(String mGenderTitle) {
		this.mGenderTitle = mGenderTitle;
	}
}
