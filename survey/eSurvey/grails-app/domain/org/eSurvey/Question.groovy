package org.eSurvey

class Question {

	Survey survey;
	String name;
	Integer type;
	List<Selection> option= new ArrayList<Selection>();
	static hasMany = [option:Selection];
    static constraints = {
    }
}
