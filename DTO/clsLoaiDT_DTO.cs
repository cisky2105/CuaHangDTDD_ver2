using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class clsLoaiDT_DTO
    {
        private string _maloaidt;
        private string _tenloaidt;
        private bool _trangthai;

        public string Maloaidt
        {
            get
            {
                return _maloaidt;
            }

            set
            {
                _maloaidt = value;
            }
        }

        public string Tenloaidt
        {
            get
            {
                return _tenloaidt;
            }

            set
            {
                _tenloaidt = value;
            }
        }

        public bool Trangthai
        {
            get
            {
                return _trangthai;
            }

            set
            {
                _trangthai = value;
            }
        }
    }
}
