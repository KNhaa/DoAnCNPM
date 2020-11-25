/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BUS;

import DAO.PDatPhongDAO;
import DTO.PDatPhongDTO;
import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class PDatPhongBUS {
    public static ArrayList<PDatPhongDTO>dspdphong;
    public PDatPhongBUS()
    {
        
    }
    
    public void docDSPDPhong()
    {
        PDatPhongDAO data = new PDatPhongDAO();
        if(dspdphong==null)
            dspdphong = new ArrayList<PDatPhongDTO>();
        dspdphong = data.docDSPDatPhong();
    }
    
    public String nextPD()
    {
        
        return "PD"+(dspdphong.size()+1);
    }
    
}
