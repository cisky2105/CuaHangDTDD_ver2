using BUS;
using DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CuaHang_DTDD_ver2
{
    public partial class frmXemBaoCao : Form
    {
        public frmXemBaoCao()
        {
            InitializeComponent();
        }
        public string MaHDXuat { get; set; }
        private void frmXemBaoCao_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'DataSetPhieuXuat.PhieuXuat' table. You can move, or remove it, as needed.
            this.PhieuXuatTableAdapter.Fill(this.DataSetPhieuXuat.PhieuXuat,MaHDXuat);

            this.rpvXemBaoCao.RefreshReport();
        }

    }
}
