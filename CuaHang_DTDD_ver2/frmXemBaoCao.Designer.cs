namespace CuaHang_DTDD_ver2
{
    partial class frmXemBaoCao
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.rpvXemBaoCao = new Microsoft.Reporting.WinForms.ReportViewer();
            this.DataSetPhieuXuat = new CuaHang_DTDD_ver2.DataSetPhieuXuat();
            this.PhieuXuatBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.PhieuXuatTableAdapter = new CuaHang_DTDD_ver2.DataSetPhieuXuatTableAdapters.PhieuXuatTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.DataSetPhieuXuat)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.PhieuXuatBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // rpvXemBaoCao
            // 
            this.rpvXemBaoCao.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "dsChiTiet";
            reportDataSource1.Value = this.PhieuXuatBindingSource;
            this.rpvXemBaoCao.LocalReport.DataSources.Add(reportDataSource1);
            this.rpvXemBaoCao.LocalReport.ReportEmbeddedResource = "CuaHang_DTDD_ver2.rptHoaDon.rdlc";
            this.rpvXemBaoCao.Location = new System.Drawing.Point(0, 0);
            this.rpvXemBaoCao.Name = "rpvXemBaoCao";
            this.rpvXemBaoCao.Size = new System.Drawing.Size(704, 524);
            this.rpvXemBaoCao.TabIndex = 0;
            // 
            // DataSetPhieuXuat
            // 
            this.DataSetPhieuXuat.DataSetName = "DataSetPhieuXuat";
            this.DataSetPhieuXuat.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // PhieuXuatBindingSource
            // 
            this.PhieuXuatBindingSource.DataMember = "PhieuXuat";
            this.PhieuXuatBindingSource.DataSource = this.DataSetPhieuXuat;
            // 
            // PhieuXuatTableAdapter
            // 
            this.PhieuXuatTableAdapter.ClearBeforeFill = true;
            // 
            // frmXemBaoCao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(704, 524);
            this.Controls.Add(this.rpvXemBaoCao);
            this.Name = "frmXemBaoCao";
            this.Text = "frmXemBaoCao";
            this.Load += new System.EventHandler(this.frmXemBaoCao_Load);
            ((System.ComponentModel.ISupportInitialize)(this.DataSetPhieuXuat)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.PhieuXuatBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer rpvXemBaoCao;
        private System.Windows.Forms.BindingSource PhieuXuatBindingSource;
        private DataSetPhieuXuat DataSetPhieuXuat;
        private DataSetPhieuXuatTableAdapters.PhieuXuatTableAdapter PhieuXuatTableAdapter;
    }
}