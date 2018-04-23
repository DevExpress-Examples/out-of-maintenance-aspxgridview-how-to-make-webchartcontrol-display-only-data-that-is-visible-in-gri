<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxCallbackPanel" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Xpo.v14.1.Web, Version=14.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Xpo" TagPrefix="dxxpo" %>

<%@ Register Assembly="DevExpress.XtraCharts.v14.1.Web, Version=14.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v14.1, Version=14.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" ClientInstanceName="chart"
                Height="261px" Width="1016px">
                <seriesserializable>
                    <cc1:Series  Name="Series 1"
                      ArgumentDataMember="ProductName" ValueDataMembersSerializable="UnitPrice">
                        <ViewSerializable>
                            <cc1:LineSeriesView hiddenserializablestring="to be serialized"></cc1:LineSeriesView>
                        </ViewSerializable>
                        <LabelSerializable>
                            <cc1:PointSeriesLabel hiddenserializablestring="to be serialized" linevisible="True">
                            </cc1:PointSeriesLabel>
                        </LabelSerializable>
                        <PointOptionsSerializable>
                            <cc1:PointOptions hiddenserializablestring="to be serialized"></cc1:PointOptions>
                        </PointOptionsSerializable>
                        <LegendPointOptionsSerializable>
                            <cc1:PointOptions hiddenserializablestring="to be serialized"></cc1:PointOptions>
                        </LegendPointOptionsSerializable>
                    </cc1:Series>
                </seriesserializable>
                <seriestemplate>
                    <PointOptionsSerializable>
                        <cc1:PointOptions HiddenSerializableString="to be serialized">
                        </cc1:PointOptions>
                    </PointOptionsSerializable>
                    <LabelSerializable>
                        <cc1:SideBySideBarSeriesLabel HiddenSerializableString="to be serialized" LineVisible="True">
                        </cc1:SideBySideBarSeriesLabel>
                    </LabelSerializable>
                    <LegendPointOptionsSerializable>
                        <cc1:PointOptions HiddenSerializableString="to be serialized">
                        </cc1:PointOptions>
                    </LegendPointOptionsSerializable>
                    <ViewSerializable>
                        <cc1:SideBySideBarSeriesView HiddenSerializableString="to be serialized">
                        </cc1:SideBySideBarSeriesView>
                    </ViewSerializable>
                </seriestemplate>
                <diagramserializable>
                    <cc1:XYDiagram>
                        <axisx visibleinpanesserializable="-1">
                            <Label Angle="45"></Label>
                            <Range SideMarginsEnabled="True"></Range>
                        </axisx>
                        <axisy visibleinpanesserializable="-1">
                            <Range SideMarginsEnabled="True"></Range>
                        </axisy>
                    </cc1:XYDiagram>
                </diagramserializable>
                <fillstyle>
                    <OptionsSerializable>
                        <cc1:SolidFillOptions HiddenSerializableString="to be serialized" />
                    </OptionsSerializable>
                </fillstyle>
            </dxchartsui:WebChartControl>
            <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" Width="1015px" AutoGenerateColumns="False" DataSourceID="XpoDataSource1" KeyFieldName="ProductID" EnableCallBacks="false">
                <Settings ShowGroupPanel="true" ShowFilterRow="true" />
                <Columns>
                    <dxwgv:GridViewCommandColumn VisibleIndex="0">
                        <EditButton Visible="True">
                        </EditButton>
                    </dxwgv:GridViewCommandColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="1">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataCheckColumn FieldName="Discontinued" Visible="False">
                    </dxwgv:GridViewDataCheckColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="EAN13" Visible="False">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="2">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="3">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="QuantityPerUnit" Visible="False">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="4">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="5">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="6">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="7">
                    </dxwgv:GridViewDataTextColumn>
                    <dxwgv:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="8">
                    </dxwgv:GridViewDataTextColumn>
                </Columns>
                <SettingsPager PageSize="15">
                </SettingsPager>
            </dxwgv:ASPxGridView>

        </div>
        <dxxpo:XpoDataSource ID="XpoDataSource1" runat="server" ServerMode="True" TypeName="nwind.Products">
        </dxxpo:XpoDataSource>
    </form>
</body>
</html>