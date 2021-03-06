﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Roles/Roles.master" AutoEventWireup="true" CodeFile="UsersAndRoles.aspx.cs" Inherits="Roles_UsersAndRoles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <p style="text-align: center">

        <asp:Label ID="ActionStatus" runat="server" CssClass="Important"></asp:Label>
    </p>

    <h3>Manage Roles By User</h3>

    <p>
        <b>Select a User:</b>
        <asp:DropDownList ID="UserList" runat="server" AutoPostBack="True"
            DataTextField="UserName" DataValueField="UserName" OnSelectedIndexChanged="UserList_SelectedIndexChanged">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Repeater ID="UsersRoleList" runat="server">
            <ItemTemplate>
                <asp:CheckBox runat="server" ID="RoleCheckBox"
                    AutoPostBack="true"
                    Text='<%# Container.DataItem %>'
                    OnCheckedChanged="RoleCheckBox_CheckChanged" />
                <br />
            </ItemTemplate>
        </asp:Repeater>
    </p>
    <h3>Manage Users By Role</h3>
    <p>
        <b>Select a Role:</b>

        <asp:DropDownList ID="RoleList" runat="server" AutoPostBack="true"></asp:DropDownList>
    </p>
    <p>
        <asp:GridView ID="RolesUserList" runat="server" AutoGenerateColumns="False"
            EmptyDataText="No users belong to this role." OnRowDeleting="RolesUserList_RowDeleting">
            <Columns>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                <asp:TemplateField HeaderText="Users">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="UserNameLabel"
                            Text='<%# Container.DataItem %>'></asp:Label>

                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </p>
    <p> 
     <b>UserName:</b> 
     <asp:TextBox ID="UserNameToAddToRole" runat="server"></asp:TextBox> 
     <br /> 
     <asp:Button ID="AddUserToRoleButton" runat="server" Text="Add User to Role" OnClick="AddUserToRoleButton_Click" /> 

</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>

