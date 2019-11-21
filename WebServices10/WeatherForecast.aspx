<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeatherForecast.aspx.cs" Inherits="WebServices10.WeatherForecast" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="font-family:Bahnschrift; border:1px solid black">
            <tr>
                <td>
                    <b>Zip Code</b>
                </td>
                <td>
                    <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                    <asp:Button ID="btnGetWeather" runat="server" Text="Get Weather" OnClick="btnGetWeather_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <b>City</b>
                </td>
                <td>
                    <asp:Label ID="lblCity" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <b>State :</b>
                </td>
                <td>
                    <asp:Label ID="lblState" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <b>WeatherStationCity</b>
                </td>
                <td>
                    <asp:Label ID="lblWeatherStationCity" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Temperature :</b>
                </td>
                <td>
                    <asp:Label ID="lblTemperature" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Wind :</b>
                </td>
                <td>
                    <asp:Label ID="lblWind" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblError" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
