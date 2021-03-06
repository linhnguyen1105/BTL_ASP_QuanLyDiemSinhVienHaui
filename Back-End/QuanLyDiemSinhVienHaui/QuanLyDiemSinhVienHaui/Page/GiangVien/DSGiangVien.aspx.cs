﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QuanLyDiemSinhVienHaui.DataUtil;
using QuanLyDiemSinhVienHaui.Modal;

namespace QuanLyDiemSinhVienHaui.Page.GiangVien
{
    public partial class DSGiangVien : System.Web.UI.Page
    {
        GiangVienDB giangVienDB = new GiangVienDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                hienThiDSGiangVien();
        }

        private void hienThiDSGiangVien()
        {
            dsGiangVien.DataSource = giangVienDB.getDSGiangVien();
            DataBind();
        }

        public void Xoa_click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                giangVienDB.xoaGV(id);
                hienThiDSGiangVien();
            }
        }
        public void Sua_click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Session["giangvien"] = giangVienDB.lay1GV(id);
                Response.Redirect("SuaGiangVien.aspx");
            }
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            string keyword = txtKeyWord.Text.Trim();
            if (keyword.Equals(""))
                hienThiDSGiangVien();
            else
            {
                dsGiangVien.DataSource = giangVienDB.timkiemGV(keyword);
                DataBind();
            }
        }
    }
}