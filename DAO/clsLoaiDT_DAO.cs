using DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class clsLoaiDT_DAO
    {
        public List<clsLoaiDT_DTO> DanhSachLoaiDT()
        {
            List<clsLoaiDT_DTO> lsResult = new List<clsLoaiDT_DTO>();
            string strQuery = "Select * From LoaiSP Where TrangThai = 1";
            SqlConnection conn = DataProvider.TaoKetNoi();
            SqlDataReader sdr = DataProvider.TruyVanDuLieu(strQuery, conn);
            while (sdr.Read())
            {
                clsLoaiDT_DTO _loaidto = new clsLoaiDT_DTO();
                _loaidto.Maloaidt = sdr["MaLoaiDT"].ToString();
                _loaidto.Tenloaidt = sdr["TenLoaiDT"].ToString();
                _loaidto.Trangthai = bool.Parse(sdr["TrangThai"].ToString());
                lsResult.Add(_loaidto);
            }
            sdr.Close();
            conn.Close();
            return lsResult;

        }
    }
}
