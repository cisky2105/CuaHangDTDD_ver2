using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class clsChiTietHDNhap_DTO
    {
        private string _MaHDNhap;
        private string _MaSP;
        private long _SoLuong;
        private long _DonGia;
        public long ThanhTien { get; set; }
        public string MaHDNhap
        {
            get
            {
                return _MaHDNhap;
            }

            set
            {
                _MaHDNhap = value;
            }
        }

        public string MaSP
        {
            get
            {
                return _MaSP;
            }

            set
            {
                _MaSP = value;
            }
        }

        public long SoLuong
        {
            get
            {
                return _SoLuong;
            }

            set
            {
                _SoLuong = value;
            }
        }

        public long DonGia
        {
            get
            {
                return _DonGia;
            }

            set
            {
                _DonGia = value;
            }
        }
    }
}
