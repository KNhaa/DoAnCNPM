/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ThuKhoGUI;


import BUS.HangHoaBUS;
import DTO.HangHoaDTO;
import java.awt.Color;
import java.awt.Cursor;
import java.awt.Font;
import static java.awt.Frame.HAND_CURSOR;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.Vector;
import java.util.regex.Pattern;
import javax.swing.*;
import javax.swing.border.Border;
import javax.swing.table.DefaultTableModel;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;
import javax.swing.RowFilter;
import javax.swing.SwingConstants;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;

public class HangHoaGUI extends JPanel {
 //setbounds(x,y,width,length)
    int choice = 0;

    public static DefaultTableModel modelHD, modelCTHD;
    JLabel lbtimkiem, lbtop, lbexit;
    JTextField txtimkiem;
    public static JTextField txmahang,txmakho,txtenhang,txgia,txdonvitinh,txsoluong;
    JLabel lbhanghoa,lbmahang, lbmakho, lbtenhang, lbgia, lbdonvitinh, lbsoluong;
    JButton them, xoa, sua, reset, timkiem, back, tknc, tkncoff,inan,exit;
    JComboBox chonmakho;


    Font font = new Font("Segoe UI", Font.BOLD, 18);
    Font font1 = new Font("Segoe UI", Font.BOLD, 22);
    Border border = BorderFactory.createLineBorder(new Color(33, 33, 33));
    Border bordernull = BorderFactory.createEmptyBorder();
    Border borderinput = BorderFactory.createLineBorder(new Color(30, 210, 96), 4);
    
    JTable table;
    DefaultTableModel model;

    

    public HangHoaGUI() {

        this.setSize(1350, 945);
        this.setLayout(null);
        this.setBorder(border);
        this.setBackground(new Color(237,241,255));


        lbtop = new JLabel();
        lbtop.setBounds(0, 0, 950, 65);
        lbtop.setBackground(new Color(134, 174, 195));
        lbtop.setOpaque(true);
        
        String tk[] = {"Theo Mã HH", "Theo Mã kho","Theo Tên hàng", "Theo Giá", "Theo đơn vị tính", 
            "Theo số lượng"};
        
        JComboBox cb = new JComboBox(tk);
        cb.setBounds(340, 18, 130, 32);
        cb.setFont(new Font("Segoe UI", Font.BOLD, 16));
        cb.setBorder(border);
        cb.setBackground(new Color(255, 255, 255));
        cb.addActionListener((ActionEvent e) -> {
            choice = cb.getSelectedIndex();
            System.out.println(choice);
        });
        
        
       
        ImageIcon hinhtimkiem = new ImageIcon(getClass().getResource("/HinhAnh/timkiem.png"));       
        timkiem = new JButton();
        timkiem.setBounds(490, 15, 80, 40);       
        timkiem.setBackground(new Color(31,73,91));
        timkiem.setIcon(hinhtimkiem);
        timkiem.setFont(font);
        timkiem.setBorder(bordernull);
        timkiem.setFocusPainted(false);
        timkiem.setCursor(new Cursor(HAND_CURSOR));      
        
        
        txtimkiem = new JTextField(18);
        txtimkiem.setFont(font);
        txtimkiem.setBounds(70, 18, 250, 30);
        txtimkiem.setBorder(border);
       

        lbexit = new JLabel();
        lbexit.setBackground(new Color(33, 33, 33));
        lbexit.setBounds(770, 0, 180, 35);
        

        ImageIcon hinhexit = new ImageIcon(getClass().getResource("/HinhAnh/thoat.png"));
        exit = new JButton();
        exit.setBounds(120, 0, 60, 35);
        exit.setBackground(new Color(30, 30, 30));
        exit.setIcon(hinhexit);
        exit.setBorder(bordernull);
        exit.setFocusPainted(false);
        exit.setHorizontalTextPosition(SwingConstants.LEFT);
        exit.addMouseListener(new MouseListener() {
            @Override
            public void mouseClicked(MouseEvent e) {
                System.exit(0);
            }

            @Override
            public void mousePressed(MouseEvent e) {

            }

            @Override
            public void mouseReleased(MouseEvent e) {

            }

            @Override
            public void mouseEntered(MouseEvent e) {
                exit.setBackground(Color.red);
            }

            @Override
            public void mouseExited(MouseEvent e) {
                exit.setBackground(new Color(30, 30, 30));
            }

        });   
        
  
        lbexit.add(exit);      
        lbtop.add(lbexit);
        lbtop.add(txtimkiem);
        lbtop.add(cb);
        
        //code tiếp giao diện ở đây

        lbhanghoa = new JLabel("Sản Phẩm");
        lbhanghoa.setBounds(30, 80, 200, 60);
        lbhanghoa.setFont(new Font("Segoe UI", Font.BOLD, 30));
        lbhanghoa.setForeground(new Color(31,73,91));
        
        lbmahang= new JLabel("Mã hàng",JLabel.LEFT);
        lbmahang.setBounds(30, 155, 100, 50);
        lbmahang.setFont(font1);
        lbmahang.setForeground(new Color(33,33,33));
        txmahang = new JTextField(18);
        txmahang.setFont(font);
        txmahang.setBounds(150, 165, 60, 30);     
        txmahang.setBorder(border);
        
        lbmakho= new JLabel("Mã kho",JLabel.LEFT);
        lbmakho.setBounds(290, 155, 100, 50);
        lbmakho.setFont(font1);
        lbmakho.setForeground(new Color(33,33,33));
        
        String choose[] = {"----","MK1", "MK2"};
        chonmakho = new JComboBox(choose);
        chonmakho.setFont(new Font("Segoe UI", Font.BOLD, 16));
        chonmakho.setBorder(border);
        chonmakho.setBounds(420, 165, 100, 30);
        chonmakho.setForeground(new Color(255, 255, 255));
        chonmakho.setBackground(new Color(134, 174, 195));
        
        
        lbtenhang= new JLabel("Tên hàng ",JLabel.LEFT);
        lbtenhang.setBounds(30, 220, 150, 50);
        lbtenhang.setFont(font1);
        lbtenhang.setForeground(new Color(33,33,33));
        txtenhang = new JTextField(18);
        txtenhang.setFont(font);
        txtenhang.setBounds(150, 230, 180, 30);     
        txtenhang.setBorder(border);
        
        lbgia = new JLabel ("Giá",JLabel.LEFT);
        lbgia.setBounds(350,220,60,50);
        lbgia.setFont(font1);
        lbgia.setForeground(new Color(33,33,33));
        txgia= new JTextField(18);
        txgia.setFont(font);
        txgia.setBounds(420, 230, 100, 30);     
        txgia.setBorder(border);
        
        
        lbdonvitinh = new JLabel ("Đơn vị tính",JLabel.LEFT);
        lbdonvitinh.setBounds(570, 155, 150, 50);
        lbdonvitinh.setFont(font1);
        lbdonvitinh.setForeground(new Color(33,33,33));
        txdonvitinh= new JTextField(18);
        txdonvitinh.setFont(font);
        txdonvitinh.setBounds(730, 165, 60, 30);     
        txdonvitinh.setBorder(border);
        
        lbsoluong = new JLabel ("Số lượng",JLabel.LEFT);
        lbsoluong.setBounds(600, 230, 100, 50);
        lbsoluong.setFont(font1);
        lbsoluong.setForeground(new Color(33,33,33));
        txsoluong= new JTextField(18);
        txsoluong.setFont(font);
        txsoluong.setBounds(730, 235, 60, 30);     
        txsoluong.setBorder(border);
        
        ImageIcon hinhthem = new ImageIcon(getClass().getResource("/HinhAnh/them.png"));
        ImageIcon hinhthem1 = new ImageIcon(getClass().getResource("/HinhAnh/them1.png"));
        them = new JButton();
        them.setBounds(270, 290, 130, 70);
        them.setBackground(new Color(33, 33, 33));
        them.setBorder(bordernull);
        them.setIcon(hinhthem);
        them.setFocusPainted(false);
        them.setContentAreaFilled(false);
        them.addMouseListener(new MouseListener() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int dialogButton = JOptionPane.YES_NO_OPTION;
            int dialogResult = JOptionPane.showConfirmDialog(null, "Bạn có muốn thêm sản phẩm", "Thêm", dialogButton);
            if(dialogResult == 0)
                try{
                HangHoaDTO sp = new HangHoaDTO(); 
                sp.setMahang(txmahang.getText());
                sp.setMakho(chonmakho.getSelectedItem().toString());
                sp.setTenhang(txtenhang.getText());
                sp.setGia(Integer.parseInt(txgia.getText()));
                sp.setDonvitinh(txdonvitinh.getText());
                sp.setSoluong(Integer.parseInt(txsoluong.getText()));
               
                
                HangHoaBUS bus = new HangHoaBUS();
                if (null == HangHoaBUS.dssp) 
                {
                    bus.docDSSP();
                }
                if (bus.Them(sp)) 
                {
                    Vector row = new Vector();                  
                    row.add(sp.getMahang());
                    row.add(sp.getMakho());
                    row.add(sp.getTenhang());
                    row.add(sp.getGia());
                    row.add(sp.getDonvitinh());
                    row.add(sp.getSoluong());
                    
                    model.addRow(row);
                    table.setModel(model);
                    chonmakho.setSelectedIndex(0);
                    txmahang.setText("");
                    txtenhang.setText("");
                    txdonvitinh.setText("");
                    txgia.setText("");
                    txsoluong.setText("");
                    
                } 
                 } catch (NumberFormatException ex) {
              
            }
            }

            @Override
            public void mousePressed(MouseEvent e) {

            }

            @Override
            public void mouseReleased(MouseEvent e) {

            }

            @Override
            public void mouseEntered(MouseEvent e) {
                them.setIcon(hinhthem1);
            }

            @Override
            public void mouseExited(MouseEvent e) {
                them.setIcon(hinhthem);
            }

        });
        
        ImageIcon hinhxoa = new ImageIcon(getClass().getResource("/HinhAnh/xoa.png"));
        ImageIcon hinhxoa1 = new ImageIcon(getClass().getResource("/HinhAnh/xoa1.png"));
        xoa = new JButton();
        xoa.setBounds(410, 290, 130, 70);
        xoa.setBackground(new Color(33, 33, 33));
        xoa.setBorder(bordernull);
        xoa.setIcon(hinhxoa);
        xoa.setFocusPainted(false);
        xoa.setContentAreaFilled(false);
        xoa.addMouseListener(new MouseListener() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int dialogButton = JOptionPane.YES_NO_OPTION;
            int dialogResult = JOptionPane.showConfirmDialog(null, "Bạn có muốn xóa SP", "Xóa", dialogButton);
            if(dialogResult == 0)
            {
                HangHoaBUS bus = new HangHoaBUS();
                if (!bus.Xoa(txmahang.getText().toString())) 
                {
                return;
                } 
                else 
                {
                int i = table.getSelectedRow();
                model.removeRow(i);
                table.setModel(model);
               txmahang.setText("");
                txtenhang.setText("");
                txgia.setText("");
                txdonvitinh.setText("");
                txsoluong.setText("");
                chonmakho.setSelectedIndex(0);
                
                }
            }
            }

            @Override
            public void mousePressed(MouseEvent e) {

            }

            @Override
            public void mouseReleased(MouseEvent e) {

            }

            @Override
            public void mouseEntered(MouseEvent e) {
                xoa.setIcon(hinhxoa1);
            }

            @Override
            public void mouseExited(MouseEvent e) {
                xoa.setIcon(hinhxoa);
            }

        });

        ImageIcon hinhsua = new ImageIcon(getClass().getResource("/HinhAnh/sua.png"));
        ImageIcon hinhsua1 = new ImageIcon(getClass().getResource("/HinhAnh/sua1.png"));
        sua = new JButton();
        sua.setBounds(550, 290, 130, 70);
        sua.setBackground(new Color(33, 33, 33));
        sua.setBorder(bordernull);
        sua.setIcon(hinhsua);
        sua.setFocusPainted(false);
        sua.setContentAreaFilled(false);
        
        sua.addMouseListener(new MouseListener() {
            @Override
            public void mouseClicked(MouseEvent e) 
            {

                    int i = table.getSelectedRow();
                    if (i >= 0) {
                        try {
                            
                            if(txsoluong.getText().equals(""))
                            {
                                JOptionPane.showMessageDialog(null,"Không được để trống số lượng");
                                return ;
                            }
                            else
                            {
                                String pattern = "^[0-9]{1,}$";
                                if(!Pattern.matches(pattern, txsoluong.getText()))
                                {
                                    JOptionPane.showMessageDialog(null,"Chỉ được nhập số");
                                    return ;
                                }
                            }
                            
                            if(txgia.getText().equals(""))
                            {
                                JOptionPane.showMessageDialog(null, "Không được để trống đơn giá");
                                return;
                            }
                            else
                            {
                                String pattern = "^[0-9]{1,}$";
                                if(!Pattern.matches(pattern, txgia.getText()))
                                {
                                    JOptionPane.showMessageDialog(null,"Chỉ được nhập số");
                                    return ;
                                }
                            }
                            
                            if(txtenhang.getText().equals(""))
                            {
                                JOptionPane.showMessageDialog(null,"Không được để trống tên hàng hóa");
                                return;
                            }  
                            if(txmahang.getText().equals(""))
                            {
                                JOptionPane.showMessageDialog(null,"Không được để trống mã hàng hóa");
                                return;
                            }  
                                                       
                            HangHoaDTO sp = new HangHoaDTO();
                            sp.setMahang(txmahang.getText());
                            sp.setMakho(chonmakho.getSelectedItem().toString());
                            sp.setTenhang(txtenhang.getText());
                            sp.setGia(Integer.parseInt(txgia.getText()));
                            sp.setDonvitinh(txdonvitinh.getText());
                            sp.setSoluong(Integer.parseInt(txsoluong.getText()));
                            
                           
                            HangHoaBUS bus = new HangHoaBUS();
                            if (!bus.Sua(sp)) {
                                return;
                            } else {
                                Vector row = new Vector();                  
                               row.add(sp.getMahang());
                                row.add(sp.getMakho());
                                row.add(sp.getTenhang());
                                row.add(sp.getGia());
                                row.add(sp.getDonvitinh());
                                row.add(sp.getSoluong());
                   
                               
                                model.removeRow(i); // dòng chọn
                                model.insertRow(i, row);
                                table.setModel(model);
                                
                                txtenhang.setText("");
                                txdonvitinh.setText("");
                                txsoluong.setText("");
                                txgia.setText("");
                                chonmakho.setSelectedIndex(0);
                                txmahang.setText("");

                            }
                        } catch (NullPointerException ex) {
                            JOptionPane.showMessageDialog(null, ex.toString());
                        }

                    } else {
                        JOptionPane.showMessageDialog(null, "Vui lòng chọn dòng");
                    }
            //    }

                
            }

            @Override
            public void mousePressed(MouseEvent e) {

            }

            @Override
            public void mouseReleased(MouseEvent e) {

            }

            @Override
            public void mouseEntered(MouseEvent e) {
                sua.setIcon(hinhsua1);
            }

            @Override
            public void mouseExited(MouseEvent e) {
                sua.setIcon(hinhsua);
            }

        });
        
         ImageIcon hinhreset = new ImageIcon(getClass().getResource("/HinhAnh/reset.png"));
        ImageIcon hinhreset1 = new ImageIcon(getClass().getResource("/HinhAnh/reset2.png"));
        reset = new JButton();
        reset.setBounds(700, 290, 130, 70);
        reset.setBackground(new Color(33, 33, 33));
        reset.setBorder(bordernull);
        reset.setIcon(hinhreset);
        reset.setFocusPainted(false);
        reset.setContentAreaFilled(false);      
        reset.addMouseListener(new MouseListener() {
            @Override
            public void mouseClicked(MouseEvent e) {
                
                 HangHoaBUS hhbus = new HangHoaBUS();        
            txmahang.setText("");            
            txtenhang.setText("");
            txgia.setText("");
            txsoluong.setText("");
            txdonvitinh.setText("");
            chonmakho.setSelectedIndex(0);
            }

            @Override
            public void mousePressed(MouseEvent e) {

            }

            @Override
            public void mouseReleased(MouseEvent e) {

            }

            @Override
            public void mouseEntered(MouseEvent e) {
                reset.setIcon(hinhreset1);
            }

            @Override
            public void mouseExited(MouseEvent e) {
                reset.setIcon(hinhreset);
            }

        });
        
        them.setContentAreaFilled(false);
        xoa.setContentAreaFilled(false);
        sua.setContentAreaFilled(false);
        reset.setContentAreaFilled(false);
        
         Vector header = new Vector();       
        header.add("Mã Hàng");
        header.add("Mã Kho");
        header.add("Tên hàng");
        header.add("Giá");
        header.add("ĐVT");
        header.add("SL");
        model = new DefaultTableModel(header,0);
        table = new JTable();
        table.setModel(model);
        table.setFillsViewportHeight(true);
        table.setBorder(border);
        table.setBackground(new Color(255, 255, 255));
        table.setFont(new Font("Segoe UI", Font.PLAIN, 18));
        table.getColumnModel().getColumn(0).setPreferredWidth(25);
        table.getColumnModel().getColumn(1).setPreferredWidth(25);
        table.getColumnModel().getColumn(2).setPreferredWidth(160);
        table.getColumnModel().getColumn(3).setPreferredWidth(25);
        table.getColumnModel().getColumn(4).setPreferredWidth(25);
        table.getColumnModel().getColumn(5).setPreferredWidth(25);
        table.getTableHeader().setForeground(new Color(255, 255, 255));
        table.getTableHeader().setFont(new Font("Segoe UI", Font.BOLD, 20));
        table.getTableHeader().setBackground(new Color(31,73,91));
        table.getTableHeader().setBorder(border);
        table.setRowHeight(25);
        
        JScrollPane bangsp = new JScrollPane(table);
        bangsp.setBounds(10, 400, 930, 280);
        bangsp.getVerticalScrollBar().setBackground(new Color(255,255,255));
        
        HangHoaBUS bus = new HangHoaBUS();
            bus.docDSSP();
            
        for (HangHoaDTO sp : HangHoaBUS.dssp) {
            Vector row = new Vector();
            row.add(sp.getMahang());
            row.add(sp.getMakho());
            row.add(sp.getTenhang());
            row.add(sp.getGia());
            row.add(sp.getDonvitinh());
            row.add(sp.getSoluong());
            model.addRow(row);
        }
        table.setModel(model);
        
        table.addMouseListener(new MouseAdapter() {

            @Override
            public void mouseClicked(MouseEvent e) {
                int i = table.getSelectedRow();
                if (i >= 0) {
                    String Ma = table.getValueAt(i, 0).toString();

                    HangHoaBUS bus = new HangHoaBUS();
                    HangHoaDTO sp = bus.getInfoRow(Ma);
                    txmahang.setText(sp.getMahang());
                    if (sp.getMakho().equals("MK1")) 
                    {
                        chonmakho.setSelectedIndex(1);
                    } 
                    else {
                        chonmakho.setSelectedIndex(2);
                    }
                    
                    txtenhang.setText(sp.getTenhang());
                    txgia.setText(String.valueOf(sp.getGia()));
                    txdonvitinh.setText(sp.getDonvitinh());
                    txsoluong.setText(String.valueOf(sp.getSoluong()));
                    
                    txmahang.setEditable(false);
               }
                
            }

            @Override
            public void mousePressed(MouseEvent e) {
               
            }

            @Override
            public void mouseReleased(MouseEvent e) {
              
            }

            @Override
            public void mouseEntered(MouseEvent e) {
            }

            @Override
            public void mouseExited(MouseEvent e) {
               
            }
         });
         
        
        TableRowSorter<TableModel> rowSorter = new TableRowSorter<>(table.getModel());
        table.setRowSorter(rowSorter);
        txtimkiem.getDocument().addDocumentListener(new DocumentListener() {

            @Override
            public void insertUpdate(DocumentEvent e) {
                try {
                    String text = txtimkiem.getText();
                    if (choice == 4 || choice == 6 ) { // theo số lượng hoac theo gia
                        if (text.trim().length() == 0) {
                            rowSorter.setRowFilter(null);
                        } else {
                            rowSorter.setRowFilter(RowFilter.regexFilter("^" + text + "$", choice));
                        }
                    }
                    if (choice != 4 && choice != 6) {
                        if (text.trim().length() == 0) {
                            rowSorter.setRowFilter(null);
                        } else {
                            rowSorter.setRowFilter(RowFilter.regexFilter("(?i)" + text, choice));
                        }
                    }
                } catch (NumberFormatException ex) {
                    JOptionPane.showMessageDialog(null, "Khi tìm kiếm theo giá buộc phải nhập số");
                }

            }

            @Override
            public void removeUpdate(DocumentEvent e) {

            }

            @Override
            public void changedUpdate(DocumentEvent e) {
                 
            }
        });
        
        
    //----------**** add các thành phần giao diện ở dưới này ***--------
        this.add(lbtop); 
        this.add(lbhanghoa);
        this.add(lbmahang);
        this.add(txmahang);
        this.add(lbmakho);
        this.add(lbtenhang);
        this.add(txtenhang);
        this.add(lbgia);
        this.add(txgia);
        this.add(lbdonvitinh);
        this.add(txdonvitinh);
        this.add(lbsoluong);
        this.add(txsoluong);
        this.add(them);
        this.add(sua);
        this.add(xoa);
        this.add(chonmakho);
        this.add(bangsp);
        this.add(reset);
    }
 public static void main(String[] args) {
        HangHoaGUI a=new HangHoaGUI();
            JFrame f=new JFrame();
            f.setSize(1500,800);
            f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            f.add(a);
            f.setVisible(true);
    }
    

}


