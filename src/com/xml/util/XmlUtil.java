package com.xml.util;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;

import com.demo.model.PaymentModel;

public class XmlUtil {
	
	
	SAXBuilder builder = new SAXBuilder();
	ClassLoader classLoader = getClass().getClassLoader();
	File xmlfile = new File("D:\\Projects\\Budapest\\Payment.xml");
	
	public List<String> parseXML(String name, HashMap<String, String> hm) {

		
		System.out.println(xmlfile);
		List<String> listofPayments = new ArrayList<>();

		try {

			Document document = (Document) builder.build(xmlfile);
			Element rootNode = document.getRootElement();
			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		
				Element child = new Element("entry");
				
				if (name.equalsIgnoreCase("favorite")) 
					child.setAttribute("favorite", "true");
				
				Date date = new Date();
				hm.forEach((k, v) -> {
					child.addContent(new Element(k).setText(v));
				});
				child.addContent(new Element("Date").setText(dateFormat.format(date)));
				rootNode.addContent(child);
				XMLOutputter xmlOutput = new XMLOutputter();
				// display nice nice
				xmlOutput.setFormat(Format.getPrettyFormat());
				xmlOutput.output(document, new FileWriter(xmlfile));
				// xmlOutput.output(doc, System.out);

				System.out.println("File updated!");
		}

		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listofPayments;
	}

	
	public String getMainbalance(){
		
		String mainBal=null;
		Document document;
		try {
			document = (Document) builder.build(xmlfile);
			Element rootNode = document.getRootElement();
			mainBal=rootNode.getChildText("mainbalance");
			
			System.out.println("Printing MainBal" + mainBal);
			
		} catch (JDOMException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return mainBal;
	}
	
	
	
public void setMainbalance(String balance){
		
		
		Document document;
		try {
			document = (Document) builder.build(xmlfile);
			Element rootNode = document.getRootElement();
			rootNode.getChild("mainbalance").setText(balance);
			
			XMLOutputter xmlOutput = new XMLOutputter();

			// display nice nice
			xmlOutput.setFormat(Format.getPrettyFormat());
			xmlOutput.output(document, new FileWriter(xmlfile));

			// xmlOutput.output(doc, System.out);

			System.out.println("File updated!");
			
		} catch (JDOMException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public List<PaymentModel> readxml (){
		
		List<PaymentModel> listofPayments = new ArrayList<>();
		System.out.println(xmlfile);
		try {

			Document document = (Document) builder.build(xmlfile);
			Element rootNode = document.getRootElement();
			List list = rootNode.getChildren("entry");
			PaymentModel pm = null;
			for (int i = 0; i < list.size(); i++) {
				Element node = (Element) list.get(i);
				pm= new PaymentModel();
				pm.setAmount(node.getChildText("Amount"));
				pm.setDetails(node.getChildText("remarks"));
				pm.setDate(node.getChildText("Date"));
				pm.setStatus("Completed");
				pm.setBenName(node.getChildText("bName"));
				listofPayments.add(pm);
			}

			
		}

		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listofPayments;
		
	}
	
	
	
public List<PaymentModel> getFavorites (){
		
		List<PaymentModel> listofPayments = new ArrayList<>();
		System.out.println(xmlfile);
		try {

			Document document = (Document) builder.build(xmlfile);
			Element rootNode = document.getRootElement();
			List list = rootNode.getChildren("entry");
			PaymentModel pm = null;
			boolean favCheck ;
			for (int i = 0; i < list.size(); i++) {
				Element node = (Element) list.get(i);
				 favCheck = node.hasAttributes();
				if(favCheck){
					pm= new PaymentModel();
					pm.setAmount(node.getChildText("Amount"));
					pm.setDetails(node.getChildText("remarks"));
					pm.setDate(node.getChildText("Date"));
					pm.setBenName(node.getChildText("bName"));
					listofPayments.add(pm);
				}
				
				
			}

			
		}

		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listofPayments;
		
	}
	
	public static void main (String[] args){
		
		XmlUtil x= new XmlUtil();
		
		x.getFavorites();
	}
}
