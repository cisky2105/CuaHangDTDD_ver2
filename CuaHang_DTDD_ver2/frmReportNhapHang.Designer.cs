namespace CuaHang_DTDD_ver2
{
    partial class frmReportNhapHang
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
            this.PhieuNhapBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.DataSetPhieuNhap = new CuaHang_DTDD_ver2.DataSetPhieuNhap();
            this.rpvNhapHang = new Microsoft.Reporting.WinForms.ReportViewer();
            this.HoaDonNhapBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.PhieuNhapTableAdapter = new CuaHang_DTDD_ver2.DataSetPhieuNhapTableAdapters.PhieuNhapTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.PhieuNhapBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSetPhieuNhap)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.HoaDonNhapBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // PhieuNhapBindingSource
            // 
            this.PhieuNhapBindingSource.DataMember = "PhieuNhap";
            this.PhieuNhapBindingSource.DataSource = this.DataSetPhieuNhap;
            // 
            // DataSetPhieuNhap
            // 
            this.DataSetPhieuNhap.DataSetName = "DataSetPhieuNhap";
            this.DataSetPhieuNhap.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // rpvNhapHang
            // 
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.PhieuNhapBindingSource;
            this.rpvNhapHang.LocalReport.DataSources.Add(reportDataSource1);
            this.rpvNhapHang.LocalReport.ReportEmbeddedResource = "CuaHang_DTDD_ver2.rptPhieuNhap.rdlc";
            this.rpvNhapHang.Location = new System.Drawing.Point(3, 2);
            this.rpvNhapHang.Margin = new System.Windows.Forms.Padding(2);
            this.rpvNhapHang.Name = "rpvNhapHang";
            this.rpvNhapHang.Size = new System.Drawing.Size(1109, 610);
            this.rpvNhapHang.TabIndex = 0;
            // 
            // HoaDonNhapBindingSource
            // 
            this.HoaDonNhapBindingSource.DataMember = "HoaDonNhap";
            // 
            // PhieuNhapTableAdapter
            // 
            this.PhieuNhapTableAdapter.ClearBeforeFill = true;
            // 
            // frmReportNhapHang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1112, 610);
            this.Controls.Add(this.rpvNhapHang);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "frmReportNhapHang";
            this.Text = "frmReportNhapHang";
            this.Load += new System.EventHandler(this.frmReportNhapHang_Load);
            ((System.ComponentModel.ISupportInitialize)(this.PhieuNhapBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSetPhieuNhap)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.HoaDonNhapBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer rpvNhapHang;
        private System.Windows.Forms.BindingSource HoaDonNhapBindingSource;        
        private System.Windows.Forms.BindingSource PhieuNhapBindingSource;
        private DataSetPhieuNhap DataSetPhieuNhap;
        private DataSetPhieuNhapTableAdapters.PhieuNhapTableAdapter PhieuNhapTableAdapter;
    }
}