package org.eSurvey

class Question {

	Survey survey;
	String name;
	List<Selection> option= new ArrayList<Selection>();
	static hasMany = [option:Selection];
    static constraints = {
    }
}
