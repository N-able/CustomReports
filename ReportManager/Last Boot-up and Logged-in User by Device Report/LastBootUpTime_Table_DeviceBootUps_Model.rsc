<?xml version="1.0" encoding="utf-8"?>
<ComponentItem xmlns:rdl="http://schemas.microsoft.com/sqlserver/reporting/2010/01/reportdefinition" xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner" Name="tbl_LastBootUp_DeviceBootUps" xmlns="http://schemas.microsoft.com/sqlserver/reporting/2010/01/componentdefinition">
  <Properties>
    <Property Name="Type">Tablix</Property>
    <Property Name="ThumbnailSource">iVBORw0KGgoAAAANSUhEUgAAAIIAAAALCAYAAACzvFXtAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAFQSURBVFhH7VjLDcIwDE2Ygg3YgGu7A3twYwpu7MEO7ZUN2IAtSh3JlWvl67pCColUUSXxe37PbijYYRgm08ZfO9B1nbHQCI/XaWXE83Y0l/tH3Zzr+W0ol49Hws1xtyQewvp1XqBJUyd6BJhLI8ANDmgAEA0jdI9rpYajmYhP4ykXn0/xcNwtTRzLsVS3Zl7A7asLrxP3KuXFqhH4iZAyXrq+R0drPymaOWpiaev0ngjSwra4OhxYvhr6vjfTlPfOaK3N3sttSsXy9dR+xJfG+coY48zNJ5QXzJdi0Bz3iB3H0b0jHDgRkPELBcD81uHDxznKU8pFMfbKUYJL9UriQ80a8zFUwxi/awQ8DeDTd+EeXJMKmn+hePFDvLmnFMWleiR5pnIsweRYGrnxWsS842vJRigR1/bW6YD7H6FOaU1VrgPuZXE+Ploj5DpW8b4vcxZMJh1GrtwAAAAASUVORK5CYII=</Property>
    <Property Name="ThumbnailMimeType">image/png</Property>
  </Properties>
  <RdlFragment>
    <rdl:Report>
      <rdl:AutoRefresh>0</rdl:AutoRefresh>
      <rdl:DataSources>
        <rdl:DataSource Name="Warehouse">
          <rdl:DataSourceReference>/Models/Warehouse</rdl:DataSourceReference>
          <rd:SecurityType>None</rd:SecurityType>
          <rd:DataSourceID>db4d4f6e-5b84-46e8-b10e-21cc09be374b</rd:DataSourceID>
        </rdl:DataSource>
      </rdl:DataSources>
      <rdl:DataSets>
        <rdl:DataSet Name="dsLastBootupTime">
          <rdl:Query>
            <rdl:DataSourceName>Warehouse</rdl:DataSourceName>
            <rdl:QueryParameters>
              <rdl:QueryParameter Name="Customer ID">
                <rdl:Value>=Parameters!Customer_ID.Value</rdl:Value>
              </rdl:QueryParameter>
            </rdl:QueryParameters>
            <rdl:CommandText>&lt;SemanticQuery xmlns="http://schemas.microsoft.com/sqlserver/2004/10/semanticmodeling" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:qd="http://schemas.microsoft.com/sqlserver/2004/11/semanticquerydesign" xmlns:rb="http://schemas.microsoft.com/sqlserver/2004/11/reportbuilder"&gt;
  &lt;Hierarchies&gt;
    &lt;Hierarchy&gt;
      &lt;BaseEntity&gt;
        &lt;!--Dim Device--&gt;
        &lt;EntityID&gt;G6c48e04d-491a-4ff0-804e-085c29cf12cd&lt;/EntityID&gt;
      &lt;/BaseEntity&gt;
      &lt;Groupings&gt;
        &lt;Grouping Name="Dim Device"&gt;
          &lt;Expression Name="Dim Device"&gt;
            &lt;EntityRef&gt;
              &lt;!--Dim Device--&gt;
              &lt;EntityID&gt;G6c48e04d-491a-4ff0-804e-085c29cf12cd&lt;/EntityID&gt;
            &lt;/EntityRef&gt;
          &lt;/Expression&gt;
          &lt;Details&gt;
            &lt;Expression Name="Device Name"&gt;
              &lt;AttributeRef&gt;
                &lt;!--Device Name--&gt;
                &lt;AttributeID&gt;Gc3c246ca-9339-4611-aaaa-690ae9b50d4f&lt;/AttributeID&gt;
              &lt;/AttributeRef&gt;
            &lt;/Expression&gt;
            &lt;Expression Name="Device Class"&gt;
              &lt;AttributeRef&gt;
                &lt;!--Device Class--&gt;
                &lt;AttributeID&gt;G499d8e79-97aa-4e2f-99b3-8de8ee21da3d&lt;/AttributeID&gt;
              &lt;/AttributeRef&gt;
            &lt;/Expression&gt;
            &lt;Expression Name="URI"&gt;
              &lt;AttributeRef&gt;
                &lt;!--URI--&gt;
                &lt;AttributeID&gt;Geac4b805-980d-467d-bbf6-a65eee8bace7&lt;/AttributeID&gt;
              &lt;/AttributeRef&gt;
            &lt;/Expression&gt;
            &lt;Expression Name="Domain"&gt;
              &lt;Path&gt;
                &lt;RolePathItem&gt;
                  &lt;!--Fact Cim Custom Last Loggedin User--&gt;
                  &lt;RoleID&gt;G2db2db6c-26be-4f5e-9071-b47b2cf077e5&lt;/RoleID&gt;
                &lt;/RolePathItem&gt;
              &lt;/Path&gt;
              &lt;AttributeRef&gt;
                &lt;!--Userdomain--&gt;
                &lt;AttributeID&gt;G3f8c8e33-27db-47a1-a861-468d47462b78&lt;/AttributeID&gt;
              &lt;/AttributeRef&gt;
            &lt;/Expression&gt;
            &lt;Expression Name="User"&gt;
              &lt;Path&gt;
                &lt;RolePathItem&gt;
                  &lt;!--Fact Cim Custom Last Loggedin User--&gt;
                  &lt;RoleID&gt;G2db2db6c-26be-4f5e-9071-b47b2cf077e5&lt;/RoleID&gt;
                &lt;/RolePathItem&gt;
              &lt;/Path&gt;
              &lt;AttributeRef&gt;
                &lt;!--Username--&gt;
                &lt;AttributeID&gt;G42d0ddd4-68cb-4a27-b987-9731e1a709fd&lt;/AttributeID&gt;
              &lt;/AttributeRef&gt;
            &lt;/Expression&gt;
            &lt;Expression Name="Lastbootuptime"&gt;
              &lt;Path&gt;
                &lt;RolePathItem&gt;
                  &lt;!--Fact Cim Operating System--&gt;
                  &lt;RoleID&gt;G3636dd53-1c8c-4d26-aeec-bac04fe09f92&lt;/RoleID&gt;
                &lt;/RolePathItem&gt;
              &lt;/Path&gt;
              &lt;AttributeRef&gt;
                &lt;!--Lastbootuptime--&gt;
                &lt;AttributeID&gt;Gd547abad-4a5e-434f-abc5-2c037a92bd1d&lt;/AttributeID&gt;
              &lt;/AttributeRef&gt;
            &lt;/Expression&gt;
            &lt;Expression Name="expr1"&gt;
              &lt;AttributeRef&gt;
                &lt;!--Data Source ID--&gt;
                &lt;AttributeID&gt;Gf907d3cf-a00b-471d-95b8-23e6b6dc8d17&lt;/AttributeID&gt;
              &lt;/AttributeRef&gt;
            &lt;/Expression&gt;
            &lt;Expression Name="expr2"&gt;
              &lt;AttributeRef&gt;
                &lt;!--N Central Device ID--&gt;
                &lt;AttributeID&gt;Ge896e2cc-9b85-4cec-9dd9-3e2799025c4c&lt;/AttributeID&gt;
              &lt;/AttributeRef&gt;
            &lt;/Expression&gt;
          &lt;/Details&gt;
        &lt;/Grouping&gt;
      &lt;/Groupings&gt;
      &lt;Filter&gt;
        &lt;Expression Name="expr3"&gt;
          &lt;Function&gt;
            &lt;FunctionName&gt;And&lt;/FunctionName&gt;
            &lt;Arguments&gt;
              &lt;Expression&gt;
                &lt;Function&gt;
                  &lt;FunctionName&gt;Equals&lt;/FunctionName&gt;
                  &lt;Arguments&gt;
                    &lt;Expression&gt;
                      &lt;AttributeRef&gt;
                        &lt;!--Is Managed Device Indicator--&gt;
                        &lt;AttributeID&gt;G5ec54c18-778f-4100-86ca-aaef449c61ed&lt;/AttributeID&gt;
                      &lt;/AttributeRef&gt;
                    &lt;/Expression&gt;
                    &lt;Expression&gt;
                      &lt;Literal&gt;
                        &lt;DataType&gt;String&lt;/DataType&gt;
                        &lt;Value&gt;Managed Device&lt;/Value&gt;
                      &lt;/Literal&gt;
                    &lt;/Expression&gt;
                  &lt;/Arguments&gt;
                &lt;/Function&gt;
                &lt;CustomProperties&gt;
                  &lt;CustomProperty Name="qd:FilterCondition" /&gt;
                &lt;/CustomProperties&gt;
              &lt;/Expression&gt;
              &lt;Expression&gt;
                &lt;Function&gt;
                  &lt;FunctionName&gt;And&lt;/FunctionName&gt;
                  &lt;Arguments&gt;
                    &lt;Expression&gt;
                      &lt;Function&gt;
                        &lt;FunctionName&gt;Equals&lt;/FunctionName&gt;
                        &lt;Arguments&gt;
                          &lt;Expression&gt;
                            &lt;AttributeRef&gt;
                              &lt;!--Status--&gt;
                              &lt;AttributeID&gt;Gedab4297-8300-435c-af1d-273f1fcf6db8&lt;/AttributeID&gt;
                            &lt;/AttributeRef&gt;
                          &lt;/Expression&gt;
                          &lt;Expression&gt;
                            &lt;Literal&gt;
                              &lt;DataType&gt;String&lt;/DataType&gt;
                              &lt;Value&gt;Active&lt;/Value&gt;
                            &lt;/Literal&gt;
                          &lt;/Expression&gt;
                        &lt;/Arguments&gt;
                      &lt;/Function&gt;
                      &lt;CustomProperties&gt;
                        &lt;CustomProperty Name="qd:FilterCondition" /&gt;
                      &lt;/CustomProperties&gt;
                    &lt;/Expression&gt;
                    &lt;Expression&gt;
                      &lt;Function&gt;
                        &lt;FunctionName&gt;Equals&lt;/FunctionName&gt;
                        &lt;Arguments&gt;
                          &lt;Expression&gt;
                            &lt;Path&gt;
                              &lt;RolePathItem&gt;
                                &lt;!--Customer--&gt;
                                &lt;RoleID&gt;G428c3d50-1f7b-4f85-8c7f-389b25e113e2&lt;/RoleID&gt;
                              &lt;/RolePathItem&gt;
                            &lt;/Path&gt;
                            &lt;AttributeRef&gt;
                              &lt;!--Customer ID--&gt;
                              &lt;AttributeID&gt;Gf3420693-a06b-418f-866a-12d5f8e79d7c&lt;/AttributeID&gt;
                            &lt;/AttributeRef&gt;
                          &lt;/Expression&gt;
                          &lt;Expression&gt;
                            &lt;ParameterRef&gt;
                              &lt;ParameterName&gt;Customer ID&lt;/ParameterName&gt;
                            &lt;/ParameterRef&gt;
                          &lt;/Expression&gt;
                        &lt;/Arguments&gt;
                      &lt;/Function&gt;
                      &lt;CustomProperties&gt;
                        &lt;CustomProperty Name="qd:FilterCondition" /&gt;
                      &lt;/CustomProperties&gt;
                    &lt;/Expression&gt;
                  &lt;/Arguments&gt;
                &lt;/Function&gt;
              &lt;/Expression&gt;
            &lt;/Arguments&gt;
          &lt;/Function&gt;
          &lt;CustomProperties&gt;
            &lt;CustomProperty Name="qd:Filter" /&gt;
            &lt;CustomProperty Name="qd:ContextEntityID"&gt;
              &lt;Value xsi:type="xsd:string"&gt;G6c48e04d-491a-4ff0-804e-085c29cf12cd&lt;/Value&gt;
            &lt;/CustomProperty&gt;
            &lt;CustomProperty Name="qd:AutoChangeBaseEntity" /&gt;
            &lt;CustomProperty Name="qd:Design"&gt;
              &lt;Value xsi:type="xsd:string"&gt;expr4&lt;/Value&gt;
            &lt;/CustomProperty&gt;
          &lt;/CustomProperties&gt;
        &lt;/Expression&gt;
      &lt;/Filter&gt;
    &lt;/Hierarchy&gt;
  &lt;/Hierarchies&gt;
  &lt;Parameters&gt;
    &lt;Parameter Name="Customer ID"&gt;
      &lt;DataType&gt;Integer&lt;/DataType&gt;
      &lt;Nullable&gt;true&lt;/Nullable&gt;
    &lt;/Parameter&gt;
  &lt;/Parameters&gt;
&lt;/SemanticQuery&gt;</rdl:CommandText>
          </rdl:Query>
          <rdl:Fields>
            <rdl:Field Name="DimDevice">
              <rdl:DataField>Dim Device</rdl:DataField>
              <rd:TypeName>System.String</rd:TypeName>
            </rdl:Field>
            <rdl:Field Name="DeviceName">
              <rdl:DataField>Device Name</rdl:DataField>
              <rd:TypeName>System.String</rd:TypeName>
            </rdl:Field>
            <rdl:Field Name="DeviceClass">
              <rdl:DataField>Device Class</rdl:DataField>
              <rd:TypeName>System.String</rd:TypeName>
            </rdl:Field>
            <rdl:Field Name="URI">
              <rdl:DataField>URI</rdl:DataField>
              <rd:TypeName>System.String</rd:TypeName>
            </rdl:Field>
            <rdl:Field Name="Domain">
              <rdl:DataField>Domain</rdl:DataField>
              <rd:TypeName>System.String</rd:TypeName>
            </rdl:Field>
            <rdl:Field Name="User">
              <rdl:DataField>User</rdl:DataField>
              <rd:TypeName>System.String</rd:TypeName>
            </rdl:Field>
            <rdl:Field Name="Lastbootuptime">
              <rdl:DataField>Lastbootuptime</rdl:DataField>
              <rd:TypeName>System.DateTime</rd:TypeName>
            </rdl:Field>
            <rdl:Field Name="expr1">
              <rdl:DataField>expr1</rdl:DataField>
              <rd:TypeName>System.Int64</rd:TypeName>
            </rdl:Field>
            <rdl:Field Name="expr2">
              <rdl:DataField>expr2</rdl:DataField>
              <rd:TypeName>System.Int64</rd:TypeName>
            </rdl:Field>
          </rdl:Fields>
        </rdl:DataSet>
      </rdl:DataSets>
      <rdl:ReportSections>
        <rdl:ReportSection>
          <rdl:Body>
            <rdl:ReportItems>
              <rdl:Tablix Name="tbl_LastBootUp_DeviceBootUps">
                <rdl:TablixBody>
                  <rdl:TablixColumns>
                    <rdl:TablixColumn>
                      <rdl:Width>1.5in</rdl:Width>
                    </rdl:TablixColumn>
                    <rdl:TablixColumn>
                      <rdl:Width>1.25in</rdl:Width>
                    </rdl:TablixColumn>
                    <rdl:TablixColumn>
                      <rdl:Width>1.05548in</rdl:Width>
                    </rdl:TablixColumn>
                    <rdl:TablixColumn>
                      <rdl:Width>1.07292in</rdl:Width>
                    </rdl:TablixColumn>
                    <rdl:TablixColumn>
                      <rdl:Width>1.13542in</rdl:Width>
                    </rdl:TablixColumn>
                    <rdl:TablixColumn>
                      <rdl:Width>1.19792in</rdl:Width>
                    </rdl:TablixColumn>
                  </rdl:TablixColumns>
                  <rdl:TablixRows>
                    <rdl:TablixRow>
                      <rdl:Height>0.25in</rdl:Height>
                      <rdl:TablixCells>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="txDeviceName_Header">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:UserSort>
                                <rdl:SortExpression>=Fields!DeviceName.Value</rdl:SortExpression>
                                <rdl:SortExpressionScope>grp_Device</rdl:SortExpressionScope>
                              </rdl:UserSort>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>Device Name</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontFamily>Tahoma</rdl:FontFamily>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:FontWeight>Bold</rdl:FontWeight>
                                        <rdl:Color>White</rdl:Color>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:Border>
                                <rdl:BackgroundColor>#528ae7</rdl:BackgroundColor>
                                <rdl:PaddingLeft>2pt</rdl:PaddingLeft>
                                <rdl:PaddingRight>2pt</rdl:PaddingRight>
                                <rdl:PaddingTop>2pt</rdl:PaddingTop>
                                <rdl:PaddingBottom>2pt</rdl:PaddingBottom>
                              </rdl:Style>
                            </rdl:Textbox>
                          </rdl:CellContents>
                        </rdl:TablixCell>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="txtDeviceClass_Header">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:UserSort>
                                <rdl:SortExpression>=Fields!DeviceClass.Value</rdl:SortExpression>
                                <rdl:SortExpressionScope>grp_Device</rdl:SortExpressionScope>
                              </rdl:UserSort>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>Device Class</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontFamily>Tahoma</rdl:FontFamily>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:FontWeight>Bold</rdl:FontWeight>
                                        <rdl:Color>White</rdl:Color>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:Border>
                                <rdl:BackgroundColor>#528ae7</rdl:BackgroundColor>
                                <rdl:PaddingLeft>2pt</rdl:PaddingLeft>
                                <rdl:PaddingRight>2pt</rdl:PaddingRight>
                                <rdl:PaddingTop>2pt</rdl:PaddingTop>
                                <rdl:PaddingBottom>2pt</rdl:PaddingBottom>
                              </rdl:Style>
                            </rdl:Textbox>
                          </rdl:CellContents>
                        </rdl:TablixCell>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="txtURI_Header">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:UserSort>
                                <rdl:SortExpression>=Fields!URI.Value</rdl:SortExpression>
                                <rdl:SortExpressionScope>grp_Device</rdl:SortExpressionScope>
                              </rdl:UserSort>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>URI</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontFamily>Tahoma</rdl:FontFamily>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:FontWeight>Bold</rdl:FontWeight>
                                        <rdl:Color>White</rdl:Color>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:Border>
                                <rdl:BackgroundColor>#528ae7</rdl:BackgroundColor>
                                <rdl:PaddingLeft>2pt</rdl:PaddingLeft>
                                <rdl:PaddingRight>2pt</rdl:PaddingRight>
                                <rdl:PaddingTop>2pt</rdl:PaddingTop>
                                <rdl:PaddingBottom>2pt</rdl:PaddingBottom>
                              </rdl:Style>
                            </rdl:Textbox>
                          </rdl:CellContents>
                        </rdl:TablixCell>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="txtUserdomain_Header">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:UserSort>
                                <rdl:SortExpression>=Fields!Domain.Value</rdl:SortExpression>
                                <rdl:SortExpressionScope>grp_Device</rdl:SortExpressionScope>
                              </rdl:UserSort>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>Domain</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontFamily>Tahoma</rdl:FontFamily>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:FontWeight>Bold</rdl:FontWeight>
                                        <rdl:Color>White</rdl:Color>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:Border>
                                <rdl:BackgroundColor>#528ae7</rdl:BackgroundColor>
                                <rdl:PaddingLeft>2pt</rdl:PaddingLeft>
                                <rdl:PaddingRight>2pt</rdl:PaddingRight>
                                <rdl:PaddingTop>2pt</rdl:PaddingTop>
                                <rdl:PaddingBottom>2pt</rdl:PaddingBottom>
                              </rdl:Style>
                            </rdl:Textbox>
                          </rdl:CellContents>
                        </rdl:TablixCell>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="txtUser_Header">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:UserSort>
                                <rdl:SortExpression>=Fields!User.Value</rdl:SortExpression>
                                <rdl:SortExpressionScope>grp_Device</rdl:SortExpressionScope>
                              </rdl:UserSort>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>User</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontFamily>Tahoma</rdl:FontFamily>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:FontWeight>Bold</rdl:FontWeight>
                                        <rdl:Color>White</rdl:Color>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:Border>
                                <rdl:BackgroundColor>#528ae7</rdl:BackgroundColor>
                                <rdl:PaddingLeft>2pt</rdl:PaddingLeft>
                                <rdl:PaddingRight>2pt</rdl:PaddingRight>
                                <rdl:PaddingTop>2pt</rdl:PaddingTop>
                                <rdl:PaddingBottom>2pt</rdl:PaddingBottom>
                              </rdl:Style>
                            </rdl:Textbox>
                          </rdl:CellContents>
                        </rdl:TablixCell>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="txtLastbootuptime_Header">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:UserSort>
                                <rdl:SortExpression>=Fields!Lastbootuptime.Value</rdl:SortExpression>
                                <rdl:SortExpressionScope>grp_Device</rdl:SortExpressionScope>
                              </rdl:UserSort>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>Last boot-up</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontFamily>Tahoma</rdl:FontFamily>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:FontWeight>Bold</rdl:FontWeight>
                                        <rdl:Color>White</rdl:Color>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:Border>
                                <rdl:BackgroundColor>#528ae7</rdl:BackgroundColor>
                                <rdl:PaddingLeft>2pt</rdl:PaddingLeft>
                                <rdl:PaddingRight>2pt</rdl:PaddingRight>
                                <rdl:PaddingTop>2pt</rdl:PaddingTop>
                                <rdl:PaddingBottom>2pt</rdl:PaddingBottom>
                              </rdl:Style>
                            </rdl:Textbox>
                          </rdl:CellContents>
                        </rdl:TablixCell>
                      </rdl:TablixCells>
                    </rdl:TablixRow>
                    <rdl:TablixRow>
                      <rdl:Height>0.25in</rdl:Height>
                      <rdl:TablixCells>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="txtDeviceName_Value">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>=Fields!DeviceName.Value</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontFamily>Tahoma</rdl:FontFamily>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:ActionInfo>
                                <rdl:Actions>
                                  <rdl:Action>
                                    <rdl:Drillthrough>
                                      <rdl:ReportName>=DataSources!Warehouse.DataSourceReference</rdl:ReportName>
                                      <rdl:Parameters>
                                        <rdl:Parameter Name="rs:EntityID">
                                          <rdl:Value>G6c48e04d-491a-4ff0-804e-085c29cf12cd</rdl:Value>
                                        </rdl:Parameter>
                                        <rdl:Parameter Name="rs:DrillType">
                                          <rdl:Value>Detail</rdl:Value>
                                        </rdl:Parameter>
                                        <rdl:Parameter Name="rs:Command">
                                          <rdl:Value>Drillthrough</rdl:Value>
                                        </rdl:Parameter>
                                        <rdl:Parameter Name="DrillthroughSourceQuery">
                                          <rdl:Value>=DataSets!dsLastBootupTime.RewrittenCommandText</rdl:Value>
                                        </rdl:Parameter>
                                        <rdl:Parameter Name="DrillthroughContext">
                                          <rdl:Value>=CreateDrillthroughContext()</rdl:Value>
                                        </rdl:Parameter>
                                      </rdl:Parameters>
                                    </rdl:Drillthrough>
                                  </rdl:Action>
                                </rdl:Actions>
                              </rdl:ActionInfo>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:Border>
                                <rdl:BackgroundColor>White</rdl:BackgroundColor>
                                <rdl:PaddingLeft>2pt</rdl:PaddingLeft>
                                <rdl:PaddingRight>2pt</rdl:PaddingRight>
                                <rdl:PaddingTop>2pt</rdl:PaddingTop>
                                <rdl:PaddingBottom>2pt</rdl:PaddingBottom>
                              </rdl:Style>
                            </rdl:Textbox>
                          </rdl:CellContents>
                        </rdl:TablixCell>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="txtDeviceClass_Value">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>=Fields!DeviceClass.Value</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontFamily>Tahoma</rdl:FontFamily>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                </rdl:Border>
                                <rdl:BottomBorder>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:BottomBorder>
                                <rdl:LeftBorder>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:LeftBorder>
                                <rdl:RightBorder>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:RightBorder>
                                <rdl:BackgroundColor>White</rdl:BackgroundColor>
                                <rdl:PaddingLeft>2pt</rdl:PaddingLeft>
                                <rdl:PaddingRight>2pt</rdl:PaddingRight>
                                <rdl:PaddingTop>2pt</rdl:PaddingTop>
                                <rdl:PaddingBottom>2pt</rdl:PaddingBottom>
                              </rdl:Style>
                            </rdl:Textbox>
                          </rdl:CellContents>
                        </rdl:TablixCell>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="txtURI_Value">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>=Fields!URI.Value</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontFamily>Tahoma</rdl:FontFamily>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:ActionInfo>
                                <rdl:Actions>
                                  <rdl:Action>
                                    <rdl:Drillthrough>
                                      <rdl:ReportName>=DataSources!Warehouse.DataSourceReference</rdl:ReportName>
                                      <rdl:Parameters>
                                        <rdl:Parameter Name="rs:EntityID">
                                          <rdl:Value>G6c48e04d-491a-4ff0-804e-085c29cf12cd</rdl:Value>
                                        </rdl:Parameter>
                                        <rdl:Parameter Name="rs:DrillType">
                                          <rdl:Value>Detail</rdl:Value>
                                        </rdl:Parameter>
                                        <rdl:Parameter Name="rs:Command">
                                          <rdl:Value>Drillthrough</rdl:Value>
                                        </rdl:Parameter>
                                        <rdl:Parameter Name="DrillthroughSourceQuery">
                                          <rdl:Value>=DataSets!dsLastBootupTime.RewrittenCommandText</rdl:Value>
                                        </rdl:Parameter>
                                        <rdl:Parameter Name="DrillthroughContext">
                                          <rdl:Value>=CreateDrillthroughContext()</rdl:Value>
                                        </rdl:Parameter>
                                      </rdl:Parameters>
                                    </rdl:Drillthrough>
                                  </rdl:Action>
                                </rdl:Actions>
                              </rdl:ActionInfo>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:Border>
                                <rdl:BackgroundColor>White</rdl:BackgroundColor>
                                <rdl:PaddingLeft>2pt</rdl:PaddingLeft>
                                <rdl:PaddingRight>2pt</rdl:PaddingRight>
                                <rdl:PaddingTop>2pt</rdl:PaddingTop>
                                <rdl:PaddingBottom>2pt</rdl:PaddingBottom>
                              </rdl:Style>
                            </rdl:Textbox>
                          </rdl:CellContents>
                        </rdl:TablixCell>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="txtUserdomain_Value">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>=Fields!Domain.Value</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontFamily>Tahoma</rdl:FontFamily>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:Border>
                                <rdl:BackgroundColor>White</rdl:BackgroundColor>
                                <rdl:PaddingLeft>2pt</rdl:PaddingLeft>
                                <rdl:PaddingRight>2pt</rdl:PaddingRight>
                                <rdl:PaddingTop>2pt</rdl:PaddingTop>
                                <rdl:PaddingBottom>2pt</rdl:PaddingBottom>
                              </rdl:Style>
                            </rdl:Textbox>
                          </rdl:CellContents>
                        </rdl:TablixCell>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="txtUser_Value">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>=Fields!User.Value</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontFamily>Tahoma</rdl:FontFamily>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:Border>
                                <rdl:BackgroundColor>White</rdl:BackgroundColor>
                                <rdl:PaddingLeft>2pt</rdl:PaddingLeft>
                                <rdl:PaddingRight>2pt</rdl:PaddingRight>
                                <rdl:PaddingTop>2pt</rdl:PaddingTop>
                                <rdl:PaddingBottom>2pt</rdl:PaddingBottom>
                              </rdl:Style>
                            </rdl:Textbox>
                          </rdl:CellContents>
                        </rdl:TablixCell>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="txtLastbootuptime_Value">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>=Fields!Lastbootuptime.Value</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontFamily>Tahoma</rdl:FontFamily>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:Format>g</rdl:Format>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:Border>
                                <rdl:BackgroundColor>White</rdl:BackgroundColor>
                                <rdl:PaddingLeft>2pt</rdl:PaddingLeft>
                                <rdl:PaddingRight>2pt</rdl:PaddingRight>
                                <rdl:PaddingTop>2pt</rdl:PaddingTop>
                                <rdl:PaddingBottom>2pt</rdl:PaddingBottom>
                              </rdl:Style>
                            </rdl:Textbox>
                          </rdl:CellContents>
                        </rdl:TablixCell>
                      </rdl:TablixCells>
                    </rdl:TablixRow>
                  </rdl:TablixRows>
                </rdl:TablixBody>
                <rdl:TablixColumnHierarchy>
                  <rdl:TablixMembers>
                    <rdl:TablixMember />
                    <rdl:TablixMember />
                    <rdl:TablixMember />
                    <rdl:TablixMember />
                    <rdl:TablixMember />
                    <rdl:TablixMember />
                  </rdl:TablixMembers>
                </rdl:TablixColumnHierarchy>
                <rdl:TablixRowHierarchy>
                  <rdl:TablixMembers>
                    <rdl:TablixMember>
                      <rdl:FixedData>true</rdl:FixedData>
                      <rdl:KeepWithGroup>After</rdl:KeepWithGroup>
                      <rdl:RepeatOnNewPage>true</rdl:RepeatOnNewPage>
                      <rdl:KeepTogether>true</rdl:KeepTogether>
                    </rdl:TablixMember>
                    <rdl:TablixMember>
                      <rdl:Group Name="grp_Device">
                        <rdl:GroupExpressions>
                          <rdl:GroupExpression>=Fields!DimDevice.Value</rdl:GroupExpression>
                        </rdl:GroupExpressions>
                        <rdl:DataElementName>Detail</rdl:DataElementName>
                      </rdl:Group>
                      <rdl:SortExpressions>
                        <rdl:SortExpression>
                          <rdl:Value>=Fields!DeviceName.Value</rdl:Value>
                        </rdl:SortExpression>
                        <rdl:SortExpression>
                          <rdl:Value>=IIf(True, Fields!expr1.Value, Nothing)</rdl:Value>
                          <rdl:Direction>Descending</rdl:Direction>
                        </rdl:SortExpression>
                        <rdl:SortExpression>
                          <rdl:Value>=IIf(True, Fields!expr2.Value, Nothing)</rdl:Value>
                          <rdl:Direction>Descending</rdl:Direction>
                        </rdl:SortExpression>
                      </rdl:SortExpressions>
                      <rdl:TablixMembers>
                        <rdl:TablixMember />
                      </rdl:TablixMembers>
                      <rdl:DataElementName>Detail_Collection</rdl:DataElementName>
                      <rdl:DataElementOutput>Output</rdl:DataElementOutput>
                      <rdl:KeepTogether>true</rdl:KeepTogether>
                    </rdl:TablixMember>
                  </rdl:TablixMembers>
                </rdl:TablixRowHierarchy>
                <rdl:NoRowsMessage>No data was found that matched your report criteria.</rdl:NoRowsMessage>
                <rdl:DataSetName>dsLastBootupTime</rdl:DataSetName>
                <rdl:Top>1.85417in</rdl:Top>
                <rdl:Left>0.125in</rdl:Left>
                <rdl:Height>0.5in</rdl:Height>
                <rdl:Width>7.21174in</rdl:Width>
                <rdl:ZIndex>3</rdl:ZIndex>
                <rdl:Style />
                <ComponentMetadata>
                  <ComponentId>19326c48-347c-43a1-8917-3af879487f30</ComponentId>
                </ComponentMetadata>
              </rdl:Tablix>
            </rdl:ReportItems>
            <rdl:Height>0in</rdl:Height>
            <rdl:Style />
          </rdl:Body>
          <rdl:Width>0in</rdl:Width>
          <rdl:Page>
            <rdl:Style />
          </rdl:Page>
        </rdl:ReportSection>
      </rdl:ReportSections>
      <rdl:ReportParameters>
        <rdl:ReportParameter Name="Customer_ID">
          <rdl:DataType>String</rdl:DataType>
          <rdl:Prompt>Customer:</rdl:Prompt>
        </rdl:ReportParameter>
      </rdl:ReportParameters>
      <rd:ReportUnitType>Invalid</rd:ReportUnitType>
      <rd:ReportID>52c40695-3783-40e0-ae29-5de8a7b8367c</rd:ReportID>
    </rdl:Report>
  </RdlFragment>
</ComponentItem>