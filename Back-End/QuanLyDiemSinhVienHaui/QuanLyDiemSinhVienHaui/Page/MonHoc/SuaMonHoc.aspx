﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Page/MasterPage.Master" AutoEventWireup="true" CodeBehind="SuaMonHoc.aspx.cs" Inherits="QuanLyDiemSinhVienHaui.SuaMonHoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sửa môn học
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="title2" runat="server">
    SỬA MÔN HỌC
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="main_content" runat="server">
    <div class="form-group" style="width: 450px; margin: 0 auto">
        <div class="form-group row">
            <label for="" class="col-4 col-form-label">Mã môn:</label>
            <div class="col-8">
                <asp:TextBox CssClass="form-control" Enabled="false" runat="server" ID="txtMaMon"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-4 col-form-label">Tên môn:</label>
            <div class="col-8">
                <asp:TextBox CssClass="form-control" runat="server" ID="txtTenMon"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-4 col-form-label">Số tín chỉ:</label>
            <div class="col-8">
                <asp:TextBox CssClass="form-control" runat="server" ID="txtSoTinChi"></asp:TextBox>
            </div>
        </div>
        <div class="form-group row">
            <label for="" class="col-4 col-form-label">Mô tả:</label>
            <div class="col-8">
                <asp:TextBox CssClass="form-control" runat="server" ID="txtMoTa"></asp:TextBox>
            </div>
        </div>
        <div class="d-flex justify-content-around">
            <asp:Button CssClass="btn btn-primary mt-3 px-5" ID="CapNhat" Text="Cập nhật" runat="server" OnClick="CapNhat_Click" />
            <asp:Button CssClass="btn btn-dark mt-3 px-5" ID="QuayLai" PostBackUrl="~/Page/MonHoc/DSMonHoc.aspx" Text="Quay lại" runat="server" />
        </div>
        <div class="text-center mt-5">
            <asp:Label ID="msg" runat="server" Font-Bold="true"></asp:Label>
        </div>
    </div>
</asp:Content>
