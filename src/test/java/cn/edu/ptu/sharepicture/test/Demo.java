package cn.edu.ptu.sharepicture.test;

import org.junit.Test;

public class Demo {

	@Test
	public void outputText() {
		String str = "placename,failuredescribe, failurestatus, happentime, submittime, responsetime, repairtime, closetime, teamname, username, disposal, failureremark, failuretype";
		String[] names = str.split(",");
		for (int i = 0; i < names.length; i++) {
			String name = names[i].trim();
			System.out.println("/**/");
			System.out.println("var " + name + " = $api.dom(\"#" + name + "\");");
			System.out.println("$api.text(" + name + ", failureInfo." + name + ");");
		}
	}
	
	@Test
	public void getHtml() {
		
	}

}
