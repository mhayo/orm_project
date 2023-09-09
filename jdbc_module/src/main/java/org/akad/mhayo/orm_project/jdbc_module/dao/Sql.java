package org.akad.mhayo.orm_project.jdbc_module.dao;

public  class Sql {

    // cart statements

    public static final String SELECT_ALL_CARTS = "SELECT CA.ID AS CARTID,CA.CUSTOMER_ID,CU.USERNAME,CU.NAME,CU.SURNAME,CU.BIRTHDAY,CU.COUNTRY,CU.ZIPCODE,CU.CITY,CU.STREET,CU.HOUSENUMBER "+
            "FROM CART CA " +
            "INNER JOIN CUSTOMER CU ON CA.CUSTOMER_ID = CU.ID";

    public static final String SELECT_CART_BY_ID = "SELECT CA.ID AS CART_ID,CA.CUSTOMER_ID,CU.USERNAME,CU.NAME,CU.SURNAME,CU.BIRTHDAY,CU.COUNTRY,CU.ZIPCODE,CU.CITY,CU.STREET,CU.HOUSENUMBER "+
            "FROM CART CA " +
            "INNER JOIN CUSTOMER CU ON CA.CUSTOMER_ID = CU.ID WHERE CA.ID = ?";


    public static final String SELECT_ALL_CART_ITEM =  "SELECT * FROM CART_ITEM";

    public static final String SELECT_CART_ITEM_BY_ID =  "SELECT * FROM CART_ITEM WHERE CART_ID = ?";

    public static final String INSERT_CART = "INSERT INTO CART (ID,CUSTOMER_ID) VALUES (?,?)";

    public static final String UPDATE_CART = "UPDATE CART SET ID = ?, CUSTOMER_ID = ? WHERE ID = ?";

    public static final String DELETE_CART = "DELETE FROM CART WHERE CART_ID = ?";

    public static final String SELECT_ALL_CART_WITH_ITEM = "SELECT CA.ID AS CARTID,CA.CUSTOMER_ID,CU.USERNAME,CU.NAME,CU.SURNAME" +
            ",CU.BIRTHDAY,CU.COUNTRY,CU.ZIPCODE,CU.CITY,CU.STREET,CU.HOUSENUMBER" +
            ",IT.ID AS ITEMID,IT.DESCRIPTION,IT.PRICE " +
            "FROM CART CA" +
            " INNER JOIN CUSTOMER CU ON CA.CUSTOMER_ID = CU.ID" +
            " LEFT JOIN CART_ITEM CI ON CA.id = CI.CART_ID" +
            " LEFT JOIN ITEM IT ON CI.ITEM_ID = IT.ID";

    public static final String SELECT_ALL_CART_WITH_ITEM_BY_ID = "SELECT CA.ID AS CARTID,CA.CUSTOMER_ID,CU.USERNAME,CU.NAME,CU.SURNAME" +
            ",CU.BIRTHDAY,CU.COUNTRY,CU.ZIPCODE,CU.CITY,CU.STREET,CU.HOUSENUMBER" +
            ",IT.ID AS ITEMID,IT.DESCRIPTION,IT.PRICE " +
            "FROM CART CA" +
            " INNER JOIN CUSTOMER CU ON CA.CUSTOMER_ID = CU.ID" +
            " LEFT JOIN CART_ITEM CI ON CA.id = CI.CART_ID" +
            " LEFT JOIN ITEM IT ON CI.ITEM_ID = IT.ID WHERE CA.ID = ?";

    // item statements

    public static final String SELECT_ALL_ITEMS = "SELECT * FROM ITEM";

    public static final String SELECT_ITEM_BY_ID = "SELECT * FROM ITEM WHERE ID = ?";

    public static final String INSERT_ITEM = "INSERT INTO ITEM (DESCRIPTION, PRICE) VALUES(?,?)";

    public static final String UPDATE_ITEM = "UPDATE ITEM SET DESCRIPTION = ?, PRICE = ?";

    public static final String DELETE_ITEM = "DELETE FROM ITEM WHERE ID = ?";

    // customer statements

    public static final String SELECT_CUSTOMER_BY_ID = "SELECT * FROM CUSTOMER WHERE ID = ?";

    public static final String SELECT_ALL_CUSTOMERS = "SELECT * FROM CUSTOMER";

    public static final String UPDATE_CUSTOMER = "UPDATE CUSTOMER SET USERNAME = ?, NAME = ?, SURNAME = ?, BIRTHDAY = ?, COUNTRY = ?, ZIPCODE = ?, CITY = ?, STREET = ?, HOUSENUMBER = ?";

    public static final String INSERT_CUSTOMER = "INSERT INTO CUSTOMER (username,name, surname, birthday, country, zipcode, city, street, housenumber) VALUES (?,?,?,?,?,?,?,?,?)";

    public static final String DELETE_CUSTOMER = "DELETE FROM CUSTOMER WHERE ID = ?";

    // userorder statements

    public static final String SELECT_USERORDER_BY_ID = "SELECT UR.ID,UR.CUSTOMER_ID,UR.SUM ,CU.USERNAME,CU.NAME,CU.SURNAME,CU.BIRTHDAY,CU.COUNTRY,CU.ZIPCODE,CU.CITY,CU.STREET,CU.HOUSENUMBER,IT.ID AS ITEMID,IT.PRICE,IT.DESCRIPTION FROM USERORDER UR INNER JOIN CUSTOMER CU ON UR.CUSTOMER_ID =  CU.ID  INNER JOIN ORDER_ITEM OI ON OI.ORDER_ID = UR.ID INNER JOIN ITEM IT ON OI.ITEM_ID = IT.ID WHERE UR.CUSTOMER_ID = ?";

    public static final String SELECT_ALL_USERORDERS = "SELECT UR.ID,UR.CUSTOMER_ID,UR.SUM ,CU.USERNAME,CU.NAME,CU.SURNAME,CU.BIRTHDAY,CU.COUNTRY,CU.ZIPCODE,CU.CITY,CU.STREET,CU.HOUSENUMBER,IT.ID AS ITEMID,IT.PRICE,IT.DESCRIPTION FROM USERORDER UR INNER JOIN CUSTOMER CU ON UR.CUSTOMER_ID =  CU.ID  INNER JOIN ORDER_ITEM OI ON OI.ORDER_ID = UR.ID INNER JOIN ITEM IT ON OI.ITEM_ID = IT.ID";

    public static final String INSERT_USERORDER = "INSERT INTO USERORDER (ID, CUSTOMER_ID,SUM) VALUES(?,?,?)";

    public static final String UPDATE_USERORDER = "UPDATE USERORDER SET ID = ? ,CUSTOMER_ID = ?, SUM = ? WHERE ID = ?";

    public static final String DELETE_USERORDER = "DELETE FROM USERORDER WHERE ID = ?";



}
