using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class clsChiTietHDXuat_DTO
    {
        private string _MaHDXuat;
        private string _MaSP;
        private long _SoLuong;
        private long _DonGia;
        private long _GiaKM;




        public string MaHDXuat
        {
            get
            {
                return _MaHDXuat;
            }

            set
            {
                _MaHDXuat = value;
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

        public long GiaKM
        {
            get
            {
                return _GiaKM;
            }

            set
            {
                _GiaKM = value;
            }
        }
        public long ThanhTien
        {
            get
            {
                return ((SoLuong * DonGia) - (SoLuong * GiaKM));
            }
            set { }
        }
        
        public string TenSP
        {
            get; set;
        }
    }
}
