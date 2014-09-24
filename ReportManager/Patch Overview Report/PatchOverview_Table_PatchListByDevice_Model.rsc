<?xml version="1.0" encoding="utf-8"?>
<ComponentItem xmlns:rdl="http://schemas.microsoft.com/sqlserver/reporting/2010/01/reportdefinition" xmlns:rd="http://schemas.microsoft.com/SQLServer/reporting/reportdesigner" Name="tbl_PatchOverview_PatchListByDevice" xmlns="http://schemas.microsoft.com/sqlserver/reporting/2010/01/componentdefinition">
  <Properties>
    <Property Name="Type">Tablix</Property>
    <Property Name="ThumbnailSource">iVBORw0KGgoAAAANSUhEUgAAAIIAAAAKCAYAAAB44IZIAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAADaSURBVFhH7ViBCcQgDDS/mHu4mQs4h5t9GyFFgl9pbFP0IwhKkrvkDFUKOeevs/HXCnjvHWAjpJRUhAghOC0uKugNThUxbyJBfbARPoQXY3Q46z1fc5+RXIir5mzhcb+e/6+cpHEjNc4Ua1+EmU7rgVzpi1Aa4QF8g5xIAbwaHDaC1tDkopre4NTS8w4e0qe8EQDgmHxf22g90uyI0eM4s0u4WzVQHhK8FWNKI+yddUy+r220HhECMXocZ3YJd6sGykOCt2KMvRFWPNWLNZX/CHjPXIwz9wUV2AAR35+bZwZyNwAAAABJRU5ErkJggg==</Property>
    <Property Name="ThumbnailMimeType">image/png</Property>
  </Properties>
  <RdlFragment>
    <rdl:Report>
      <rdl:AutoRefresh>0</rdl:AutoRefresh>
      <rdl:DataSources>
        <rdl:DataSource Name="Warehouse">
          <rdl:DataSourceReference>/Models/Warehouse</rdl:DataSourceReference>
          <rd:SecurityType>None</rd:SecurityType>
          <rd:DataSourceID>6a6a4f28-0906-4956-9287-c645f17638c6</rd:DataSourceID>
        </rdl:DataSource>
      </rdl:DataSources>
      <rdl:DataSets>
        <rdl:DataSet Name="dataSet">
          <rdl:Query>
            <rdl:DataSourceName>Warehouse</rdl:DataSourceName>
            <rdl:QueryParameters>
              <rdl:QueryParameter Name="Customer ID">
                <rdl:Value>=Parameters!Customer_ID.Value</rdl:Value>
              </rdl:QueryParameter>
            </rdl:QueryParameters>
            <rdl:CommandText>&lt;SemanticQuery xmlns="http://schemas.microsoft.com/sqlserver/2004/10/semanticmodeling" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:rb="http://schemas.microsoft.com/sqlserver/2004/11/reportbuilder" xmlns:qd="http://schemas.microsoft.com/sqlserver/2004/11/semanticquerydesign"&gt;
  &lt;Hierarchies&gt;
    &lt;Hierarchy&gt;
      &lt;BaseEntity&gt;
        &lt;!--Fact Cim Patch--&gt;
        &lt;EntityID&gt;Gfc762f98-86ac-4a59-a471-8cd35e688d3e&lt;/EntityID&gt;
      &lt;/BaseEntity&gt;
      &lt;Groupings&gt;
        &lt;Grouping Name="Device Name"&gt;
          &lt;Expression Name="Device Name"&gt;
            &lt;Path&gt;
              &lt;RolePathItem&gt;
                &lt;!--Device--&gt;
                &lt;RoleID&gt;G51832fe8-265c-4624-b55d-8d662498a6ef&lt;/RoleID&gt;
              &lt;/RolePathItem&gt;
            &lt;/Path&gt;
            &lt;AttributeRef&gt;
              &lt;!--Device Name--&gt;
              &lt;AttributeID&gt;Gc3c246ca-9339-4611-aaaa-690ae9b50d4f&lt;/AttributeID&gt;
            &lt;/AttributeRef&gt;
          &lt;/Expression&gt;
        &lt;/Grouping&gt;
        &lt;Grouping Name="Operating System"&gt;
          &lt;Expression Name="Operating System"&gt;
            &lt;Path&gt;
              &lt;RolePathItem&gt;
                &lt;!--Device--&gt;
                &lt;RoleID&gt;G51832fe8-265c-4624-b55d-8d662498a6ef&lt;/RoleID&gt;
              &lt;/RolePathItem&gt;
            &lt;/Path&gt;
            &lt;AttributeRef&gt;
              &lt;!--Operating System--&gt;
              &lt;AttributeID&gt;G3c76f36c-bf63-4687-bc11-e856e1128a1e&lt;/AttributeID&gt;
            &lt;/AttributeRef&gt;
          &lt;/Expression&gt;
        &lt;/Grouping&gt;
        &lt;Grouping Name="Fact Cim Patch"&gt;
          &lt;Expression Name="Fact Cim Patch"&gt;
            &lt;EntityRef&gt;
              &lt;!--Fact Cim Patch--&gt;
              &lt;EntityID&gt;Gfc762f98-86ac-4a59-a471-8cd35e688d3e&lt;/EntityID&gt;
            &lt;/EntityRef&gt;
          &lt;/Expression&gt;
          &lt;Details&gt;
            &lt;Expression Name="Patch"&gt;
              &lt;AttributeRef&gt;
                &lt;!--Description--&gt;
                &lt;AttributeID&gt;G0dc9cabe-474e-448f-8cb9-695f3c626523&lt;/AttributeID&gt;
              &lt;/AttributeRef&gt;
            &lt;/Expression&gt;
            &lt;Expression Name="expr1"&gt;
              &lt;Path&gt;
                &lt;RolePathItem&gt;
                  &lt;!--Device--&gt;
                  &lt;RoleID&gt;G51832fe8-265c-4624-b55d-8d662498a6ef&lt;/RoleID&gt;
                &lt;/RolePathItem&gt;
              &lt;/Path&gt;
              &lt;AttributeRef&gt;
                &lt;!--Device ID--&gt;
                &lt;AttributeID&gt;G6408a2ed-ed27-4df4-bee5-5c25dd32976c&lt;/AttributeID&gt;
              &lt;/AttributeRef&gt;
            &lt;/Expression&gt;
          &lt;/Details&gt;
        &lt;/Grouping&gt;
      &lt;/Groupings&gt;
      &lt;Filter&gt;
        &lt;Expression Name="expr2"&gt;
          &lt;Function&gt;
            &lt;FunctionName&gt;And&lt;/FunctionName&gt;
            &lt;Arguments&gt;
              &lt;Expression&gt;
                &lt;Function&gt;
                  &lt;FunctionName&gt;Equals&lt;/FunctionName&gt;
                  &lt;Arguments&gt;
                    &lt;Expression&gt;
                      &lt;Path&gt;
                        &lt;RolePathItem&gt;
                          &lt;!--Customer--&gt;
                          &lt;RoleID&gt;G2d795851-a185-45c8-99ce-2f3b8da0b93c&lt;/RoleID&gt;
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
              &lt;Expression&gt;
                &lt;Function&gt;
                  &lt;FunctionName&gt;And&lt;/FunctionName&gt;
                  &lt;Arguments&gt;
                    &lt;Expression&gt;
                      &lt;Function&gt;
                        &lt;FunctionName&gt;Equals&lt;/FunctionName&gt;
                        &lt;Arguments&gt;
                          &lt;Expression&gt;
                            &lt;Path&gt;
                              &lt;RolePathItem&gt;
                                &lt;!--Device--&gt;
                                &lt;RoleID&gt;G51832fe8-265c-4624-b55d-8d662498a6ef&lt;/RoleID&gt;
                              &lt;/RolePathItem&gt;
                            &lt;/Path&gt;
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
                                &lt;!--Device--&gt;
                                &lt;RoleID&gt;G51832fe8-265c-4624-b55d-8d662498a6ef&lt;/RoleID&gt;
                              &lt;/RolePathItem&gt;
                            &lt;/Path&gt;
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
                  &lt;/Arguments&gt;
                &lt;/Function&gt;
              &lt;/Expression&gt;
            &lt;/Arguments&gt;
          &lt;/Function&gt;
          &lt;CustomProperties&gt;
            &lt;CustomProperty Name="qd:Filter" /&gt;
            &lt;CustomProperty Name="qd:ContextEntityID"&gt;
              &lt;Value xsi:type="xsd:string"&gt;Gfc762f98-86ac-4a59-a471-8cd35e688d3e&lt;/Value&gt;
            &lt;/CustomProperty&gt;
            &lt;CustomProperty Name="qd:AutoChangeBaseEntity" /&gt;
            &lt;CustomProperty Name="qd:Design"&gt;
              &lt;Value xsi:type="xsd:string"&gt;expr3&lt;/Value&gt;
            &lt;/CustomProperty&gt;
          &lt;/CustomProperties&gt;
        &lt;/Expression&gt;
      &lt;/Filter&gt;
    &lt;/Hierarchy&gt;
  &lt;/Hierarchies&gt;
  &lt;Parameters&gt;
    &lt;Parameter Name="Customer ID"&gt;
      &lt;DataType&gt;Integer&lt;/DataType&gt;
    &lt;/Parameter&gt;
  &lt;/Parameters&gt;
&lt;/SemanticQuery&gt;</rdl:CommandText>
          </rdl:Query>
          <rdl:Fields>
            <rdl:Field Name="DeviceName">
              <rdl:DataField>Device Name</rdl:DataField>
            </rdl:Field>
            <rdl:Field Name="OperatingSystem">
              <rdl:DataField>Operating System</rdl:DataField>
            </rdl:Field>
            <rdl:Field Name="FactCimPatch">
              <rdl:DataField>Fact Cim Patch</rdl:DataField>
            </rdl:Field>
            <rdl:Field Name="Patch">
              <rdl:DataField>Patch</rdl:DataField>
            </rdl:Field>
            <rdl:Field Name="expr1">
              <rdl:DataField>expr1</rdl:DataField>
            </rdl:Field>
          </rdl:Fields>
        </rdl:DataSet>
      </rdl:DataSets>
      <rdl:ReportSections>
        <rdl:ReportSection>
          <rdl:Body>
            <rdl:ReportItems>
              <rdl:Tablix Name="tbl_PatchOverview_PatchListByDevice">
                <rdl:TablixBody>
                  <rdl:TablixColumns>
                    <rdl:TablixColumn>
                      <rdl:Width>1.58333in</rdl:Width>
                    </rdl:TablixColumn>
                    <rdl:TablixColumn>
                      <rdl:Width>1.70833in</rdl:Width>
                    </rdl:TablixColumn>
                    <rdl:TablixColumn>
                      <rdl:Width>4.20833in</rdl:Width>
                    </rdl:TablixColumn>
                  </rdl:TablixColumns>
                  <rdl:TablixRows>
                    <rdl:TablixRow>
                      <rdl:Height>0.25in</rdl:Height>
                      <rdl:TablixCells>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="DeviceName_Header">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:UserSort>
                                <rdl:SortExpression>=Fields!DeviceName.Value</rdl:SortExpression>
                                <rdl:SortExpressionScope>table_DeviceName</rdl:SortExpressionScope>
                              </rdl:UserSort>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>Device Name</rdl:Value>
                                      <rdl:Style>
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
                                <rdl:BackgroundColor>#666666</rdl:BackgroundColor>
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
                            <rdl:Textbox Name="OperatingSystem_Header">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:UserSort>
                                <rdl:SortExpression>=Fields!OperatingSystem.Value</rdl:SortExpression>
                                <rdl:SortExpressionScope>table_OperatingSystem</rdl:SortExpressionScope>
                              </rdl:UserSort>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>Operating System</rdl:Value>
                                      <rdl:Style>
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
                                <rdl:BackgroundColor>#666666</rdl:BackgroundColor>
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
                            <rdl:Textbox Name="Description_Header">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:UserSort>
                                <rdl:SortExpression>=Fields!Patch.Value</rdl:SortExpression>
                                <rdl:SortExpressionScope>table_FactCimPatch</rdl:SortExpressionScope>
                              </rdl:UserSort>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>Patch</rdl:Value>
                                      <rdl:Style>
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
                                <rdl:BackgroundColor>#666666</rdl:BackgroundColor>
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
                      <rdl:Height>0.19685in</rdl:Height>
                      <rdl:TablixCells>
                        <rdl:TablixCell>
                          <rdl:CellContents>
                            <rdl:Textbox Name="DeviceName_Value">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:HideDuplicates>table_DeviceName</rdl:HideDuplicates>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>=Fields!DeviceName.Value</rdl:Value>
                                      <rdl:Style>
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
                                          <rdl:Value>=DataSets!dataSet.RewrittenCommandText</rdl:Value>
                                        </rdl:Parameter>
                                        <rdl:Parameter Name="DrillthroughContext">
                                          <rdl:Value>=CreateDrillthroughContext()</rdl:Value>
                                        </rdl:Parameter>
                                      </rdl:Parameters>
                                    </rdl:Drillthrough>
                                  </rdl:Action>
                                </rdl:Actions>
                              </rdl:ActionInfo>
                              <rdl:DataElementName>DeviceName</rdl:DataElementName>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                </rdl:Border>
                                <rdl:BottomBorder>
                                  <rdl:Style>=Iif( RowNumber("table_DeviceName") = CountRows("table_DeviceName"), "Solid", Nothing)</rdl:Style>
                                </rdl:BottomBorder>
                                <rdl:LeftBorder>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:LeftBorder>
                                <rdl:RightBorder>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:RightBorder>
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
                            <rdl:Textbox Name="OperatingSystem_Value">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:HideDuplicates>table_OperatingSystem</rdl:HideDuplicates>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>=Fields!OperatingSystem.Value</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style />
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:DataElementName>OperatingSystem</rdl:DataElementName>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                </rdl:Border>
                                <rdl:BottomBorder>
                                  <rdl:Style>=Iif( RowNumber("table_OperatingSystem") = CountRows("table_OperatingSystem"), "Solid", Nothing)</rdl:Style>
                                </rdl:BottomBorder>
                                <rdl:LeftBorder>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:LeftBorder>
                                <rdl:RightBorder>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:RightBorder>
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
                            <rdl:Textbox Name="Description_Value">
                              <rdl:CanGrow>true</rdl:CanGrow>
                              <rdl:CanShrink>true</rdl:CanShrink>
                              <rdl:KeepTogether>true</rdl:KeepTogether>
                              <rdl:Paragraphs>
                                <rdl:Paragraph>
                                  <rdl:TextRuns>
                                    <rdl:TextRun>
                                      <rdl:Value>=Fields!Patch.Value</rdl:Value>
                                      <rdl:Style>
                                        <rdl:FontSize>8pt</rdl:FontSize>
                                        <rdl:Language>en-US</rdl:Language>
                                      </rdl:Style>
                                    </rdl:TextRun>
                                  </rdl:TextRuns>
                                  <rdl:Style>
                                    <rdl:TextAlign>Left</rdl:TextAlign>
                                  </rdl:Style>
                                </rdl:Paragraph>
                              </rdl:Paragraphs>
                              <rdl:DataElementName>PatchName</rdl:DataElementName>
                              <rdl:Style>
                                <rdl:Border>
                                  <rdl:Color>#c0c0c0</rdl:Color>
                                  <rdl:Style>Solid</rdl:Style>
                                </rdl:Border>
                                <rdl:VerticalAlign>Top</rdl:VerticalAlign>
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
                      <rdl:Group Name="table_DeviceName">
                        <rdl:GroupExpressions>
                          <rdl:GroupExpression>=Fields!DeviceName.Value</rdl:GroupExpression>
                        </rdl:GroupExpressions>
                      </rdl:Group>
                      <rdl:SortExpressions>
                        <rdl:SortExpression>
                          <rdl:Value>=Fields!DeviceName.Value</rdl:Value>
                        </rdl:SortExpression>
                      </rdl:SortExpressions>
                      <rdl:TablixMembers>
                        <rdl:TablixMember>
                          <rdl:Group Name="table_OperatingSystem">
                            <rdl:GroupExpressions>
                              <rdl:GroupExpression>=Fields!OperatingSystem.Value</rdl:GroupExpression>
                            </rdl:GroupExpressions>
                          </rdl:Group>
                          <rdl:SortExpressions>
                            <rdl:SortExpression>
                              <rdl:Value>=IIf(True, Fields!OperatingSystem.Value, Nothing)</rdl:Value>
                            </rdl:SortExpression>
                          </rdl:SortExpressions>
                          <rdl:TablixMembers>
                            <rdl:TablixMember>
                              <rdl:Group Name="table_FactCimPatch">
                                <rdl:GroupExpressions>
                                  <rdl:GroupExpression>=Fields!FactCimPatch.Value</rdl:GroupExpression>
                                </rdl:GroupExpressions>
                                <rdl:DataElementName>Detail</rdl:DataElementName>
                              </rdl:Group>
                              <rdl:SortExpressions>
                                <rdl:SortExpression>
                                  <rdl:Value>=Fields!Patch.Value</rdl:Value>
                                </rdl:SortExpression>
                                <rdl:SortExpression>
                                  <rdl:Value>=IIf(True, Fields!expr1.Value, Nothing)</rdl:Value>
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
                        </rdl:TablixMember>
                      </rdl:TablixMembers>
                    </rdl:TablixMember>
                  </rdl:TablixMembers>
                </rdl:TablixRowHierarchy>
                <rdl:NoRowsMessage>No data was found that matched your report criteria.</rdl:NoRowsMessage>
                <rdl:DataSetName>dataSet</rdl:DataSetName>
                <rdl:Top>1.52083in</rdl:Top>
                <rdl:Height>0.44685in</rdl:Height>
                <rdl:Width>7.49999in</rdl:Width>
                <rdl:ZIndex>4</rdl:ZIndex>
                <rdl:Style />
                <ComponentMetadata>
                  <ComponentId>ee3aab87-c315-4c75-b9b1-a5ccd1ad47be</ComponentId>
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
      <rd:ReportID>8511de92-0ddc-4460-9a51-e33d06bd32f4</rd:ReportID>
    </rdl:Report>
  </RdlFragment>
</ComponentItem>