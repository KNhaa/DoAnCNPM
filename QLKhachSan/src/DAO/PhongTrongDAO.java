/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.PhongTrongDTO;
import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class PhongTrongDAO {   
    public ArrayList docDSPhongTrong(String ngayden, String ngaydi)
    {
        ArrayList<PhongTrongDTO> ds = new ArrayList<PhongTrongDTO>();
        MySQLConnect connect = new MySQLConnect();
        try
        {
//            select phong.maphong, phong.maloaiph, phong.tang, loaiphong.dongia, phong.mota
//from phong, loaiphong
//where phong.maloaiph=loaiphong.maloaiph
//and phong.maphong not IN
//(
//select maphong
//from phieudatphong, ctdat
//where phieudatphong.madat=ctdat.madat
//and phieudatphong.trangthai not like N'Da huy'
//and ( (phieudatphong.ngayden <= '2020-11-12' and phieudatphong.ngaydi >='2020-11-12')
//     or(phieudatphong.ngayden < '2020-11-25' and phieudatphong.ngaydi >= '2020-11-25')
//     or('2020-11-12'<=phieudatphong.ngayden and '2020-11-25'>=phieudatphong.ngayden))
//     and phieudatphong.madat not IN
//     (
//       select phieudatphong.madat
//	FROM phieudatphong, hoadon
//	where phieudatphong.madat=hoadon.madat  
//      )
//group by maphong
//)
            String query="select phong.maphong, phong.maloaiph, tang, loaiphong.dongia, phong.mota\n" +
"from phong, loaiphong \n" +
"where phong.maloaiph=loaiphong.maloaiph";
            connect.st=connect.conn.createStatement();
            connect.rs=connect.st.executeQuery(query);
            
            while(connect.rs.next())
            {
                PhongTrongDTO p = new PhongTrongDTO();
                p.setMaphong(connect.rs.getString(1));
                p.setMaloai(connect.rs.getString(2));
                p.setTang(connect.rs.getInt(3));
                p.setGia(connect.rs.getInt(4));
                p.setMota(connect.rs.getString(5));  
                
                ds.add(p);
            }           
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        connect.MySQLDisconnect();
        return ds;
    }
}
