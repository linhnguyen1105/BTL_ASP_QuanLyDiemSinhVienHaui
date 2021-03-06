﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Page/MasterPage.Master" AutoEventWireup="true" CodeBehind="TaiKhoanSinhVien.aspx.cs" Inherits="QuanLyDiemSinhVienHaui.Page.TaiKhoan.TaiKhoanSinhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Tài khoản sinh viên
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="title2" runat="server">
    TÀI KHOẢN SINH VIÊN
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main_content" runat="server">
    <div class="my-3 d-flex justify-content-between align-content-center">
        <div class="form-group" style="width: 350px; margin:0">
            <div class="form-group row m-0 align-items-center">
                <label for="" class="col-4 col-form-label">
                    <asp:Button CssClass="btn btn-primary" ID="btnTimKiem" Text="Tìm kiếm" runat="server" OnClick="btnTimKiem_Click" />
                </label>
                <div class="col-8 ">
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtKeyWord"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>

    <div class="tbl_render">
        <asp:GridView ID="dsSinhVien" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Mã SV" />
                <asp:BoundField DataField="name" HeaderText="Họ tên" />
                <asp:ImageField DataImageUrlField="avatar" HeaderText="Ảnh" ControlStyle-Width="50px"></asp:ImageField>
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="password" HeaderText="Password" />
                <asp:BoundField DataField="id_lop" HeaderText="Mã Lớp" />

                <asp:TemplateField HeaderText="Xóa" ItemStyle-CssClass="text-center" ItemStyle-Width="100px">
                    <ItemTemplate>
                        <asp:Button ID="xoa" CommandName="xoa" Text="Xóa TK"
                            CommandArgument='<%# Bind("id") %>' OnCommand="Xoa_click" runat="server"
                            OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?')" CssClass="btn btn-danger" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cập Nhật" ItemStyle-CssClass="text-center" ItemStyle-Width="100px">
                    <ItemTemplate>
                        <asp:Button ID="capnhat" CommandName="capnhat" Text="Cập nhật TK"
                            CommandArgument='<%# Bind("id") %>' OnCommand="CapNhat_click" runat="server"
                            CssClass="btn btn-primary" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
