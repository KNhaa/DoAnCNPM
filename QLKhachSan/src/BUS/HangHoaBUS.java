/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BUS;

import DAO.HangHoaDAO;
import DTO.HangHoaDTO;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author lenovo-x220i
 */
public class HangHoaBUS {
    public static ArrayList<HangHoaDTO> dssp;

    public HangHoaBUS() {
    }

    public void docDSSP() {
        HangHoaDAO data = new HangHoaDAO();
        if (dssp == null) {
            dssp = new ArrayList<HangHoaDTO>();           
        }
        dssp = data.docdshanghoa();
    }
    
    public boolean Them(HangHoaDTO sp) {
//        if(sp.getMasach().equals(""))
//        {
//            JOptionPane.showMessageDialog(null, "Xin nhập mã SP");
//            return false;
//        }
//        String regex = "^[0-9]{1,}$";
//        if (sp.getMasach().matches(regex) == false) {
//            JOptionPane.showMessageDialog(null,"Mã sách không hợp lệ");
//            return false;
//        }
//        for (SachDTO x : dssp) {
//            if (x.getMasach().equals(sp.getMasach())) {
//                JOptionPane.showMessageDialog(null, "Mã sách bị trùng");
//                return false;
//            }
//        }
//        if(sp.getTensach().equals(""))
//        {
//            JOptionPane.showMessageDialog(null, "Xin nhập tên sách");
//            return false;
//        }
//        if(sp.getMaloai().equals(""))
//        {
//            JOptionPane.showMessageDialog(null, "Xin chọn mã Loại");
//            return false;
//        }
//        if(sp.getMancc().equals(""))
//        {
//            JOptionPane.showMessageDialog(null, "Xin chọn mã NCC");
//            return false;
//        }
//              
//        if(sp.getManxb().equals(""))
//        {
//            JOptionPane.showMessageDialog(null,"Xin chọn mã NXB");
//            return false;
//        }
//        
        if(sp.getMakho().equals(""))
        {
            JOptionPane.showMessageDialog(null,"Điền đầy đủ mã kho");
            return false;
        }

              
        HangHoaDAO data = new HangHoaDAO();
        data.Them(sp);
        JOptionPane.showMessageDialog(null, "Thêm thành công");
        dssp.add(sp);
        return true;
    }
         public HangHoaDTO getInfoRow(String Ma) {
        HangHoaDTO sp = new HangHoaDTO();
        docDSSP();
        for (HangHoaDTO tempsp : HangHoaBUS.dssp) {
            if (tempsp.getMahang().equals(Ma)) {
                sp = tempsp;
                break;
            }
        }
        return sp;
         }

}
