package com.ssafy.tigetting.xmlparser;

import com.ssafy.tigetting.entity.Performance;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class PerformanceListParser {

    public static List<Performance> parse(File xmlFile) throws Exception {

        List<Performance> results = new ArrayList<>();

        Document doc = DocumentBuilderFactory.newInstance()
                .newDocumentBuilder()
                .parse(xmlFile);

        NodeList dbList = doc.getElementsByTagName("db");

        for (int i = 0; i < dbList.getLength(); i++) {
            Element db = (Element) dbList.item(i);

            Performance dto = new Performance();
//            dto.setMt20id(getText(db, "mt20id"));
//            dto.setPrfnm(getText(db, "prfnm"));
//            dto.setFcltynm(getText(db, "fcltynm"));
//            dto.setArea(getText(db, "area"));
//            dto.setGenrenm(getText(db, "genrenm"));
//            dto.setPrfstate(getText(db, "prfstate"));
//            dto.setPoster(getText(db, "poster"));
//
//            dto.setPrfpdfrom(parseDate(getText(db, "prfpdfrom")));
//            dto.setPrfpdto(parseDate(getText(db, "prfpdto")));

            results.add(dto);
        }

        return results;
    }

    private static String getText(Element parent, String tag) {
        NodeList list = parent.getElementsByTagName(tag);
        if (list.getLength() == 0) return null;
        return list.item(0).getTextContent().trim();
    }

    private static LocalDate parseDate(String value) {
        if (value == null || value.isEmpty()) return null;
        return LocalDate.parse(value.replace(".", "-"));
    }
}
