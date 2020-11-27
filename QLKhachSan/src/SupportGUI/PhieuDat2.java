/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SupportGUI;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//package SupportGUI;
//import BUS.CTHDBUS;
//import BUS.HoaDonBUS;
//import DTO.CTHDDTO;
//import DTO.HoaDonDTO;
//import AdminGUI.HoaDonGUI;
//import static BUS.CTHDBUS.dscthd;
//import static BUS.HoaDonBUS.dshd;
//import BUS.KhuyenMaiBUS;
//import DAO.HoaDonDAO;
//import DTO.SachDTO;
//import EmployeeGUI.BanHangGUI;
import BUS.PDatPhongBUS;
import DTO.CTDatPhongDTO;
import com.github.lgooddatepicker.components.DatePicker;
import com.github.lgooddatepicker.components.DatePickerSettings;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.math.BigDecimal;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;
import static javax.swing.JFrame.EXIT_ON_CLOSE;
import javax.swing.border.*;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author lenovo-x220i
 */
public class PhieuDat2 extends JFrame{
     //thuộc tính hóa đơn
    JLabel lbmahd, lbmakh, lbmanv, lbidluutru, lbtenluutru, lbngaymua, lbngayden, lbngaydi, lbtongtien, lbthanhtien;
    static JTextField txmahd, txmakh, txmanv, txtidluutru, txttenluutru, txngaymua, txtongtien, txthanhtien; 
    JTextField txngayden, txngaydi;
    JPanel pnhd, pncthd;
    JButton donghd, chonkh, /*chonnv, chonkm,*/ xacnhan, thoat;//Nút thoát là nút hủy nha
    DatePicker dPicker1,dPicker2;

    public static int tongtien = 0;
    public static int soluongtong = 0;
    public static int thanhtien = 0;
    int change = 0; //Tắt đóng mã hóa đơn
    //thuộc tính chi tiết hóa đơn
    JLabel lbmasp, lbten, lbdongia, lbsoluong, lbsoluongmacdinh;
    static JTextField txmasp, txten, txdongia, txsoluong, txsoluongmacdinh;
    JButton chonsp, them, xoa, sua, reset;
    JTable table;
    DefaultTableModel model;
    Font font = new Font("Segoe UI", Font.BOLD, 18);
    Font fontBut = new Font("Segoe UI", Font.BOLD, 18);
    Font fontt = new Font("Segoe UI", Font.BOLD, 22);
    Font fontinput = new Font("Segoe UI", Font.PLAIN, 17);
    Border border = BorderFactory.createLineBorder(new Color(33, 33, 33));
    Border bordernull = BorderFactory.createEmptyBorder();

//    CTHDBUS bus = new CTHDBUS();
//     ArrayList<CTHDDTO> list=new ArrayList<>();

    public PhieuDat2() {
        this.setUndecorated(true);
        this.setSize(1000, 900);
        this.setVisible(true);
        this.setDefaultCloseOperation(EXIT_ON_CLOSE);
        this.setLocationRelativeTo(null);
        this.setResizable(false);
        this.setLayout(null);


    }

    public void setView(String id) {

        pnhd = new JPanel();
        //pnhd.setBounds(50, 30, 900, 250);
        pnhd.setBounds(50, 30, 900, 300);
        pnhd.setLayout(null);
        TitledBorder tthd = new TitledBorder("Thông tin đặt phòng");
        tthd.setBorder(border);
        tthd.setTitleJustification(TitledBorder.LEFT);
        tthd.setTitlePosition(TitledBorder.TOP);
        tthd.setTitleColor(new Color(249, 6, 59));
        tthd.setTitleFont(fontt);
        pnhd.setBorder(tthd);

        //Trái ( thông tin mã )
        lbmahd = new JLabel("Mã HĐ : ");
        lbmahd.setBounds(20, 50, 80, 18);
        lbmahd.setFont(font);

        lbmakh = new JLabel("Mã KH : ");
        lbmakh.setBounds(20, 100, 80, 18);
        lbmakh.setFont(font);
        lbmanv = new JLabel("Mã NV : ");
        lbmanv.setBounds(20, 150, 80, 18);
        lbmanv.setFont(font);
        lbidluutru = new JLabel("CMND khách luu trú:");
        lbidluutru.setBounds(20, 200, 120, 18);
        lbidluutru.setFont(new Font("Segoe UI", Font.BOLD, 12));
        lbtenluutru = new JLabel("Tên người lưu trú");
        lbtenluutru.setBounds(20,250,120,18);
        lbtenluutru.setFont(new Font("Segoe UI", Font.BOLD, 12));

        txmahd = new JTextField();
        txmahd.setBounds(140, 45, 150, 30);
        txmahd.setFont(fontinput);
        txmahd.setEditable(false);
        txmakh = new JTextField();
        txmakh.setBounds(140, 95, 150, 30);
        txmakh.setFont(fontinput);
        txmakh.setEditable(false);
        txmanv = new JTextField();
        txmanv.setBounds(140, 145, 150, 30);
        txmanv.setFont(fontinput);
        txmanv.setEditable(false);
        if (id.equals("Manager")) {
        } else {
            txmanv.setText(id);
        }
        
        txtidluutru = new JTextField();
        txtidluutru.setBounds(140, 195, 150, 30);
        txtidluutru.setFont(fontinput);
        txttenluutru = new JTextField();
        txttenluutru.setBounds(140,245,150,30);
        txttenluutru.setFont(fontinput);      

        donghd = new JButton("...");
        donghd.setBackground(new Color(30, 215, 96));
        donghd.setForeground(new Color(255, 255, 255));
        donghd.setBounds(270, 45, 40, 30);
        donghd.setFont(fontBut);
        chonkh = new JButton("...");
        chonkh.setBackground(new Color(30, 215, 96));
        chonkh.setForeground(new Color(255, 255, 255));
        //chonkh.setBounds(270, 95, 40, 30);
        chonkh.setBounds(300, 95, 40, 30);
        chonkh.setFont(fontBut);

        //Phải
        lbngaymua = new JLabel("Ngày mua :");
        lbngaymua.setBounds(370, 50, 120, 24);
        lbngaymua.setFont(font);
        
        lbngayden = new JLabel("Ngày đến :");
        lbngayden.setBounds(370, 100, 120, 24);
        lbngayden.setFont(font);
        
        lbngaydi = new JLabel("Ngày đi :");
        lbngaydi.setBounds(370, 150, 120, 24);
        lbngaydi.setFont(font);
        
        lbtongtien = new JLabel("Tổng tiền :");
        lbtongtien.setBounds(370, 200, 120, 24);
        lbtongtien.setFont(font);
        lbthanhtien = new JLabel("Tiền cọc :");
        lbthanhtien.setBounds(370, 250, 120, 24);
        lbthanhtien.setFont(font);

        txngaymua = new JTextField();
        txngaymua.setBounds(480, 45, 150, 30);
        txngaymua.setEditable(false);
        txngaymua.setFont(fontinput);
        
        txngayden = new JTextField("");
        txngayden.setBounds(480, 95, 150, 30);
        txngayden.setEditable(false);
        txngayden.setFont(fontinput);
        
        txngaydi = new JTextField("");
        txngaydi.setBounds(480, 145, 150, 30);
        txngaydi.setEditable(false);
        txngaydi.setFont(fontinput);
        

        txtongtien = new JTextField("0");
        txtongtien.setBounds(480, 195, 150, 30);
        txtongtien.setEditable(false);
        txtongtien.setFont(fontinput);

        txthanhtien = new JTextField("Tiền cọc");
        txthanhtien.setBounds(480, 245, 150, 30);
        txthanhtien.setEditable(false);
        txthanhtien.setFont(fontinput);
        
        DatePickerSettings pickerSettings = new DatePickerSettings();
        pickerSettings.setColor(DatePickerSettings.DateArea.TextClearLabel, new Color(30, 210, 96));
        pickerSettings.setColor(DatePickerSettings.DateArea.CalendarBackgroundNormalDates, new Color(255, 255, 255));
        pickerSettings.setColor(DatePickerSettings.DateArea.BackgroundMonthAndYearNavigationButtons, new Color(30, 210, 96));
        pickerSettings.setColor(DatePickerSettings.DateArea.TextTodayLabel, new Color(249, 6, 59));
        
        pickerSettings.setSizeDatePanelMinimumHeight(300);
        pickerSettings.setSizeDatePanelMinimumWidth(300);
        pickerSettings.setVisibleDateTextField(false);
        dPicker1 = new DatePicker(pickerSettings);
        //dPicker1.setBounds(660, 40, 30, 30);
        dPicker1.setBounds(640, 95, 30, 30);
        dPicker1.setBackground(new Color(31, 31, 31));
        dPicker1.setCursor(new Cursor(HAND_CURSOR));
        dPicker1.addDateChangeListener((dce) -> {
            txngayden.setText(dPicker1.getDateStringOrEmptyString());
        });
        
        DatePickerSettings pickerSettings0 = new DatePickerSettings();
        pickerSettings0.setColor(DatePickerSettings.DateArea.TextClearLabel, new Color(30, 210, 96));
        pickerSettings0.setColor(DatePickerSettings.DateArea.CalendarBackgroundNormalDates, new Color(255, 255, 255));
        pickerSettings0.setColor(DatePickerSettings.DateArea.BackgroundMonthAndYearNavigationButtons, new Color(30, 210, 96));
        pickerSettings0.setColor(DatePickerSettings.DateArea.TextTodayLabel, new Color(249, 6, 59));
        
        pickerSettings0.setSizeDatePanelMinimumHeight(300);
        pickerSettings0.setSizeDatePanelMinimumWidth(300);
        pickerSettings0.setVisibleDateTextField(false);
        dPicker2 = new DatePicker(pickerSettings0);
        //dPicker2.setBounds(990, 40, 30, 30);
        dPicker2.setBounds(640, 145, 30, 30);
        dPicker2.setBackground(new Color(31, 31, 31));
        dPicker2.setCursor(new Cursor(HAND_CURSOR));
        dPicker2.addDateChangeListener((dce) -> {
            txngaydi.setText(dPicker2.getDateStringOrEmptyString());
        });


        pnhd.add(lbmahd);
        pnhd.add(txmahd);
        pnhd.add(lbmakh);
        pnhd.add(txmakh);
        pnhd.add(lbmanv);
        pnhd.add(txmanv);
        pnhd.add(lbidluutru);
        pnhd.add(txtidluutru);
        pnhd.add(lbtenluutru);
        pnhd.add(txttenluutru);
        pnhd.add(lbngaymua);
        pnhd.add(txngaymua);
        pnhd.add(lbngayden);
        pnhd.add(txngayden);
        pnhd.add(lbngaydi);
        pnhd.add(txngaydi);
        pnhd.add(lbtongtien);
        pnhd.add(txtongtien);
        pnhd.add(lbthanhtien);
        pnhd.add(txthanhtien);
        //pnhd.add(donghd);
        pnhd.add(chonkh);
//        pnhd.add(chonkm);
//        pnhd.add(chonnv);
        pnhd.add(dPicker1);
        pnhd.add(dPicker2);

        pnhd.repaint();
        xacnhan = new JButton("Xác nhận");
        xacnhan.setFont(font);
//        xacnhan.setBounds(670, 125, 150, 50);
        xacnhan.setBounds(720, 125, 150, 50);
        xacnhan.setBackground(new Color(30, 215, 96));
        xacnhan.setForeground(new Color(255, 255, 255));
        xacnhan.addMouseListener(new MouseListener() {

            @Override
            public void mouseClicked(MouseEvent e) {
            }

            @Override
            public void mousePressed(MouseEvent e) {

            }

            @Override
            public void mouseReleased(MouseEvent e) {

            }

            @Override
            public void mouseEntered(MouseEvent e) {
                xacnhan.setBackground(new Color(249, 6, 59));
            }

            @Override
            public void mouseExited(MouseEvent e) {
                xacnhan.setBackground(new Color(30, 210, 96));
            }
        });
        thoat = new JButton("Hủy");
        thoat.setFont(font);
//        thoat.setBounds(670, 50, 150, 50);
        thoat.setBounds(720, 50, 150, 50);
        thoat.setBackground(new Color(30, 215, 96));
        thoat.setForeground(new Color(255, 255, 255));
        thoat.addMouseListener(new MouseListener() {

            @Override
            public void mouseClicked(MouseEvent e) {
            }

            @Override
            public void mousePressed(MouseEvent e) {

            }

            @Override
            public void mouseReleased(MouseEvent e) {

            }

            @Override
            public void mouseEntered(MouseEvent e) {
                thoat.setBackground(new Color(249, 6, 59));
            }

            @Override
            public void mouseExited(MouseEvent e) {
                thoat.setBackground(new Color(30, 210, 96));
            }
        });
        pnhd.add(thoat);
        pnhd.add(xacnhan);

        //CHI TIẾT ĐẶT PHÒNG
        pncthd = new JPanel();
        pncthd.setLayout(null);
        //pncthd.setBounds(50, 300, 900, 500);
        pncthd.setBounds(50, 350, 900, 500);
        tthd.setBorder(border);
        TitledBorder ttcthd = new TitledBorder("Chi tiết");
        ttcthd.setBorder(border);
        ttcthd.setTitleJustification(TitledBorder.LEFT);
        ttcthd.setTitlePosition(TitledBorder.TOP);
        ttcthd.setTitleColor(new Color(249, 6, 59));
        ttcthd.setTitleFont(fontt);
        pncthd.setBorder(ttcthd);
        //Thông tin chi tiết
        lbmasp = new JLabel("Mã SP : ");
        lbmasp.setBounds(20, 40, 80, 18);
        lbmasp.setFont(font);
        txmasp = new JTextField();
        txmasp.setEditable(false);
        txmasp.setBounds(100, 35, 60, 30);
        txmasp.setFont(fontinput);

//        lbten = new JLabel("Tên : ");
//        lbten.setBounds(200, 40, 50, 18);
//        lbten.setFont(font);
//        txten = new JTextField();
//        txten.setEditable(false);
//        txten.setBounds(250, 35, 200, 30);
//        txten.setFont(fontinput);

        lbdongia = new JLabel("Đơn giá : ");
        lbdongia.setBounds(470, 40, 100, 25);
        lbdongia.setFont(font);
        txdongia = new JTextField();
        txdongia.setEditable(false);
        txdongia.setBounds(550, 35, 100, 30);
        txdongia.setFont(fontinput);

//        lbsoluong = new JLabel("SL : ");
//        lbsoluong.setBounds(670, 40, 50, 18);
//        lbsoluong.setFont(font);
//        txsoluong = new JTextField();
//        txsoluong.setBounds(700, 35, 50, 30);
//        txsoluong.setFont(fontinput);

        //chonsp = new JButton("...");
        chonsp = new JButton("Tìm phòng");
        //chonsp.setBounds(760, 35, 40, 30);
        chonsp.setBounds(760, 35, 100, 30);
        chonsp.setBackground(new Color(30, 215, 96));
        chonsp.setForeground(new Color(255, 255, 255));

        them = new JButton("Thêm");
        them.setForeground(new Color(255, 255, 255));
        them.setBackground(new Color(30, 215, 96));
        them.setBounds(20, 80, 90, 40);
        them.setFont(fontBut);
        xoa = new JButton("Xóa");
        xoa.setForeground(new Color(255, 255, 255));
        xoa.setBackground(new Color(30, 215, 96));
        xoa.setBounds(120, 80, 90, 40);
        xoa.setFont(fontBut);
        
//        sua = new JButton("Sửa");
//        sua.setForeground(new Color(255, 255, 255));
//        sua.setBackground(new Color(30, 215, 96));
//        sua.setBounds(220, 80, 90, 40);
//        sua.setFont(fontBut);

        reset = new JButton("Reset");
        reset.setForeground(new Color(255, 255, 255));
        reset.setBackground(new Color(30, 215, 96));
        reset.setBounds(220, 80, 90, 40);
        reset.setFont(fontBut);
//        lbsoluongmacdinh = new JLabel("SL mặc định : ");
//        lbsoluongmacdinh.setBounds(433, 80, 150, 40);
//        lbsoluongmacdinh.setFont(font);
//        txsoluongmacdinh = new JTextField();
//        txsoluongmacdinh.setBounds(550, 85, 50, 30);
//        txsoluongmacdinh.setFont(fontinput);
//        txsoluongmacdinh.setEditable(false);

        Vector header = new Vector();
//        header.add("Mã HĐ");
//        header.add("Mã SP");
//        header.add("Đơn giá");
//        header.add("Số lượng");
//        header.add("SL mặc định");
        
        header.add("Mã đặt");
        header.add("Mã phòng");
        header.add("Đơn giá");
        model = new DefaultTableModel(header, 0);
        table = new JTable();
        table.setModel(model);
        table.getTableHeader().setBackground(new Color(66, 134, 244));
        table.getTableHeader().setForeground(new Color(255, 255, 255));
        table.getTableHeader().setFont(new Font("Segoe UI", Font.BOLD, 20));
        table.getTableHeader().setBackground(new Color(30, 210, 96));
        table.getTableHeader().setBorder(bordernull);
        table.setRowHeight(30);
        JScrollPane bangcthd = new JScrollPane(table);
        bangcthd.setBounds(20, 130, 860, 350);

        pncthd.add(lbmasp);
        pncthd.add(txmasp);
        //pncthd.add(lbten);
        //pncthd.add(txten);
        pncthd.add(lbdongia);
        pncthd.add(txdongia);
        //pncthd.add(lbsoluong);
        //pncthd.add(txsoluong);
        //pncthd.add(lbsoluongmacdinh);
        //pncthd.add(txsoluongmacdinh);
        pncthd.add(chonsp);
        pncthd.add(them);
        pncthd.add(xoa);
       // pncthd.add(sua);
        pncthd.add(reset);
        pncthd.add(bangcthd);

        pnhd.repaint();
        pncthd.repaint();
        this.add(pnhd);
        this.add(pncthd);

        this.repaint();
        this.validate();

        this.setEvent(id);
       
    }

    public int Chuyenint(String fm) throws ParseException {
        Locale vietnam = new Locale("vi", "VN");
        NumberFormat fmmoney = NumberFormat.getCurrencyInstance(vietnam);
        Number d = fmmoney.parse(fm);
        BigDecimal bd = new BigDecimal(d.toString());
        int a = bd.intValue();
        return a;
    }

    public String Chuyentien(String fm) {
        Locale vietnam = new Locale("vi", "VN");
        NumberFormat fmmoney = NumberFormat.getCurrencyInstance(vietnam);
        String c = fmmoney.format(new BigDecimal(fm.toString()));
        return c;
    }

    public String ChuyenString(Date date) {
        SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
        String fmd = fm.format(date);
        return fmd;
    }

    public Date ChuyenDate(String fmd) throws ParseException {
        Date date = new Date();
        SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
        Date d = fm.parse(fmd);
        return d;
    }

    public void setEvent(String id) {

        //TẠO MÃ HÓA ĐƠN TỰ ĐỘNG
        PDatPhongBUS buspd = new PDatPhongBUS();
        buspd.docDSPDPhong();
        txmahd.setText(buspd.nextPD());

//        CTHDBUS.dscthd = new ArrayList<>();
        Date date = new Date();
        SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
        txngaymua.setText(fm.format(date));
        donghd.addActionListener((ActionEvent e) -> {

            if (change == 0) {
                change = 1;
                txmahd.setEditable(false);
            } else {
                change = 0;
                txmahd.setEditable(true);
            }

        });
        chonkh.addActionListener((ActionEvent e) -> {
            SupportKhachHang duyetkh = new SupportKhachHang("PhieuDatPhong");

        });
//        chonnv.addActionListener((ActionEvent e) -> {
//        });
        chonsp.addActionListener((ActionEvent e) -> {            
            String ngayden = txngayden.getText();
            String ngaydi =  txngaydi.getText();
            if(("".equals(ngayden))||("".equals(ngaydi)))
            {
                JOptionPane.showMessageDialog(rootPane, "Chưa điền ngày");
            }
            else
            {
                TimPhongGUI duyetsp = new TimPhongGUI(ngayden,ngaydi);
            }
            

        });
//        chonkm.addActionListener((ActionEvent e) -> {
//            try {
//                SupportKhuyenMai duyetkm = new SupportKhuyenMai("ThemHoaDon");
//                   
//            } catch (ParseException ex) {
//                Logger.getLogger(SupportHoaDon.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        });
        //THÊM CTHD
       them.addActionListener((ActionEvent e) -> {

//                if ("".equals(txmahd.getText())) {
//                    JOptionPane.showMessageDialog(null, "Nhập mã HĐ để có thể bắt đầu thêm");
//                } else if ("".equals(txmasp.getText())) {
//                    JOptionPane.showMessageDialog(null, "Chọn thông tin sản phẩm cần bán");
//                } else if ("".equals(txsoluong.getText())) {
//                    JOptionPane.showMessageDialog(null, "Nhập số lượng sản phẩm cần bán");
//                } else if (txmahd.isEditable() == true) {
//                    JOptionPane.showMessageDialog(null, "Đóng mã HĐ rồi mới nhập chi tiết");
//                } else 
//                  
//               {
//                    String pattern ="^[0-9]{1,}$";
//                if(txsoluong.getText().matches(pattern)==false)
//                {
//                    JOptionPane.showMessageDialog(null, "Chỉ được nhập số"); 
//                    return;
//                }
//                // thêm chi tiết hóa đơn
//                CTHDDTO cthd = new CTHDDTO();
//                cthd.setMahd(txmahd.getText());
//                cthd.setMasach(txmasp.getText());
//                cthd.setSoluong(Integer.valueOf(txsoluong.getText()));
//                cthd.setThanhtien(Integer.valueOf(txdongia.getText()));
                CTDatPhongDTO ctdp= new CTDatPhongDTO();
                ctdp.setMadat(txmahd.getText());
                ctdp.setMaphong(txmasp.getText());
                ctdp.setDongia(Integer.valueOf(txdongia.getText()));
//                if (cthd.getSoluong() <= Integer.valueOf(txsoluongmacdinh.getText()))
//                {
//             
//                    if(list.isEmpty())
//                    {
//                        list.add(cthd);
//                               Vector row = new Vector();
//                               row.add(cthd.getMahd());
//                               row.add(cthd.getMasach());
//                               row.add(cthd.getThanhtien());
//                               row.add(cthd.getSoluong());
//                               row.add(txsoluongmacdinh.getText());
//                               model.addRow(row);
//                               table.setModel(model);
//                               tongtien += cthd.getThanhtien()*cthd.getSoluong();
//                               soluongtong += cthd.getSoluong();
//                               txsoluongtong.setText(String.valueOf(soluongtong));
//                            txtongtien.setText(String.valueOf(tongtien));
//                            txthanhtien.setText(Chuyentien(String.valueOf(tongtien)));
//                        KhuyenMaiBUS buskm = new KhuyenMaiBUS();
//                        buskm.docDSKMD();
//                        
//                    }
//                    else
//                    {
//                        int trung=0;
//                    for (int i=0; i<list.size(); i++)
//                    {
//                    CTHDDTO tempctpn = new CTHDDTO();
//                    tempctpn = list.get(i);
//                        if(tempctpn.getMasach().equals(cthd.getMasach()))
//                        {
//                            JOptionPane.showMessageDialog(null, "Mã sách bị trùng");
//                            trung=1;
//                            break;
//                        }
//                    }
//                    if(trung==0)
//                    {
//                         list.add(cthd);
//                        //JOptionPane.showMessageDialog(null, "mã sách vào mảng: "+cthd.getMasach());
//                              Vector row = new Vector();
//                               row.add(cthd.getMahd());
//                               row.add(cthd.getMasach());
//                               row.add(cthd.getThanhtien());
//                               row.add(cthd.getSoluong());
//                               row.add(txsoluongmacdinh.getText());
//                               model.addRow(row);
//                               table.setModel(model);
//
//                               tongtien += cthd.getSoluong() * cthd.getThanhtien();
//                                soluongtong += cthd.getSoluong();
//                                txtongtien.setText(String.valueOf(tongtien));
//                               
//                               txsoluongtong.setText(String.valueOf(soluongtong));
//                               txthanhtien.setText(Chuyentien(String.valueOf(tongtien)));
//                    }
//                    
//                    
//                    }
//                
//                }
//                                    else
//                    {
//                        JOptionPane.showMessageDialog(null, "Số lượng trong CTHĐ phải nhỏ hơn SL mặc định");
//                        txsoluong.requestFocus();
//                    }
//               }
       }); 
  




       // XÓA CTHD
//        xoa.addActionListener((ActionEvent e) -> {
//            int i = table.getSelectedRow();
//            if (i >= 0) {
//               
//               CTHDDTO cthd = new CTHDDTO();
//               cthd.setMahd(txmahd.getText());
//               cthd.setMasach(String.valueOf(model.getValueAt(i, 1)));
//               cthd.setSoluong(Integer.parseInt(model.getValueAt(i,3).toString()));
//               cthd.setThanhtien(Integer.valueOf(model.getValueAt(i, 2).toString()));
//                    //remove nè
//                       for(int j=0; j<list.size(); j++)
//                {
//                    CTHDDTO temp = new CTHDDTO();
//                    temp = list.get(j);
//                    if(temp.getMasach().equals(cthd.getMasach()))
//                    {
//                        list.remove(j);
//                        tongtien -= cthd.getSoluong() * cthd.getThanhtien();
//                    soluongtong -= cthd.getSoluong();
//                    thanhtien = tongtien;
//
//                
//                 txtongtien.setText(String.valueOf(tongtien));
//                txsoluongtong.setText(String.valueOf(soluongtong));
//                txthanhtien.setText(Chuyentien(String.valueOf(thanhtien)));
//                        break;
//                    }                   
//                }      
//                        
//                model.removeRow(i);
//                table.setModel(model);
//
//   
//
//                txmasp.setText("");
//                txten.setText("");
//                txdongia.setText("");
//                txsoluong.setText("");
//            } else {
//                JOptionPane.showMessageDialog(null, "Chọn dòng để xóa");
//            }
//        });

       
       //XÁC NHẬN LẬP HÓA ĐƠN
        xacnhan.addActionListener((ActionEvent e) -> {
            int chuyendoi = 1;
            if ("".equals(txmahd.getText())) {
                chuyendoi = 0;
                JOptionPane.showMessageDialog(null, "Điền vào mã HĐ");
            } else if ("".equals(txmanv.getText())) {
                chuyendoi = 0;
                JOptionPane.showMessageDialog(null, "Mã nhân viên không được trống");
            } else if ("".equals(txmakh.getText())) {
                chuyendoi = 0;
                JOptionPane.showMessageDialog(null, "Mã khách hàng không được trống");
            } else if ("".equals(txtidluutru.getText())) {
                chuyendoi = 0;
                JOptionPane.showMessageDialog(null, "Mã khuyến mãi không được trống");
            } else if (model.getRowCount() == 0) {
                chuyendoi = 0;
                JOptionPane.showMessageDialog(null, "Cần có thông tin trong bảng chi tiết");
            }
            if (chuyendoi == 1) 
            {
                int output = JOptionPane.showConfirmDialog(null, "Có chắc muốn tạo hóa đơn này", "", JOptionPane.YES_NO_OPTION);
                if (output == JOptionPane.YES_OPTION) 
                {
//                    HoaDonDTO hd = new HoaDonDTO();
//                    hd.setMahd(txmahd.getText());
//                    hd.setNgaylaphd(txngaymua.getText());                   
//
//                    hd.setMakm(txtidluutru.getText());
//                    hd.setManv(txmanv.getText());
//                    hd.setMakh(txmakh.getText());
//                    hd.setTongtien(Integer.valueOf(txtongtien.getText()));

//                    try {
//                        hd.setThuctra(Integer.valueOf(Chuyenint(txthanhtien.getText())));
//                    } catch (ParseException ex) {
//                        Logger.getLogger(SupportHoaDon.class.getName()).log(Level.SEVERE, null, ex);
//                    }
//                    hd.setTienkm((hd.getTongtien()) - (hd.getThuctra()));
                    
//                    HoaDonBUS bus = new HoaDonBUS();
//                    if (HoaDonBUS.dshd == null) 
//                    {
//                        bus.docDSHD();
//                    }
//                    bus.ThemHD(hd);
                    
                     //Thêm HĐ vào bảng GUI
                    Vector row = new Vector();

//                    row.add(hd.getMahd());
//                    row.add(hd.getMakm());
//                    row.add(hd.getManv());
//                    row.add(hd.getMakh());
//                   
//                    row.add(hd.getNgaylaphd());
//                    row.add(hd.getTongtien());
//                    row.add(Integer.valueOf(hd.getTongtien()) - Integer.valueOf(hd.getThuctra()));
//                    row.add(hd.getThuctra());
                    
                  
                    
                    
                    // them CTHD
//                    CTHDDTO ct=new CTHDDTO();
//                    CTHDBUS busct=new CTHDBUS();

//                    for(int i=0; i<list.size();i++)
//                    {
//                        ct=list.get(i);
//                        busct.ThemCTHDtheoHD(ct);
//                       
//                    }
                   
                    
                    if (id.equals("Manager")) {
//                        HoaDonGUI.modelHD.addRow(row);
//                        HoaDonGUI.tableHD.setModel(HoaDonGUI.modelHD);
                    } else {
//                        BanHangGUI.modelHD.addRow(row);
//                        BanHangGUI.tableHD.setModel(BanHangGUI.modelHD);
                    }
                   
                    this.setVisible(false);
                    

                } else 
                    if (output == JOptionPane.NO_OPTION) 
                    {
                    change = 0;
                    txmahd.setEditable(true);
                }
//              for(int i=0; i<list.size();i++)
//                    {
//                        list.remove(i);
//                       
//                    }
              tongtien=0;
             
              
            }
        });
        thoat.addActionListener((ActionEvent e) -> {
            int output = JOptionPane.showConfirmDialog(null, "Bạn có chắc muốn hủy toàn bộ HĐ và CTHD hiện tại", "", JOptionPane.YES_NO_OPTION);
            if (output == JOptionPane.YES_OPTION) {
                if (table.getRowCount() >= 0) // Nếu có thông tin đang thêm
                {
//                    CTHDBUS busct = new CTHDBUS();
//                    busct.XoaallCTHDtheoHD(txmahd.getText());
                    this.setVisible(false);
                }
                tongtien=0;
            }

        });
        reset.addActionListener((ActionEvent e) -> {
           txmasp.setText("");
//           txten.setText("");
           txdongia.setText("");
//           txsoluong.setText("");
           txtongtien.setText("");
           txthanhtien.setText("");
           tongtien=0;
//           list.clear();
           model.setNumRows(0);
           table.setModel(model);
        });
    
}
//     public static void main(String[] args) {
//        SupportHoaDon test = new SupportHoaDon();
//        test.setView("Manager");
//       
//     }
    
    public static void main(String[] args) {
        PhieuDat2 test = new PhieuDat2();
        test.setView("LT2");      
     }       
}

