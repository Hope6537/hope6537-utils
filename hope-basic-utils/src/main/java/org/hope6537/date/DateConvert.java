package org.hope6537.date;

import org.apache.commons.beanutils.Converter;

import java.text.SimpleDateFormat;

public class DateConvert
        implements Converter {
    public Object convert(Class arg0, Object arg1) {
        String p = (String) arg1;
        if ((p == null) || (p.trim().length() == 0))
            return null;
        try {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            return df.parse(p.trim());
        } catch (Exception ignored) {
        }
        return null;
    }
}