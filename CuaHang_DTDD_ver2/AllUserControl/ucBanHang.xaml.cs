﻿using BUS;
using DTO;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CuaHang_DTDD_ver2.AllUserControl
{
    /// <summary>
    /// Interaction logic for ucBanHang.xaml
    /// </summary>
    public partial class ucBanHang : UserControl
    {
        public ucBanHang()
        {
            InitializeComponent();
        }
        private clsNhanVien_DTO _nvdto;
        public clsNhanVien_DTO Nvdnto
        {
            get { return _nvdto; }
            set { _nvdto = value; }
        }
        List<clsSanPham_DTO> _lsSanPham = new List<clsSanPham_DTO>();
        List<clsKhachHang_DTO> _lsKhachHang = new List<clsKhachHang_DTO>();
        clsKhachHang_BUS _khBUS = new clsKhachHang_BUS();
        clsSanPham_BUS _sp_BUS = new clsSanPham_BUS();
        clsSanPham_DTO _spChon = null;
        List<clsChiTietHDXuat_DTO> _lsChiTiet = new List<clsChiTietHDXuat_DTO>();
        clsHoaDonXuat_DTO _hoaDon = null;
        clsHoaDonXuat_BUS _hdBUS = new clsHoaDonXuat_BUS();
        clsChiTietHDXuat_BUS _cthdBUS = new clsChiTietHDXuat_BUS();
        string strPath = @"C:\Users\namop\Desktop\QLCHDTDD\CuaHang_DTDD_ver2\bin\Debug\images\";
        List<clsNhaSanXuat_DTO> _lsNhaSanXuat = new List<clsNhaSanXuat_DTO>();
        List<clsLoaiDT_DTO> _lsLoaiDT = new List<clsLoaiDT_DTO>();
        clsNhaSanXuat_BUS _nsx_BUS = new clsNhaSanXuat_BUS();
        clsLoaiDT_BUS _loaiDT_BUS = new clsLoaiDT_BUS();
        List<clsNhanVien_DTO> _lsNhanVien = new List<clsNhanVien_DTO>();
        clsNhanVien_BUS _nv_BUS = new clsNhanVien_BUS();

        private void txtTimTenSP_TextChanged(object sender, TextChangedEventArgs e)
        {
            lvwSanPham.Items.Clear();
            _lsSanPham = _sp_BUS.DanhSachSanPhamTheoTen(txtTimTenSP.Text);
            foreach (var item in _lsSanPham)
            {
                lvwSanPham.Items.Add(item);
            }
        }


        private void lvwSanPham_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (lvwSanPham.SelectedItems.Count > 0)
            {
                _spChon = (clsSanPham_DTO)lvwSanPham.SelectedItems[0];
            }
            else
                _spChon = null;
            BindingChiTiet();
        }

        private void StackPanel_Loaded(object sender, RoutedEventArgs e)
        {
            btnTruSLM.IsEnabled = false;
            btnXoaSLM.IsEnabled = false;
            txtMaHDXuat.Text = _hdBUS.LayMaTiepTheo();
            txtMaHDXuat.IsEnabled = false;
            txtTenSP.IsEnabled = false;
            txtSLTonKho.IsEnabled = false;
            txtGiaKM.IsEnabled = false;
            txtGiaBan.IsEnabled = false;
            cboNhanVien.IsEnabled = false;
            cboLoaiDT.IsEnabled = false;
            cboNSX.IsEnabled = false;
            txtTongTien.IsEnabled = false;
            btnTinhTien.IsEnabled = false;
            btnResetPhieu.IsEnabled = false;
            LoadDanhSachDienThoai();
            LoadDanhSachNhanVien();
            LoadDanhSachNhaSanXuat();
            LoadDanhSachLoaiDienThoai();
        }

        private void LoadDanhSachLoaiDienThoai()
        {
            _lsLoaiDT = _loaiDT_BUS.DanhSachLoaiDT();
            cboLoaiDT.ItemsSource = _lsLoaiDT;
        }

        private void LoadDanhSachNhaSanXuat()
        {
            _lsNhaSanXuat = _nsx_BUS.DanhSachNhaSanXuat();
            cboNSX.ItemsSource = _lsNhaSanXuat;
        }

        private void LoadDanhSachNhanVien()
        {
            _lsNhanVien = _nv_BUS.DanhSachNhanVien();

            clsNhanVien_DTO nvdangnhap = new clsNhanVien_DTO();
            cboNhanVien.ItemsSource = _lsNhanVien;
            cboNhanVien.SelectedValue = Nvdnto.CMNDNV;
        }

        private void BindingChiTiet()
        {
            if (_spChon != null)
            {
                txtMaSP.Text = _spChon.MaSP;
                txtTenSP.Text = _spChon.TenSP;
                txtSLTonKho.Text = _spChon.SLTonKho.ToString();
                txtGiaBan.Text = _spChon.GiaBan.ToString();
                txtGiaKM.Text = _spChon.GiaKM.ToString();
                cboNSX.SelectedValue = _spChon.MaNSX;
                cboLoaiDT.SelectedValue = _spChon.MaLoaiDT;
                if (File.Exists(strPath + _spChon.HinhAnh))
                {
                    string path = strPath + _spChon.HinhAnh;
                    imgHinhAnh.Source = new BitmapImage(new Uri(path));
                }
                else
                {
                    imgHinhAnh.Source = null;
                }
            }
        }


        private void LoadDanhSachDienThoai()
        {
            lvwSanPham.Items.Clear();
            _lsSanPham = _sp_BUS.DanhSachSanPham();
            foreach (var item in _lsSanPham)
            {
                lvwSanPham.Items.Add(item);
            }
            _lsNhaSanXuat = _nsx_BUS.DanhSachNhaSanXuat();
            _lsLoaiDT = _loaiDT_BUS.DanhSachLoaiDT();

            cboNSX.ItemsSource = _lsNhaSanXuat;
            cboLoaiDT.ItemsSource = _lsLoaiDT;
        }

        private void btnTimSanPham_Click(object sender, RoutedEventArgs e)
        {
            _spChon = _lsSanPham.Find(o => o.MaSP == txtMaSP.Text);
            if (_spChon == null)
            {
                MessageBox.Show("Không Tồn Tại SP .");
            }
            BindingChiTiet();
        }

        private void btnTruSLM_Click(object sender, RoutedEventArgs e)
        {
            if (_spChon != null)
            {
                //Tìm xem sp đã được thêm chưa
                clsChiTietHDXuat_DTO _cthd = (clsChiTietHDXuat_DTO)dgvChiTietHoaDon.SelectedItem;
                if (_cthd != null) //Đã tồn tại
                {
                    int _slGiamLD = int.Parse(txtSLM.Text);
                    if (_slGiamLD > 0)
                    {
                        _cthd.SoLuong -= int.Parse(txtSLM.Text);
                        txtSLM.Text = "1";
                        if (_cthd.SoLuong <= 0)
                        {
                            MessageBox.Show("Số Lượng Sản Phẩm Đã Được Xóa Hết .");
                            _lsChiTiet.Remove(_cthd);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Số Lượng Giảm Phải Lớn Hơn Số 0 .");
                        txtSLM.Text = "1";
                    }
                    
                }
                else
                {
                    MessageBox.Show("Chưa Chọn Sản Phẩm Trong Danh Sách Để GIẢM Số Lượng .");
                }
                txtTongTien.Text = _lsChiTiet.Sum(o => o.ThanhTien).ToString();
                dgvChiTietHoaDon.ItemsSource = null;
                dgvChiTietHoaDon.ItemsSource = _lsChiTiet;
            }
        }

        private void btnCongSLM_Click(object sender, RoutedEventArgs e)
        {
            if (_spChon != null)
            {
                btnTruSLM.IsEnabled = true;
                btnXoaSLM.IsEnabled = true;
                btnResetPhieu.IsEnabled = true;
                //Tìm xem sp đã được thêm chưa
                clsChiTietHDXuat_DTO _cthd = _lsChiTiet.Find(o => o.MaSP == _spChon.MaSP);
                int _slTon = int.Parse(_spChon.SLTonKho.ToString());
                int _slMuaLD = int.Parse(txtSLM.Text);
                if (_cthd != null) //Đã tồn tại
                {
                    if (_slMuaLD <= _slTon)
                    {
                        _cthd.SoLuong += int.Parse(txtSLM.Text);
                        txtSLM.Text = "1";
                        if (_cthd.SoLuong > _slTon)
                        {
                            MessageBox.Show("Số Sản Phẩm Cửa Hàng Chỉ Còn Lại : " + _spChon.SLTonKho.ToString() + " Sản Phẩm ! Vui Lòng Nhập Lại .");
                            txtSLM.Text = "1";
                            _cthd.SoLuong = _slTon;
                        }
                    }
                    else
                    {
                        MessageBox.Show("Số Sản Phẩm Mua Vượt Quá Số Sản Phẩm Của Cửa Hàng !  Vui Lòng Nhập Lại .");
                        txtSLM.Text = "1";
                    }

                }
                else
                {
                    _cthd = new clsChiTietHDXuat_DTO();
                    _cthd.MaSP = _spChon.MaSP;
                    _cthd.SoLuong = int.Parse(txtSLM.Text);
                    _cthd.TenSP = _spChon.TenSP;
                    _cthd.DonGia = (int)_spChon.GiaBan;
                    _cthd.GiaKM = (int)_spChon.GiaKM;
                    if (_cthd.SoLuong > _slTon)
                    {
                        MessageBox.Show("Số Sản Phẩm Cửa Hàng Chỉ Còn Lại : " + _spChon.SLTonKho.ToString() + " Sản Phẩm ! Vui Lòng Nhập Lại .");
                        txtSLM.Text = "1";

                    }
                    else
                    {
                        _lsChiTiet.Add(_cthd);
                    }

                }   
                txtTongTien.Text = _lsChiTiet.Sum(o => o.ThanhTien).ToString();
                dgvChiTietHoaDon.ItemsSource = null;
                dgvChiTietHoaDon.ItemsSource = _lsChiTiet;
            }
            else
            {
                btnTruSLM.IsEnabled = false;
                btnXoaSLM.IsEnabled = false;
                btnResetPhieu.IsEnabled = false;
            }
        }

        private void btnXoaSLM_Click(object sender, RoutedEventArgs e)
        {
            if (_spChon != null)
            {
                if (dgvChiTietHoaDon.SelectedItems.Count > 0)
                {
                    clsChiTietHDXuat_DTO _ctchon = (clsChiTietHDXuat_DTO)dgvChiTietHoaDon.SelectedItem;
                    MessageBoxResult mbr = MessageBox.Show("Bạn Có Muốn Xóa Sản Phẩm Khỏi Danh Sách ???", "THÔNG BÁO", MessageBoxButton.YesNo, MessageBoxImage.Question); ;

                    if (mbr == MessageBoxResult.Yes)
                    {
                        _lsChiTiet.Remove(_ctchon);
                        txtTongTien.Text = _lsChiTiet.Sum(o => o.ThanhTien).ToString();
                        dgvChiTietHoaDon.ItemsSource = null;
                        dgvChiTietHoaDon.ItemsSource = _lsChiTiet;
                    }
                }
                else
                {
                    MessageBox.Show("Chưa Chọn Sản Phẩm Trong Danh Sách Để XÓA .");
                }
            }
        }
        frmXemBaoCao f = new frmXemBaoCao();

        private void btnLuuPhieu_Click(object sender, RoutedEventArgs e)
        {
            if (txtSDTKH.Text != "")
            {
                if (_lsChiTiet.Count > 0)
                {
                    _lsKhachHang = _khBUS.DanhSachKhachHangTheoSDT(txtSDTKH.Text);
                    _hoaDon = new clsHoaDonXuat_DTO();
                    if (_lsKhachHang.Count > 0)
                    {

                    }
                    else
                    {
                        try
                        {
                            clsKhachHang_DTO khdto = new clsKhachHang_DTO();
                            khdto.SDTKH = txtSDTKH.Text;
                            khdto.TenKH = "NoName";
                            khdto.GioiTinh = false;
                            khdto.DiaChi = "NoExpress";
                            khdto.Email = "NoName@gmail.com";

                            _khBUS.ThemKhachHang(khdto);
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message);
                        }
                        //neu khong them
                    }
                    _hoaDon.MaHDXuat = _hdBUS.LayMaTiepTheo();
                    _hoaDon.SDTKH = txtSDTKH.Text;
                    _hoaDon.CMNDNV = int.Parse(cboNhanVien.SelectedValue.ToString());
                    _hoaDon.TongTien = _lsChiTiet.Sum(o => o.ThanhTien);
                    _hoaDon.NgayXuat = DateTime.Now;
                    try
                    {
                        if (_hdBUS.LuuHoaDon(_hoaDon))
                        {
                            foreach (clsChiTietHDXuat_DTO _cthd in _lsChiTiet)
                            {
                                _cthd.MaHDXuat = _hoaDon.MaHDXuat;
                                f.MaHDXuat = _cthd.MaHDXuat;
                                _cthdBUS.LuuChiTietHoaDon(_cthd);
                            }
                            MessageBox.Show("Lưu Hóa Đơn Thành Công .");
                            btnTinhTien.IsEnabled = true;
                        }
                        else
                        {
                            MessageBox.Show("Tạo Hóa Đơn Không Thành Công .");
                        }

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message);
                    }


                }
                else
                {
                    MessageBox.Show("Không Có Sản Phẩm Nào Để Tạo Hóa Đơn .");
                }
            }
            else
            {
                MessageBox.Show("Bạn Chưa Nhập Số Điện Thoại Khách Hàng .");
            }

        }

        private void btnTinhTien_Click(object sender, RoutedEventArgs e)
        {
            if (_hoaDon != null)
            {
                f.ShowDialog();
                _lsChiTiet = new List<clsChiTietHDXuat_DTO>();
                dgvChiTietHoaDon.ItemsSource = _lsChiTiet;
                txtTimTenSP.Clear();
                txtMaSP.Clear();
                txtTenSP.Clear();
                txtGiaBan.Clear();
                txtGiaKM.Clear();
                txtSLTonKho.Clear();
                txtTongTien.Clear();
                cboNSX.SelectedValue = -1;
                cboLoaiDT.SelectedValue = -1;
                //txtSDTKH.Clear();
                imgHinhAnh.Source = null;
                lvwSanPham.Items.Clear();
                StackPanel_Loaded(sender, e);
            }
        }

        private void btnResetPhieu_Click(object sender, RoutedEventArgs e)
        {
            _lsChiTiet.Clear();
            _hoaDon = null;
            txtTongTien.Text = "0";
            dgvChiTietHoaDon.ItemsSource = null;
            MessageBox.Show("Đã Reset Hóa Đơn Thành Công .");
            btnTruSLM.IsEnabled = false;
            btnXoaSLM.IsEnabled = false;
            btnResetPhieu.IsEnabled = false;
            _spChon = null;
            txtTimTenSP.Clear();
            txtMaSP.Clear();
            txtTenSP.Clear();
            txtGiaBan.Clear();
            txtGiaKM.Clear();
            txtSLTonKho.Clear();
            txtTongTien.Clear();
            cboNSX.SelectedValue = -1;
            cboLoaiDT.SelectedValue = -1;
            txtSDTKH.Clear();
            imgHinhAnh.Source = null;
            lvwSanPham.Items.Clear();
            StackPanel_Loaded(sender, e);
        }

        private void txtSLM_KeyDown(object sender, KeyEventArgs e)
        {
            bool laSo = true; // code tham khảo
            if (e.Key < Key.D0 || e.Key > Key.D9)
            {
                if (e.Key < Key.NumPad0 || e.Key > Key.NumPad9)
                {
                    if (e.Key != Key.Back)
                    {
                        laSo = false;
                    }

                }

            }

            if (!laSo)
            {
                MessageBox.Show("Hãy Nhập Số Vào Ô Số Lượng Mua .");
                e.Handled = true;
            }
        }

        private void txtSDTKH_KeyDown(object sender, KeyEventArgs e)
        {
            bool laSo = true; // code tham khảo
            if (e.Key < Key.D0 || e.Key > Key.D9)
            {
                if (e.Key < Key.NumPad0 || e.Key > Key.NumPad9)
                {
                    if (e.Key != Key.Back)
                    {
                        laSo = false;
                    }

                }

            }

            if (!laSo)
            {
                MessageBox.Show("Hãy Nhập Số Điện Thoại Đúng .");
                e.Handled = true;
            }
        }

       
    }
}
