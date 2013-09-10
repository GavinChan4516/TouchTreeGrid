{
    "xdsVersion": "2.2.2",
    "frameworkVersion": "touch22",
    "internals": {
        "type": "Ext.Container",
        "reference": {
            "name": "items",
            "type": "array"
        },
        "codeClass": null,
        "userConfig": {
            "backMonths": 3,
            "forwardMonths": 3,
            "columns": [
                "[{dataIndex: \"dow0\", width: \"14.285%\", addDataIndexToDiv: true, css: \"{[this.cls_renderer_dates('dow0', values)]}\", renderer: \"this.renderer_dates('dow0', values)\"}, \r",
                "{dataIndex: \"dow1\", width: \"14.285%\", addDataIndexToDiv: true, css: \"{[this.cls_renderer_dates('dow1', values)]}\", renderer: \"this.renderer_dates('dow1', values)\"}, \r",
                "{dataIndex: \"dow2\", width: \"14.285%\", addDataIndexToDiv: true, css: \"{[this.cls_renderer_dates('dow2', values)]}\", renderer: \"this.renderer_dates('dow2', values)\"}, \r",
                "{dataIndex: \"dow3\", width: \"14.285%\", addDataIndexToDiv: true, css: \"{[this.cls_renderer_dates('dow3', values)]}\", renderer: \"this.renderer_dates('dow3', values)\"}, \r",
                "{dataIndex: \"dow4\", width: \"14.285%\", addDataIndexToDiv: true, css: \"{[this.cls_renderer_dates('dow4', values)]}\", renderer: \"this.renderer_dates('dow4', values)\"}, \r",
                "{dataIndex: \"dow5\", width: \"14.285%\", addDataIndexToDiv: true, css: \"{[this.cls_renderer_dates('dow5', values)]}\", renderer: \"this.renderer_dates('dow5', values)\"}, \r",
                "{dataIndex: \"dow6\", width: \"14.285%\", addDataIndexToDiv: true, css: \"{[this.cls_renderer_dates('dow6', values)]}\", renderer: \"this.renderer_dates('dow6', values)\"}]"
            ],
            "categColumns": [
                "[\r",
                "    {dataIndex: \"month\", width: \"100%\", categCss: \"calendarpicker-month\", renderer: \"this.renderer_month(values)\"}\r",
                "]"
            ],
            "renderers": [
                "{renderer_month: function (values)\r",
                "   {return values.month + ' ' + values.year;},\r",
                " renderer_dates: function (fldName, values) {\r",
                "   var elem=values[fldName];\r",
                "   return elem;},\r",
                " cls_renderer_dates: function (fldName, values)\r",
                " {var cls=\"\", dt, sel, hol, dis, par = this.scope.parent, cust;\r",
                "  dt = values['dt_'+fldName];\r",
                "  hol = values['isHoliday_'+fldName];\r",
                "  dis = values['isDisabled_'+fldName];\r",
                "  cust = values['customCls_'+fldName];\r",
                "\r",
                "  if (values.rowType === 'H') {\r",
                "     cls = cls + ' calendarpicker-header';}  \r",
                "  else if (Ext.isEmpty(dt)) {} // do nothing for empty dates\r",
                "  else {\r",
                "     sel = (par.getSelDtArr().indexOf(Ext.Date.format(dt, 'Y-m-d'))>-1);\r",
                "     if (Ext.Date.format(dt, 'w')==='0' || Ext.Date.format(dt, 'w')==='6') {\r",
                "       cls = cls+' calendarpicker-weekend';\r",
                "     }   \r",
                "     if (hol){cls = cls+' calendarpicker-holiday';}\r",
                "     if (!Ext.isEmpty(cust)) {cls = cls + ' ' + cust;}\r",
                "     if (!Ext.isEmpty(this.scope.todayDt)){\r",
                "       if (this.scope.todayDt === Ext.Date.format(dt, 'Y-m-d')) {\r",
                "          cls = cls+' calendarpicker-today';\r",
                "       }\r",
                "     }     \r",
                "     if (dis){cls = cls+' calendarpicker-disabled';}\r",
                "     if (sel){cls = cls+' calendarpicker-selected';}\r",
                "  }\r",
                " \r",
                " return (\"calendarpicker-days\" + cls);\r",
                " }}"
            ],
            "title": "Select Date",
            "selDtArr": [
                "[]"
            ],
            "lastSelectedDate": "",
            "holidayDtArr": [
                "[]"
            ],
            "disableWeekends": false,
            "disableHolidays": false,
            "disableFutureDates": false,
            "disablePastDates": false,
            "disableDtArr": [
                "[]"
            ],
            "customDtArr": [
                "[]"
            ],
            "includeFooter": true,
            "singleExpand": false,
            "disableExpandCollapse": false,
            "variableHeights": false,
            "categDepthColors": true,
            "customExpCollapseEvent": "monthExpCollapse",
            "defaultCollapseLevel": 99,
            "categDepthColorsArr": [
                "[\"transparent\",\"transparent\",\"transparent\"]"
            ],
            "itemHeight": 32,
            "selectMode": "SINGLE",
            "comments": [
                "[\"selectMode = MULTI, SINGLE, RANGE, NONE\"]"
            ],
            "filter": [
                "{}"
            ],
            "reverseSort": false,
            "customFooterItems": [
                "{\r",
                "xtype: 'segmentedbutton',\r",
                "itemId : 'pickerfooterbtns',\r",
                "docked : 'right',\r",
                "items: [\r",
                "{\r",
                "xtype: 'button',\r",
                "text: 'DONE',\r",
                "iconCls: '',\r",
                "cls: 'pickerfooterbtns',\r",
                "listeners : {\r",
                " tap: function (button, e, options) {\r",
                "       this.up('calendarpicker').customBtns('DONE');\r",
                "     }\r",
                " }\r",
                "},\r",
                "{\r",
                "xtype: 'button',\r",
                "text: 'Clear',\r",
                "cls: 'pickerfooterbtns',\r",
                "listeners : {\r",
                " tap: function (button, e, options) {\r",
                "       this.up('calendarpicker').customBtns('CLEAR');\r",
                "      }\r",
                " }\r",
                "},\r",
                "{\r",
                "xtype: 'button',\r",
                "text: 'Cancel',\r",
                "iconCls: '',\r",
                "cls: 'pickerfooterbtns',\r",
                "listeners : {\r",
                " tap: function (button, e, options) {\r",
                "       this.up('calendarpicker').customBtns('CANCEL');\r",
                "      }\r",
                " }\r",
                "}\r",
                "]\r",
                "}"
            ],
            "includeCustomFooterItems": false,
            "returnItem": [
                "{}"
            ],
            "customCls": [
                "[]"
            ],
            "useIconsForExpCollapse": true,
            "autoCollapseMonthsPriorToMinSelDt": false,
            "hideTitleBar": false,
            "autoExpandMonthsWithSelDates": true,
            "footerDock": "bottom",
            "hideExpandCollapseBtns": false,
            "enableQuickDaySelection": false,
            "customDateTypes": [
                "[\r",
                "{customType: 'default', \r",
                " customDescr: 'Custom', \r",
                " useCustomDtArr: true, \r",
                " storeId: null, \r",
                " priority: 1, \r",
                " disabled: false, \r",
                " cls: 'customDates-default'}\r",
                "]"
            ],
            "includeCustomDatesLegend": false,
            "allowMonthAdditions": false,
            "monthsToInsert": 3,
            "monthsToAppend": 3,
            "monthsToAppendText": "Append more Months...",
            "monthsToInsertPullText": "Pull to Insert Months...",
            "monthsToInsertRefreshText": "Release to Insert Months...",
            "expandCurrentMonth": true,
            "monthNodeHeightInPixels": 32,
            "cls": [
                "x-touchtreegrid-list-calendar"
            ],
            "itemId": "calendarpicker",
            "designer|userClassName": "CalendarPicker",
            "designer|userAlias": "calendarpicker",
            "hideOnMaskTap": false,
            "layout": "fit",
            "modal": false
        },
        "configAlternates": {
            "backMonths": "number",
            "forwardMonths": "number",
            "columns": "array",
            "categColumns": "array",
            "renderers": "object",
            "selDtArr": "array",
            "lastDeSelectedDate": "object",
            "holidayDtArr": "array",
            "disableWeekends": "boolean",
            "disableHolidays": "boolean",
            "disableFutureDates": "boolean",
            "disablePastDates": "boolean",
            "disableDtArr": "array",
            "customDtArr": "array",
            "includeFooter": "boolean",
            "singleExpand": "boolean",
            "disableExpandCollapse": "boolean",
            "variableHeights": "boolean",
            "categDepthColors": "boolean",
            "defaultCollapseLevel": "number",
            "categDepthColorsArr": "array",
            "itemHeight": "number",
            "comments": "array",
            "filter": "object",
            "reverseSort": "boolean",
            "customFooterItems": "object",
            "includeCustomFooterItems": "boolean",
            "useArrowsForExpCollapse": "boolean",
            "closeOnSingleSelect": "boolean",
            "returnItem": "object",
            "addCls": "array",
            "customCls": "array",
            "useIconsForExpCollapse": "boolean",
            "autoCollapseMonthsPriorToMinSelDt": "boolean",
            "hideTitleBar": "boolean",
            "autoExpandMonthsWithSelDates": "boolean",
            "disableSelection": "boolean",
            "disableCalendarSelection": "boolean",
            "hideExpandCollapseBtns": "boolean",
            "disableDaySelection": "boolean",
            "enableQuickDaySelection": "boolean",
            "customDateTypes": "array",
            "includeCustomDatesLegend": "boolean",
            "allowMonthAdditions": "boolean",
            "monthsToAdd": "number",
            "monthsToInsert": "number",
            "monthsToAppend": "number",
            "expandCurrentMonth": "boolean",
            "monthNodeHeightInPixels": "number"
        },
        "customConfigs": [
            {
                "group": "(Custom Properties)",
                "name": "backMonths",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "forwardMonths",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "columns",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "categColumns",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "renderers",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "title",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "selDtArr",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "lastSelectedDate",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "holidayDtArr",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "disableWeekends",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "disableHolidays",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "disableFutureDates",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "disablePastDates",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "disableDtArr",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "customDtArr",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "includeFooter",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "singleExpand",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "disableExpandCollapse",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "variableHeights",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "categDepthColors",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "customExpCollapseEvent",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "defaultCollapseLevel",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "categDepthColorsArr",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "itemHeight",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "selectMode",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "comments",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "filter",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "reverseSort",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "customFooterItems",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "includeCustomFooterItems",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "returnItem",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "customCls",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "useIconsForExpCollapse",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "autoCollapseMonthsPriorToMinSelDt",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "hideTitleBar",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "autoExpandMonthsWithSelDates",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "footerDock",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "hideExpandCollapseBtns",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "enableQuickDaySelection",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "customDateTypes",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "includeCustomDatesLegend",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "allowMonthAdditions",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "monthsToInsert",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "monthsToAppend",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "monthsToAppendText",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "monthsToInsertPullText",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "monthsToInsertRefreshText",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "expandCurrentMonth",
                "type": "string"
            },
            {
                "group": "(Custom Properties)",
                "name": "monthNodeHeightInPixels",
                "type": "string"
            }
        ],
        "cn": [
            {
                "type": "Ext.Toolbar",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "cls": [
                        "calendarpicker-toolbar"
                    ],
                    "docked": "top",
                    "itemId": "calendarpicker-toolbar",
                    "ui": "plain",
                    "title": ""
                }
            },
            {
                "type": "Ext.Container",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "cls": [
                        "calendarpicker-legend"
                    ],
                    "docked": "top",
                    "html": "",
                    "itemId": "calendarpicker-legend"
                }
            },
            {
                "type": "Ext.Container",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "store": "",
                    "displayField": null,
                    "listScrollable": [
                        "true"
                    ],
                    "headerItemTpl": null,
                    "contentItemTpl": "",
                    "useAnimation": null,
                    "list": [
                        "{}"
                    ],
                    "headerItemOuter": null,
                    "headerItemData": null,
                    "disableSelection": true,
                    "listStyle": null,
                    "onItemDisclosure": false,
                    "columns": [
                        "[]"
                    ],
                    "header": [
                        "{\r",
                        "            xtype: 'toolbar',\r",
                        "            docked: 'top',\r",
                        "            cls: 'touchtreegrid-header',\r",
                        "            maxHeight: '1.8em',\r",
                        "            minHeight: '1.8em'\r",
                        "        }"
                    ],
                    "headerTpl": "",
                    "variableHeights": false,
                    "itemHeight": 32,
                    "disclosureProperty": "disclose",
                    "listItemId": "calendarlist",
                    "categItemTpl": "",
                    "footer": [
                        "{\r",
                        "            xtype: 'toolbar',\r",
                        "            docked: 'bottom',\r",
                        "            ui     : 'light',\r",
                        "            cls: 'touchtreegrid-footer',\r",
                        "    itemId: 'calendarFooter'\r",
                        "        }"
                    ],
                    "includeFooter": true,
                    "plugins": null,
                    "listPlugins": [
                        "{}"
                    ],
                    "categIndentPct": "0",
                    "colNumberToTruncateForIndents": 1,
                    "includeFooterLevels": true,
                    "categDepthColors": true,
                    "categDepthColorsArr": [
                        "[\"transparent\",\"transparent\",\"transparent\"]"
                    ],
                    "customExpCollapseEvent": null,
                    "renderers": [
                        "{}"
                    ],
                    "categDepthColorButtons": true,
                    "pressedBtnCls": null,
                    "useCustomPressedBtnCls": null,
                    "categItemTplOverride": "",
                    "contentItemTplOverride": "",
                    "headerTplOverride": "",
                    "includeHeader": false,
                    "applyDefaultCollapseLevel": true,
                    "defaultCollapseLevel": 1,
                    "landscapeIcon": "",
                    "helpHtml": "",
                    "pressedCls": "touchtreegrid-item-pressed",
                    "simpleList": false,
                    "columnSorting": false,
                    "styleContentRow": null,
                    "styleCategRow": "",
                    "styleHeaderRow": "",
                    "singleExpand": false,
                    "additionalListConfigs": [
                        "{}"
                    ],
                    "selectedCls": "touchtreegrid-item-selected",
                    "mode": "SINGLE",
                    "useSimpleItems": true,
                    "infinite": true,
                    "arrowPctWidth": "0",
                    "customColumnSortEvent": null,
                    "disableExpandCollapse": false,
                    "categColumns": [
                        "[]"
                    ],
                    "categCssArr": [
                        "[]"
                    ],
                    "cssContentRow": "css-content-row{[values.rowType === 'H' ? ' calendarpicker-header-rowtype' : '']}",
                    "cssCategRow": "css-categ-row",
                    "cssHeaderRow": "css-header-row",
                    "customFooterItems": [
                        "{}"
                    ],
                    "includeCustomFooterItems": false,
                    "footerDock": "bottom",
                    "hideExpandCollapseBtns": false,
                    "cls": [
                        "x-touchtreegrid-list",
                        "x-touchtreegrid-list-calendar"
                    ],
                    "itemId": "calendar",
                    "designer|createAlias": "touchtreegrid",
                    "layout": "vbox",
                    "scrollable": null
                },
                "configAlternates": {
                    "listScrollable": "object",
                    "defaultExpanded": "boolean",
                    "useAnimation": "boolean",
                    "disableSelection": "boolean",
                    "listStyle": "object",
                    "onItemDisclosure": "boolean",
                    "headerItemData": "array",
                    "columns": "array",
                    "header": "object",
                    "variableHeights": "boolean",
                    "itemHeight": "number",
                    "footer": "object",
                    "includeFooter": "boolean",
                    "list": "object",
                    "plugins": "object",
                    "listPlugins": "object",
                    "colNumberToTruncateForIndents": "number",
                    "includeFooterLevels": "boolean",
                    "categDepthColors": "boolean",
                    "categDepthColorsArr": "array",
                    "renderers": "object",
                    "categDepthColorButtons": "boolean",
                    "useCustomPressedBtnCls": "boolean",
                    "includeHeader": "boolean",
                    "autoApplyCollapseConfig": "boolean",
                    "applyDefaultCollapseLevel": "boolean",
                    "defaultCollapseLevel": "number",
                    "simpleList": "boolean",
                    "headerSorting": "boolean",
                    "columnSorting": "boolean",
                    "singleExpand": "boolean",
                    "additionalListConfigs": "object",
                    "useSimpleItems": "boolean",
                    "infinite": "boolean",
                    "scrollable": "object",
                    "disableExpandCollapse": "boolean",
                    "categColumns": "array",
                    "categCssArr": "array",
                    "customFooterItems": "object",
                    "includeCustomFooterItems": "boolean",
                    "dockFooterAboveHeader": "boolean",
                    "hideExpandCollapseBtns": "boolean"
                },
                "customConfigs": [
                    {
                        "group": "(Custom Properties)",
                        "name": "store",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "displayField",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "listScrollable",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "headerItemTpl",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "contentItemTpl",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "useAnimation",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "list",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "headerItemOuter",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "headerItemInner",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "headerItemData",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "disableSelection",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "listStyle",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "onItemDisclosure",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "columns",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "header",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "headerTpl",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "variableHeights",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "itemHeight",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "disclosureProperty",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "listItemId",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "categItemTpl",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "footer",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "includeFooter",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "plugins",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "listPlugins",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "categIndentPct",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "colNumberToTruncateForIndents",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "includeFooterLevels",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "categDepthColors",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "categDepthColorsArr",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "customExpCollapseEvent",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "renderers",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "categDepthColorButtons",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "pressedBtnCls",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "useCustomPressedBtnCls",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "categItemTplOverride",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "contentItemTplOverride",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "headerTplOverride",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "includeHeader",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "applyDefaultCollapseLevel",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "defaultCollapseLevel",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "landscapeIcon",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "helpHtml",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "pressedCls",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "simpleList",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "columnSorting",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "styleContentRow",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "styleCategRow",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "styleHeaderRow",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "singleExpand",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "additionalListConfigs",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "selectedCls",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "mode",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "useSimpleItems",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "infinite",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "arrowPctWidth",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "customColumnSortEvent",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "disableExpandCollapse",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "categColumns",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "categCssArr",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "cssContentRow",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "cssCategRow",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "cssHeaderRow",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "customFooterItems",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "includeCustomFooterItems",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "footerDock",
                        "type": "string"
                    },
                    {
                        "group": "(Custom Properties)",
                        "name": "hideExpandCollapseBtns",
                        "type": "string"
                    }
                ]
            },
            {
                "type": "fixedfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "initialize",
                    "implHandler": [
                        "this.callParent();\r",
                        "\r",
                        "\r",
                        "var me\r",
                        "= this, i, newCls, newCls2;\r",
                        "\r",
                        "var titleBar = me.down('#calendarpicker-toolbar');\r",
                        "if (me.getHideTitleBar()) {titleBar.hide();}\r",
                        "\r",
                        "var gridcont = this.down('#calendar');\r",
                        "var gridlist = this.down('#calendarlist');\r",
                        "var scroller = gridlist.getScrollable().getScroller();\r",
                        "\r",
                        "// Store primary components with CalendarPicker component for faster reference\r",
                        "me.gridcont = gridcont;\r",
                        "me.gridlist = gridlist;\r",
                        "me.scroller = scroller;\r",
                        "\r",
                        "// Pass common configs from CalendarPicker component to underlying TouchTreeGrid component\r",
                        "gridcont.setCategColumns(me.getCategColumns());\r",
                        "gridcont.setColumns(me.getColumns());\r",
                        "gridcont.setRenderers(me.getRenderers());\r",
                        "me.down('#calendarpicker-toolbar').setTitle(me.getTitle());\r",
                        "gridcont.setIncludeFooter(me.getIncludeFooter());\r",
                        "gridcont.setSingleExpand(me.getSingleExpand());\r",
                        "gridcont.setDisableExpandCollapse(me.getDisableExpandCollapse());\r",
                        "gridcont.setCategDepthColors(me.getCategDepthColors());\r",
                        "gridcont.setCustomExpCollapseEvent(me.getCustomExpCollapseEvent());\r",
                        "gridcont.setVariableHeights(me.getVariableHeights());\r",
                        "gridcont.setDefaultCollapseLevel(me.getDefaultCollapseLevel());\r",
                        "gridcont.setCategDepthColorsArr(me.getCategDepthColorsArr());\r",
                        "gridcont.setItemHeight(me.getItemHeight());\r",
                        "gridcont.setFooterDock(me.getFooterDock());\r",
                        "gridcont.setHideExpandCollapseBtns(me.getHideExpandCollapseBtns());\r",
                        "\r",
                        "// Version 2 Mods\r",
                        "gridlist.setVariableHeights(me.getVariableHeights());\r",
                        "gridlist.setItemHeight(me.getItemHeight());\r",
                        "\r",
                        "\r",
                        "// Save original state of selections in case of clear or cancel\r",
                        "var selDtArr = me.getSelDtArr();\r",
                        "me.origSelDtArr = (Ext.isEmpty(selDtArr) ? [] : selDtArr);\r",
                        "\r",
                        "gridcont.setCustomFooterItems(me.getCustomFooterItems());\r",
                        "gridcont.setIncludeCustomFooterItems(me.getIncludeCustomFooterItems());\r",
                        "\r",
                        "\r",
                        "var customCls=me.getCustomCls();\r",
                        "if (!Ext.isEmpty(customCls)) {\r",
                        "    newCls = gridcont.getCls().slice(0);  // need to clone and setCls() below to work correctly\r",
                        "    newCls2 = me.getCls().slice(0);  // also updating CLS for Calendar Picker\r",
                        "\r",
                        "    for (i=0; i<customCls.length; i++) {\r",
                        "        if ((newCls.indexOf(customCls[i])===-1)) {\r",
                        "            newCls.push(customCls[i]);\r",
                        "        }\r",
                        "        if ((newCls2.indexOf(customCls[i])===-1)) {\r",
                        "            newCls2.push(customCls[i]);\r",
                        "        }        \r",
                        "    }\r",
                        "\r",
                        "    gridcont.setCls(newCls);\r",
                        "    me.setCls(newCls2); \r",
                        "}\r",
                        "\r",
                        "// Deal with race-condition where footer is applied even though calling routine requests not to\r",
                        "var myFooter = this.down('#touchtreegridbuttons');\r",
                        "if (!Ext.isEmpty(myFooter) && !this.getIncludeFooter()) {\r",
                        "    myFooter.hide();\r",
                        "}\r",
                        "var myFooterExpCollHide = this.down('#touchtreegridsegmentedbuttons');\r",
                        "if (!Ext.isEmpty(myFooterExpCollHide) && this.getHideExpandCollapseBtns()) {\r",
                        "    myFooterExpCollHide.hide();\r",
                        "}\r",
                        "if (myFooter.getDocked() !== this.getFooterDock()) {\r",
                        "    myFooter.setDocked(this.getFooterDock());\r",
                        "}\r",
                        "\r",
                        "\r",
                        "if (this.getIncludeFooter() && this.getUseIconsForExpCollapse()) {\r",
                        "    /* shrink exp/collapse button widths by using arrow icons */\r",
                        "    var exp = gridcont.down('#touchtreegridexpand');\r",
                        "    if (!Ext.isEmpty(exp)) {\r",
                        "        exp.setText('');\r",
                        "        exp.setIconCls('arrow_down');\r",
                        "        exp.setPadding(0);\r",
                        "    }\r",
                        "    var col = gridcont.down('#touchtreegridcollapse');\r",
                        "    if (!Ext.isEmpty(col)) {\r",
                        "        col.setText('');\r",
                        "        col.setIconCls('arrow_up');\r",
                        "        col.setPadding(0);\r",
                        "    }\r",
                        "}\r",
                        "\r",
                        "\r",
                        "var monthsToInsert = me.getMonthsToInsert();\r",
                        "var monthsToAppend = me.getMonthsToAppend();\r",
                        "if (me.getAllowMonthAdditions() && monthsToInsert>0 ) {\r",
                        "    // Update listPlugins such that PullRefresh auto-adds \r",
                        "    gridlist.setPlugins({\r",
                        "        xclass: 'Ext.plugin.PullRefresh',\r",
                        "        pullRefreshText: me.getMonthsToInsertPullText(),\r",
                        "        releaseRefreshText: me.getMonthsToInsertRefreshText(),\r",
                        "        listeners: {\r",
                        "            latestfetched: function() {this.up('calendarpicker').fireEvent('insertMonths', this.up('calendarpicker'));}\r",
                        "        }\r",
                        "    });\r",
                        "}\r",
                        "\r",
                        "if (me.getAllowMonthAdditions() && monthsToAppend>0) {\r",
                        "    // Add Load More button at bottom of list \r",
                        "\r",
                        "    gridlist.add({\r",
                        "        xtype: 'component',\r",
                        "        html: me.getMonthsToAppendText(),\r",
                        "        cls: 'months-to-append-html',\r",
                        "        scrollDock: 'bottom',\r",
                        "        listeners: {\r",
                        "            tap: {\r",
                        "                fn: me.onAppendMonths,\r",
                        "                scope: me,\r",
                        "                element: 'element'\r",
                        "            }        \r",
                        "        }\r",
                        "    });\r",
                        "}\r",
                        "\r",
                        "me.createStore(me, gridcont, gridlist);\r",
                        "\r",
                        "// Handle leafItemTap event from TouchTreeGrid for day selection processing\r",
                        "gridcont.on('leafItemTap', me.onLeafItemTap, me);\r",
                        "\r",
                        "// Handle monthExpCollapse event from TouchTreeGrid for rapid expand/collapse\r",
                        "gridcont.on('monthExpCollapse', me.onExpCollapse, me);\r",
                        "\r",
                        "// Add listener when this component is destroyed to also destroy associated Store\r",
                        "me.on('destroy', me.onDestroy, me);\r",
                        "\r",
                        "// Add listener for Pull to Add Months event\r",
                        "me.on('insertMonths', me.onInsertMonths, me);\r",
                        "\r",
                        "// Add listener for when list is shown to then scroll to designated node\r",
                        "scroller.on('refresh',  me.onScrollerRefresh, me);\r",
                        "\r",
                        "\r",
                        "\r",
                        ""
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "createStore",
                    "designer|params": [
                        "me",
                        "gridcont",
                        "gridlist",
                        "expandCollapse"
                    ],
                    "implHandler": [
                        "var backMoInp = me.getBackMonths(), fwdMoInp = me.getForwardMonths();\r",
                        "\r",
                        "\r",
                        "var backMo=Ext.isEmpty(backMoInp) ? 0 : backMoInp;  // allow negatives to support future start months\r",
                        "var fwdMo=Ext.isEmpty(fwdMoInp) ? 0 : Math.abs(fwdMoInp);\r",
                        "\r",
                        "var selDtArr = me.getSelDtArr();\r",
                        "var holidayDtArr = me.getHolidayDtArr();\r",
                        "var disableDtArr = me.getDisableDtArr();\r",
                        "var disableFutureDates = me.getDisableFutureDates();\r",
                        "var disableHolidays = me.getDisableHolidays();\r",
                        "var disableWeekends = me.getDisableWeekends();\r",
                        "var disablePastDates = me.getDisablePastDates();\r",
                        "\r",
                        "\r",
                        "var today= Ext.Date.clearTime(new Date(Date(Ext.Date.now())), true);\r",
                        "var currMonth = Ext.Date.format(today, 'm');\r",
                        "var currYear = Ext.Date.format(today, 'Y');\r",
                        "\r",
                        "gridcont.todayDt = Ext.Date.format(today, 'Y-m-d');\r",
                        "\r",
                        "var firstdt = Ext.Date.clearTime(Ext.Date.getFirstDateOfMonth(today), true);\r",
                        "\r",
                        "var startFirstDt = Ext.Date.clearTime(Ext.Date.add(firstdt, Ext.Date.MONTH, -1*backMo), true);\r",
                        "var endFirstDt = Ext.Date.clearTime(Ext.Date.add(firstdt, Ext.Date.MONTH, fwdMo), true);\r",
                        "\r",
                        "var endLastDt  = Ext.Date.clearTime(Ext.Date.getLastDateOfMonth(endFirstDt), true);\r",
                        "\r",
                        "var dateArr = [], done=false, dt=startFirstDt, dtStr, mo, moFullNm, yrNm, numDays,\r",
                        "    firstDayIdx, lastDayIdx, wk, i, j, k, m, n, id=0, parId, weekNum, wkArr=[], wkDtArr=[], moCnt=0,\r",
                        "    wkIsDisArr=[], wkIsHolArr=[], wkCustClsArr=[], wkCustHtmlArr=[], wkHolHtmlArr=[];\r",
                        "\r",
                        "// Process customDateTypes[]\r",
                        "var customDateTypes = me.getCustomDateTypes();\r",
                        "var customDtArr = me.getCustomDtArr();\r",
                        "var customDtArrMod = [], storeId, store;\r",
                        "var includeCustomDatesLegend = me.getIncludeCustomDatesLegend();\r",
                        "var legend = me.down('#calendarpicker-legend');\r",
                        "var legendHtml='';\r",
                        "\r",
                        "for (i=0; i<customDateTypes.length; i++) {\r",
                        "    if (customDateTypes[0].customType==='default' && customDateTypes[0].useCustomDtArr && customDtArr.length>0) {\r",
                        "        // Use customDtArr as provided if default entry found in 1st index position and dates have been supplied in customDtArr[]\r",
                        "        for (j=0; j<customDtArr.length; j++) {\r",
                        "            customDtArrMod.push({customType: 'default', dateStr: customDtArr[j], descr: ''});\r",
                        "        }\r",
                        "        break;\r",
                        "    }\r",
                        "\r",
                        "    // Else process one or more customDateTypes as defined in customDateTypes[] by building customDtArrMod[] for each customType \r",
                        "    // Custom Dates must be provided from store \r",
                        "    storeId = customDateTypes[i].storeId;\r",
                        "    store = Ext.data.StoreManager.getByKey(storeId);\r",
                        "    if (!Ext.isEmpty(store)){\r",
                        "        // Loop through store and update customDtArrMod[] for matching rows for current customType\r",
                        "        store.each(function (item, index, length) {\r",
                        "            var htmlDescr = (Ext.isEmpty(item.get('descr')) ? '' : item.get('descr'));\r",
                        "            if (item.get('customType')===customDateTypes[i].customType) {\r",
                        "                customDtArrMod.push({customType: customDateTypes[i].customType, dateStr: item.get('dateStr'), descr: htmlDescr});\r",
                        "                if (customDateTypes[i].disabled) {\r",
                        "                    disableDtArr.push(item.get('dateStr'));\r",
                        "                }\r",
                        "            }\r",
                        "        });           \r",
                        "    }\r",
                        "\r",
                        "    // Update HTML for Custom Dates Legend if applicable  (order of customType definition)\r",
                        "    legendHtml = legendHtml + (Ext.isEmpty(legendHtml) ? '' : '<br>') + \r",
                        "    '<span class=\"'+customDateTypes[i].cls+' calendarpicker-legend-cls-override\">&nbsp;</span>'+customDateTypes[i].customDescr;\r",
                        "}\r",
                        "if (includeCustomDatesLegend && customDtArrMod.length>0) {legend.setHtml(legendHtml);}\r",
                        "\r",
                        "\r",
                        "// Sort customDateTypes by descending priority when applying CLS\r",
                        "// (priority 1 CLS overrides priority 2 if 2 custom dates must be rendered for same date)\r",
                        "customDateTypes.sort(orderByPriorityDesc);\r",
                        "\r",
                        "// Sort function to sort CustomDateTypes[] array of objects by descending priority\r",
                        "function orderByPriorityDesc(b, a) {\r",
                        "    if (a.priority == b.priority) {\r",
                        "        return 0;\r",
                        "    } else if (a.priority > b.priority) {\r",
                        "        return 1;\r",
                        "    }\r",
                        "    return -1;\r",
                        "}\r",
                        "\r",
                        "do {    \r",
                        "    // Loop for each month\r",
                        "    mo=Ext.Date.format(dt, 'm');\r",
                        "    moFullNm = Ext.Date.format(dt, 'F');\r",
                        "    yrNm = Ext.Date.format(dt, 'Y');\r",
                        "\r",
                        "    numDays = Ext.Date.getDaysInMonth(dt);\r",
                        "    firstDayIdx = Ext.Date.getFirstDayOfMonth(dt);\r",
                        "    lastDayIdx = Ext.Date.getLastDayOfMonth(dt); \r",
                        "    firstDtIdx = Ext.Date.clearTime(Ext.Date.getFirstDateOfMonth(dt), true);\r",
                        "    lastDtIdx = Ext.Date.clearTime(Ext.Date.getLastDateOfMonth(dt), true); \r",
                        "\r",
                        "    // Insert node for current month\r",
                        "    dateArr.push({           \r",
                        "        month: moFullNm,\r",
                        "        mo: mo,\r",
                        "        year: yrNm,\r",
                        "        numDays: numDays,\r",
                        "        rowType: 'P',   // parent row type  \r",
                        "        ID: id,\r",
                        "        PARENT_ID: null\r",
                        "    });\r",
                        "    parId = id;\r",
                        "\r",
                        "    moCnt++;\r",
                        "    id++;  // increment next id\r",
                        "\r",
                        "    // add empty row type for start of month \r",
                        "    dateArr.push(\r",
                        "    {           \r",
                        "        month: moFullNm,\r",
                        "        mo: mo,\r",
                        "        year: yrNm,\r",
                        "        numDays: numDays,\r",
                        "        rowType: 'H',   // header row type    \r",
                        "        ID: id,\r",
                        "        PARENT_ID: parId,\r",
                        "        dow0: 'Sun',\r",
                        "        dow1: 'Mon',\r",
                        "        dow2: 'Tue',\r",
                        "        dow3: 'Wed',\r",
                        "        dow4: 'Thu',\r",
                        "        dow5: 'Fri',\r",
                        "        dow6: 'Sat'\r",
                        "    }); \r",
                        "    id++;  // increment next id \r",
                        "    weekNum = 1;\r",
                        "    i = 1;\r",
                        "    do {  // Loop for all days in current month\r",
                        "\r",
                        "        dtStr = Ext.Date.format(dt, 'Y-m-d');\r",
                        "\r",
                        "        // Loop for each week of month\r",
                        "        for (j=0; j<=6; j++) {\r",
                        "            if ((dtStr===Ext.Date.format(firstDtIdx, 'Y-m-d') && j<firstDayIdx) || \r",
                        "            (dtStr>=Ext.Date.format(lastDtIdx, 'Y-m-d') && j>lastDayIdx)) {\r",
                        "                wkArr[j] = null;\r",
                        "                wkDtArr[j] = null;\r",
                        "                wkIsDisArr[j] = null;\r",
                        "                wkIsHolArr[j] = null;\r",
                        "                wkCustClsArr[j] = null;\r",
                        "                wkCustHtmlArr[j] = null;\r",
                        "                wkHolHtmlArr[j] = null;                \r",
                        "            } else {\r",
                        "                wkArr[j] = i;\r",
                        "                wkDtArr[j] = dt;  \r",
                        "                wkIsDisArr[j] = ((disableDtArr.indexOf(dtStr) !== -1) ||\r",
                        "                (disableFutureDates && (dtStr > gridcont.todayDt) ) ||\r",
                        "                (disableWeekends && (Ext.Date.format(dt, 'w')==='0' || Ext.Date.format(dt, 'w')==='6')) ||\r",
                        "                (disableHolidays && (holidayDtArr.indexOf(dtStr)>-1) ) ||\r",
                        "                (disablePastDates && (dtStr < gridcont.todayDt)));\r",
                        "                wkIsHolArr[j] = (holidayDtArr.indexOf(dtStr) !== -1);\r",
                        "\r",
                        "                wkCustClsArr[j]='';   // Initialize\r",
                        "                wkCustHtmlArr[j]='';  // Initialize\r",
                        "                wkHolHtmlArr[j] = ''; // LATER                                \r",
                        "\r",
                        "                // Update Custom classes and Html for each overlapping date, by reverse priority\r",
                        "                for (k=0; k<customDateTypes.length; k++) {\r",
                        "                    for (m=0; m<customDtArrMod.length; m++) {\r",
                        "                        if ( customDtArrMod[m].customType===customDateTypes[k].customType && \r",
                        "                        dtStr === customDtArrMod[m].dateStr ) {\r",
                        "                            wkCustClsArr[j]  = (!Ext.isEmpty(wkCustClsArr[j]) ? wkCustClsArr[j]+' ' : '')+customDateTypes[k].cls;\r",
                        "                            wkCustHtmlArr[j] = (!Ext.isEmpty(wkCustHtmlArr[j]) ? wkCustHtmlArr[j]+'<br>' : '')+customDtArrMod[m].descr;                            \r",
                        "                        }\r",
                        "                    }                    \r",
                        "                }\r",
                        "\r",
                        "                i++;  //Increment i\r",
                        "                tmp = Ext.Date.clone(dt);  \r",
                        "                dt = Ext.Date.add(tmp, Ext.Date.DAY, 1);  // next day\r",
                        "                dtStr = Ext.Date.format(dt, 'Y-m-d');                                    \r",
                        "                if (Ext.Date.format(tmp, 'Y-m-d')===dtStr) {\r",
                        "                    // Correct for day light savings changes where add() method only adds 23 hours\r",
                        "                    dt = Ext.Date.add(dt, Ext.Date.DAY, 1);  // next day\r",
                        "                    dtStr = Ext.Date.format(dt, 'Y-m-d');                    \r",
                        "                }\r",
                        "                Ext.Date.clearTime(dt);\r",
                        "            }            \r",
                        "        }\r",
                        "\r",
                        "        dateArr.push(\r",
                        "        {\r",
                        "            month: moFullNm,\r",
                        "            mo: mo,\r",
                        "            year: yrNm,\r",
                        "            numDays: numDays,\r",
                        "            rowType: 'W',   \r",
                        "            weekNum: weekNum,\r",
                        "            ID: id,\r",
                        "            PARENT_ID: parId,\r",
                        "            dow0:  wkArr[0], dt_dow0: wkDtArr[0], isDisabled_dow0: wkIsDisArr[0], isHoliday_dow0: wkIsHolArr[0], customCls_dow0: wkCustClsArr[0], customHtml_dow0: wkCustHtmlArr[0], holidayHtml_dow0: wkHolHtmlArr[0],          \r",
                        "            dow1:  wkArr[1], dt_dow1: wkDtArr[1], isDisabled_dow1: wkIsDisArr[1], isHoliday_dow1: wkIsHolArr[1], customCls_dow1: wkCustClsArr[1], customHtml_dow1: wkCustHtmlArr[1], holidayHtml_dow1: wkHolHtmlArr[1],           \r",
                        "            dow2:  wkArr[2], dt_dow2: wkDtArr[2], isDisabled_dow2: wkIsDisArr[2], isHoliday_dow2: wkIsHolArr[2], customCls_dow2: wkCustClsArr[2], customHtml_dow2: wkCustHtmlArr[2], holidayHtml_dow2: wkHolHtmlArr[2],   \r",
                        "            dow3:  wkArr[3], dt_dow3: wkDtArr[3], isDisabled_dow3: wkIsDisArr[3], isHoliday_dow3: wkIsHolArr[3], customCls_dow3: wkCustClsArr[3], customHtml_dow3: wkCustHtmlArr[3], holidayHtml_dow3: wkHolHtmlArr[3],    \r",
                        "            dow4:  wkArr[4], dt_dow4: wkDtArr[4], isDisabled_dow4: wkIsDisArr[4], isHoliday_dow4: wkIsHolArr[4], customCls_dow4: wkCustClsArr[4], customHtml_dow4: wkCustHtmlArr[4], holidayHtml_dow4: wkHolHtmlArr[4],\r",
                        "            dow5:  wkArr[5], dt_dow5: wkDtArr[5], isDisabled_dow5: wkIsDisArr[5], isHoliday_dow5: wkIsHolArr[5], customCls_dow5: wkCustClsArr[5], customHtml_dow5: wkCustHtmlArr[5], holidayHtml_dow5: wkHolHtmlArr[5],\r",
                        "            dow6:  wkArr[6], dt_dow6: wkDtArr[6], isDisabled_dow6: wkIsDisArr[6], isHoliday_dow6: wkIsHolArr[6], customCls_dow6: wkCustClsArr[6], customHtml_dow6: wkCustHtmlArr[6], holidayHtml_dow6: wkHolHtmlArr[6]\r",
                        "        }); \r",
                        "        id++;\r",
                        "        weekNum++;\r",
                        "\r",
                        "    }  while (i<=numDays && i<32);\r",
                        "    // Process next month    \r",
                        "\r",
                        "\r",
                        "} while (dt < endLastDt);\r",
                        "\r",
                        "// Now define and load store from array  (denormalize in store for better rendering performance)\r",
                        "var fields = [{name: 'month',type: 'string'},{name: 'mo',type: 'string'}, {name: 'year',type: 'string'},{name: 'numDays',type: 'int'},\r",
                        "    {name: 'rowType',type: 'string'},{name: 'weekNum',type: 'int'},{name: 'ID'},{name: 'PARENT_ID'},\r",
                        "    {name: 'dow0'},{name: 'dt_dow0', type: 'date'},\r",
                        "    {name: 'dow1'},{name: 'dt_dow1',type: 'date'},\r",
                        "    {name: 'dow2'},{name: 'dt_dow2',type: 'date'},\r",
                        "    {name: 'dow3'},{name: 'dt_dow3',type: 'date'},\r",
                        "    {name: 'dow4'},{name: 'dt_dow4',type: 'date'},\r",
                        "    {name: 'dow5'},{name: 'dt_dow5',type: 'date'},\r",
                        "    {name: 'dow6'},{name: 'dt_dow6',type: 'date'},\r",
                        "\r",
                        "    {name: 'isDisabled_dow0', type: 'boolean'},\r",
                        "    {name: 'isHoliday_dow0', type: 'boolean'},\r",
                        "    {name: 'customCls_dow0', type: 'string'},\r",
                        "    {name: 'customHtml_dow0', type: 'string'},\r",
                        "    {name: 'holidayHtml_dow0', type: 'string'},\r",
                        "\r",
                        "    {name: 'isDisabled_dow1', type: 'boolean'},\r",
                        "    {name: 'isHoliday_dow1', type: 'boolean'},\r",
                        "    {name: 'customCls_dow1', type: 'string'},\r",
                        "    {name: 'customHtml_dow01', type: 'string'},\r",
                        "    {name: 'holidayHtml_dow1', type: 'string'},\r",
                        "\r",
                        "    {name: 'isDisabled_dow2', type: 'boolean'},\r",
                        "    {name: 'isHoliday_dow2', type: 'boolean'},\r",
                        "    {name: 'customCls_dow2', type: 'string'},\r",
                        "    {name: 'customHtml_dow2', type: 'string'},\r",
                        "    {name: 'holidayHtml_dow2', type: 'string'},\r",
                        "\r",
                        "    {name: 'isDisabled_dow3', type: 'boolean'},\r",
                        "    {name: 'isHoliday_dow3', type: 'boolean'},\r",
                        "    {name: 'customCls_dow3', type: 'string'},\r",
                        "    {name: 'customHtml_dow3', type: 'string'},\r",
                        "    {name: 'holidayHtml_dow3', type: 'string'},\r",
                        "\r",
                        "    {name: 'isDisabled_dow4', type: 'boolean'},\r",
                        "    {name: 'isHoliday_dow4', type: 'boolean'},\r",
                        "    {name: 'customCls_dow4', type: 'string'},\r",
                        "    {name: 'customHtml_dow4', type: 'string'},\r",
                        "    {name: 'holidayHtml_dow4', type: 'string'},\r",
                        "\r",
                        "    {name: 'isDisabled_dow5', type: 'boolean'},\r",
                        "    {name: 'isHoliday_dow5', type: 'boolean'},\r",
                        "    {name: 'customCls_dow5', type: 'string'},\r",
                        "    {name: 'customHtml_dow5', type: 'string'},\r",
                        "    {name: 'holidayHtml_dow5', type: 'string'},   \r",
                        "\r",
                        "    {name: 'isDisabled_dow6', type: 'boolean'},\r",
                        "    {name: 'isHoliday_dow6', type: 'boolean'},\r",
                        "    {name: 'customCls_dow6', type: 'string'},\r",
                        "    {name: 'customHtml_dow6', type: 'string'},\r",
                        "    {name: 'holidayHtml_dow6', type: 'string'}               \r",
                        "    ];\r",
                        "\r",
                        "var tempstore = gridlist.getStore(); // Created when TouchTreeGrid is instantiated\r",
                        "\r",
                        "var gridstore = Ext.create('Ext.data.TreeStore', {root: {children: []}, fields: fields});  \r",
                        "\r",
                        "gridlist.setStore(gridstore);\r",
                        "me.storeId = gridstore.getStoreId();  // Save so that we can destroy it in onDestroy() method when cleaning up\r",
                        "\r",
                        "if (!Ext.isEmpty(tempstore)) {\r",
                        "    Ext.data.StoreManager.unregister(tempstore);\r",
                        "}\r",
                        "\r",
                        "gridlist.dateArr = dateArr; // Store for resuse on expand/collapse all\r",
                        "\r",
                        "me.loadStore(me, gridcont, gridlist, expandCollapse);"
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "loadStore",
                    "designer|params": [
                        "me",
                        "gridcont",
                        "gridlist",
                        "expandCollapse"
                    ],
                    "implHandler": [
                        "var i, j;\r",
                        "\r",
                        "var dateArr = gridlist.dateArr;  // Saved in createStore() method\r",
                        "var gridstore = gridlist.getStore();\r",
                        "\r",
                        "var selDtArr = me.getSelDtArr();\r",
                        "\r",
                        "var today= Ext.Date.clearTime(new Date(Date(Ext.Date.now())), true);\r",
                        "var currMonth = Ext.Date.format(today, 'm');\r",
                        "var currYear = Ext.Date.format(today, 'Y');\r",
                        "var filter = me.getFilter();\r",
                        "var reverseSort = me.getReverseSort();\r",
                        "var collapseLevel = gridcont.getDefaultCollapseLevel();\r",
                        "\r",
                        "var fldLstArr = [['month',0],['mo', 0],['year',0],['numDays',0],['rowType',0],['weekNum',0],['ID',0],['PARENT_ID',0],  \r",
                        "['dow0',0],['dt_dow0',0],['dow1',0],['dt_dow1',0],['dow2',0],['dt_dow2',0],['dow3',0],['dt_dow3',0],\r",
                        "['dow4',0],['dt_dow4',0],['dow5',0],['dt_dow5',0],['dow6',0],['dt_dow6',0],\r",
                        "['isDisabled_dow0',0],['isHoliday_dow0',0],\r",
                        "['isDisabled_dow1',0],['isHoliday_dow1',0],\r",
                        "['isDisabled_dow2',0],['isHoliday_dow2',0],\r",
                        "['isDisabled_dow3',0],['isHoliday_dow3',0],\r",
                        "['isDisabled_dow4',0],['isHoliday_dow4',0],\r",
                        "['isDisabled_dow5',0],['isHoliday_dow5',0],\r",
                        "['isDisabled_dow6',0],['isHoliday_dow6',0],\r",
                        "['customCls_dow0',0],['customHtml_dow0',0],['holidayHtml_dow0',0],\r",
                        "['customCls_dow1',0],['customHtml_dow1',0],['holidayHtml_dow1',0],\r",
                        "['customCls_dow2',0],['customHtml_dow2',0],['holidayHtml_dow2',0],\r",
                        "['customCls_dow3',0],['customHtml_dow3',0],['holidayHtml_dow3',0],\r",
                        "['customCls_dow4',0],['customHtml_dow4',0],['holidayHtml_dow4',0],\r",
                        "['customCls_dow5',0],['customHtml_dow5',0],['holidayHtml_dow5',0],\r",
                        "['customCls_dow6',0],['customHtml_dow6',0],['holidayHtml_dow6',0]];\r",
                        "\r",
                        "var treejson = this.getTree(dateArr, null, collapseLevel, fldLstArr, false, filter);\r",
                        "\r",
                        "if (reverseSort) {\r",
                        "    treejson.children.sort(function(b, a){\r",
                        "        var nameA=a.year+a.mo, nameB=b.year+b.mo;\r",
                        "        if (nameA < nameB){ //sort string ascending\r",
                        "        return -1 ;}\r",
                        "        if (nameA > nameB){\r",
                        "        return 1;}\r",
                        "        return 0; //default return value (no sorting)\r",
                        "    });\r",
                        "}\r",
                        "\r",
                        "gridstore.suspendEvents();\r",
                        "gridstore.removeAll();  // Mainly useful for expand/collapse all where we are rebuilding treestore\r",
                        "gridstore.resumeEvents(true); // \"discard queued events\" improves performance when filtering and/or expanding all\r",
                        "\r",
                        "\r",
                        "var gridloaded = gridstore.setData(treejson);  // setRoot() not working => http://www.sencha.com/forum/showthread.php?242257\r",
                        "\r",
                        "\r",
                        "// Locate first parent node with selected dates, else current month\r",
                        "// Also locate current month node\r",
                        "var minDt = Ext.Array.min(selDtArr);\r",
                        "var minYr = (!Ext.isEmpty(minDt) ? minDt.substring(0,4) : currYear);   \r",
                        "var minMo = (!Ext.isEmpty(minDt) ? minDt.substring(5,7) : currMonth);\r",
                        "var currYrMo = currYear+currMonth;\r",
                        "var firstYrMo = minYr+minMo;\r",
                        "gridcont.firstMoCnt = 0;\r",
                        "gridcont.currentMoCnt = 0;\r",
                        "for (i=0; i< treejson.children.length; i++) {\r",
                        "    if (treejson.children[i].year+treejson.children[i].mo===currYrMo) {gridcont.currentMoCnt = i;}    \r",
                        "    if (treejson.children[i].year+treejson.children[i].mo===firstYrMo) {gridcont.firstMoCnt = i;}\r",
                        "}\r",
                        "// Update parameters to scroll to appropriate month after scroller is refreshed (via onScrollerRefresh method)\r",
                        "me.needToScroll = !Ext.isEmpty(minDt);\r",
                        "\r",
                        "\r",
                        "// Expand current month  (unless specifically collapsing all)\r",
                        "if (!expandCollapse && me.getExpandCurrentMonth()) {\r",
                        "    var currRec = gridstore.getAt(gridcont.currentMoCnt);\r",
                        "    if (!Ext.isEmpty(currRec)) {currRec.set('expanded', true);}\r",
                        "}\r",
                        "\r",
                        "// autoCollapseMonthsPriorToMinSelDt\r",
                        "if (me.getAutoCollapseMonthsPriorToMinSelDt() && selDtArr.length>0 && !expandCollapse) {\r",
                        "\r",
                        "    // Now loop through store and collapse parent nodes prior to selection\r",
                        "    gridstore.each(function (item, index, length) {\r",
                        "        if (!item.get('leaf') && ((item.get('year') < minYr) || (item.get('year') === minYr && item.get('mo')< minMo))) {\r",
                        "            item.set('expanded', false);\r",
                        "        }\r",
                        "    });   \r",
                        "}\r",
                        "\r",
                        "// autoExpandMonthsWithSelDates\r",
                        "var thisYr, thisMo, uniqMoYr=[];\r",
                        "if (me.getAutoExpandMonthsWithSelDates() && selDtArr.length>0) {\r",
                        "    // Optimize to only loop for unique year/month combinations\r",
                        "    for (i=0; i<selDtArr.length; i++) {\r",
                        "        if (uniqMoYr.indexOf(selDtArr[i].substring(0,7))===-1) {\r",
                        "            uniqMoYr.push(selDtArr[i].substring(0,7));\r",
                        "        }\r",
                        "    }\r",
                        "    uniqMoYr.sort();\r",
                        "\r",
                        "    // Now loop through store and collapse parent nodes prior to selection in sorted order\r",
                        "    gridstore.each(function (item, index, length) {\r",
                        "        if (item.get('leaf') || item.get('expanded')) {return;} // no need to process this row\r",
                        "        for (i=0; i<uniqMoYr.length; i++) {\r",
                        "            thisYr = uniqMoYr[i].substring(0,4);   \r",
                        "            thisMo = uniqMoYr[i].substring(5,7);\r",
                        "            if (item.get('year') === thisYr && item.get('mo')=== thisMo) {\r",
                        "                item.set('expanded', true);\r",
                        "            }\r",
                        "        }        \r",
                        "    });\r",
                        "}\r",
                        "\r",
                        "var refreshed = gridcont.doRefreshList(true);  \r",
                        "\r",
                        "\r",
                        "\r",
                        "\r",
                        "\r",
                        ""
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "onLeafItemTap",
                    "designer|params": [
                        "me, list, index, target, record, e"
                    ],
                    "implHandler": [
                        "\r",
                        "var i, innerText, tgt, dt, doRefresh=false;\r",
                        "\r",
                        "innerText = e.target.innerText;\r",
                        "var store = list.getStore();\r",
                        "var gridcont = me;\r",
                        "var dtPkr = list.parent.parent;\r",
                        "\r",
                        "\r",
                        "\r",
                        "var holidayDtArr = dtPkr.getHolidayDtArr();\r",
                        "var disableDtArr = dtPkr.getDisableDtArr();\r",
                        "var disableFutureDates = dtPkr.getDisableFutureDates();\r",
                        "var disableHolidays = dtPkr.getDisableHolidays();\r",
                        "var disableWeekends = dtPkr.getDisableWeekends();\r",
                        "var disablePastDates = dtPkr.getDisablePastDates();\r",
                        "var enableQuickDaySelection = dtPkr.getEnableQuickDaySelection();\r",
                        "\r",
                        "var selArr = dtPkr.getSelDtArr();\r",
                        "var selMode = dtPkr.getSelectMode().toUpperCase();\r",
                        "\r",
                        "\r",
                        "\r",
                        "tgt = e.getTarget(null,null,true);\r",
                        "\r",
                        "var myField = e.target.getAttribute('dataIndex');\r",
                        "if (Ext.isEmpty(myField)) {\r",
                        "    myField = e.target.parentElement.getAttribute('dataIndex');  // check parent element also\r",
                        "    if (Ext.isEmpty(myField)) {return;}\r",
                        "    tgt=tgt.getParent();\r",
                        "} \r",
                        "\r",
                        "if (tgt.hasCls('calendarpicker-disabled')) {return;}  // do nothing for disabled rows\r",
                        "\r",
                        "var myDate = record.get('dt_'+myField);\r",
                        "if (Ext.isEmpty(myDate)) {return;}\r",
                        "\r",
                        "var myDateStr = Ext.Date.format(myDate, 'Y-m-d');\r",
                        "\r",
                        "if (selMode === 'NONE') {\r",
                        "    doRefresh = true;\r",
                        "    //  if (doRefresh) {list.refresh();}\r",
                        "\r",
                        "    if (enableQuickDaySelection) {\r",
                        "        tgt.toggleCls('calendarpicker-selected');  // temporarily toggle selection appearance\r",
                        "    }\r",
                        "\r",
                        "    // Slight delay so user sees selection in calendar \r",
                        "    setTimeout(function(){\r",
                        "        if (enableQuickDaySelection) {        \r",
                        "            tgt.toggleCls('calendarpicker-selected');  // reset selection appearance\r",
                        "        }\r",
                        "        dtPkr.fireEvent('dateSelected', dtPkr, myDateStr, myDate);\r",
                        "    },100);\r",
                        "\r",
                        "}\r",
                        "else if (selMode === 'MULTI') {\r",
                        "    // remove all occurrences of selected/deselected date from array (in case duplicated)\r",
                        "    for(i = selArr.length - 1; i >= 0; i--) {\r",
                        "        if(selArr[i] === myDateStr) {\r",
                        "            selArr.splice(i, 1);\r",
                        "        }\r",
                        "    }\r",
                        "\r",
                        "    if (!tgt.hasCls('calendarpicker-selected')) {  // new selection\r",
                        "        dtPkr.setLastSelectedDate(myDateStr);  // updated with last selected \r",
                        "        selArr.push(myDateStr);  // add selected date to array\r",
                        "    } \r",
                        "\r",
                        "    dtPkr.setSelDtArr(selArr); // update object\r",
                        "    tgt.toggleCls('calendarpicker-selected');\r",
                        "}\r",
                        "\r",
                        "else if (selMode === 'SINGLE') {  // only one selection allowed and window closed\r",
                        "    doRefresh = true;\r",
                        "    // Remove all entries in SelDtArr and in Store not matching current selection\r",
                        "    for (i=0; i<selArr.length; i++){\r",
                        "        // check if we need to re-invoke renderer to deselect prior selections\r",
                        "        if (selArr[i] !== myDateStr) {doRefresh=true;} \r",
                        "    }\r",
                        "    selArr=[];  // reset array\r",
                        "\r",
                        "    if (!tgt.hasCls('calendarpicker-selected')) {  // new selection\r",
                        "        dtPkr.setLastSelectedDate(myDateStr);  // updated with last selected        \r",
                        "        selArr.push(myDateStr);  // add selected date to array\r",
                        "    } \r",
                        "\r",
                        "    dtPkr.setSelDtArr(selArr); // update object\r",
                        "    tgt.toggleCls('calendarpicker-selected');\r",
                        "\r",
                        "    if (doRefresh) {list.refresh();}\r",
                        "\r",
                        "    // Slight delay so user sees selection in calendar \r",
                        "    setTimeout(function(){\r",
                        "        dtPkr.fireEvent('calendarClosed', dtPkr);\r",
                        "    },250);\r",
                        "}\r",
                        "\r",
                        "else if (selMode === 'RANGE') {\r",
                        "    // First update selection\r",
                        "    // remove all occurrences of selected/deselected date from array (in case duplicated)\r",
                        "    for(i = selArr.length - 1; i >= 0; i--) {\r",
                        "        if(selArr[i] === myDateStr) {\r",
                        "            selArr.splice(i, 1);\r",
                        "        }\r",
                        "    }\r",
                        "\r",
                        "    if (!tgt.hasCls('calendarpicker-selected')) {  // new selection\r",
                        "        dtPkr.setLastSelectedDate(myDateStr);  // updated with last selected \r",
                        "        selArr.push(myDateStr);  // add selected date to array\r",
                        "    } \r",
                        "    tgt.toggleCls('calendarpicker-selected');   \r",
                        "\r",
                        "    // Now get minimum and maximum ranges\r",
                        "    if (selArr.length > 1) {\r",
                        "        var maxDt = Ext.Array.max(selArr);\r",
                        "        var minDt = Ext.Array.min(selArr);\r",
                        "\r",
                        "        if (!Ext.isEmpty(minDt) && !Ext.isEmpty(maxDt) && (minDt !== maxDt)) {\r",
                        "            // Populate array with all dates in between min and max skipping disabled dates\r",
                        "            var newArr = [], d=minDt, dact;\r",
                        "            doRefresh=true;\r",
                        "\r",
                        "            do {\r",
                        "                dact = Ext.Date.parse(d, 'Y-m-d');\r",
                        "\r",
                        "                if ((disableDtArr.indexOf(d) === -1) &&\r",
                        "                (!disableFutureDates || (d <= gridcont.todayDt) ) &&\r",
                        "                (!disableWeekends || (Ext.Date.format(dact, 'w')!=='0' && Ext.Date.format(dact, 'w')!=='6')) &&\r",
                        "                (!disableHolidays || (holidayDtArr.indexOf(d)===-1) ) &&\r",
                        "                (!disablePastDates || (d >= gridcont.todayDt))) {\r",
                        "                    newArr.push(d);\r",
                        "                }\r",
                        "\r",
                        "                // Increment d\r",
                        "                dtmp = Ext.Date.clone(dact);\r",
                        "                dact = Ext.Date.add(dtmp, Ext.Date.DAY, 1);  // next day\r",
                        "                d = Ext.Date.format(dact, 'Y-m-d');                                    \r",
                        "                if (Ext.Date.format(dtmp, 'Y-m-d')===d) {\r",
                        "                    // Correct for day light savings changes were add() method only adds 23 hours\r",
                        "                    dact = Ext.Date.add(dact, Ext.Date.DAY, 1);  // next day\r",
                        "                    d = Ext.Date.format(dact, 'Y-m-d');                    \r",
                        "                }\r",
                        "            } while (d<=maxDt); \r",
                        "            selArr = newArr.slice(0); // clone from newArr[]\r",
                        "        }        \r",
                        "    }\r",
                        "\r",
                        "\r",
                        "    dtPkr.setSelDtArr(selArr); // update object\r",
                        "\r",
                        "    if (doRefresh) {list.refresh();}\r",
                        "\r",
                        "}\r",
                        "\r",
                        "else {\r",
                        "    Ext.Msg.alert('Invalid selectMode !');\r",
                        "    console.log('Invalid selectMode (MULTI, SINGLE, RANGE) '); \r",
                        "}\r",
                        "\r",
                        "\r",
                        "\r",
                        ""
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "customBtns",
                    "designer|params": [
                        "btnName"
                    ],
                    "implHandler": [
                        "var dtPkr = this;\r",
                        "\r",
                        "if (btnName === 'CLEAR') {\r",
                        "    dtPkr.setSelDtArr([]);\r",
                        "    dtPkr.setLastSelectedDate('');           \r",
                        "    dtPkr.gridlist.refresh();\r",
                        "}\r",
                        "\r",
                        "if (btnName === 'CANCEL') {\r",
                        "    dtPkr.setSelDtArr(dtPkr.origSelDtArr);\r",
                        "    dtPkr.gridlist.refresh();   \r",
                        "\r",
                        "    setTimeout(function(){\r",
                        "        dtPkr.fireEvent('calendarClosed', dtPkr);\r",
                        "    },250);    \r",
                        "}\r",
                        "\r",
                        "if (btnName === 'DONE') {\r",
                        "    // Slight delay so user sees selection in calendar \r",
                        "    setTimeout(function(){\r",
                        "        dtPkr.fireEvent('calendarClosed', dtPkr);\r",
                        "    },250);\r",
                        "}\r",
                        "\r",
                        ""
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "onScrollerRefresh",
                    "implHandler": [
                        "// Workaround to get list to scroll to first month with seleted dates (or current month) after scroller has been refreshed\r",
                        "if (this.needToScroll && this.gridcont.firstMoCnt>0) {   \r",
                        "    var list = this.gridlist;\r",
                        "    var idx  = this.gridcont.firstMoCnt;\r",
                        "    var monthNodeHeightInPixels = this.getMonthNodeHeightInPixels();    \r",
                        "    var offset = monthNodeHeightInPixels*idx;\r",
                        "    this.scroller.scrollTo(0,offset, false); \r",
                        "}\r",
                        "\r",
                        "\r",
                        "\r",
                        ""
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "onExpCollapse",
                    "designer|params": [
                        "params"
                    ],
                    "implHandler": [
                        "// For larger data sets expand/collapse faster by refreshing the treestore with appropriate collapse level\r",
                        "this.gridcont.setDefaultCollapseLevel(params.collapseLevel);\r",
                        "\r",
                        "this.gridlist.setMasked({xtype: 'loadmask', message: \"Working...\"});\r",
                        "this.loadStore(this, this.gridcont, this.gridlist, true);\r",
                        "this.gridlist.setMasked(false);\r",
                        "this.scroller.scrollTo(0,1);\r",
                        "\r",
                        ""
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "onDestroy",
                    "implHandler": [
                        "// Up to Developer to destroy each instance of CalendarPicker component upon selection.\r",
                        "// This method does additional cleanup triggered off destroy event to clean up Stores, etc...\r",
                        "var me = this;\r",
                        "\r",
                        "var storeId = me.storeId; // saved in createStore() method\r",
                        "\r",
                        "var stores = Ext.data.StoreManager;\r",
                        "\r",
                        "var gridstore = stores.lookup(storeId);\r",
                        "if (!Ext.isEmpty(gridstore)) {\r",
                        "    stores.unregister(gridstore);\r",
                        "}\r",
                        ""
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "onInsertMonths",
                    "implHandler": [
                        "// Listens to PullRefresh plugin lastestfetched event to insert months to displayed calendar\r",
                        "// Refer to initialize() method:  me.on('insertMonths', me.onInsertMonths, me);\r",
                        "var backMonths = this.getBackMonths();\r",
                        "var monthsToInsert = this.getMonthsToInsert();\r",
                        "this.setBackMonths(backMonths+monthsToInsert);\r",
                        "\r",
                        "this.gridlist.setMasked({xtype: 'loadmask', message: \"Working...\"});\r",
                        "this.createStore(this, this.gridcont, this.gridlist, false);\r",
                        "this.gridlist.setMasked(false);\r",
                        "this.scroller.scrollTo(0,1); \r",
                        ""
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "onAppendMonths",
                    "implHandler": [
                        "var forwardMonths = this.getForwardMonths();\r",
                        "var monthsToAppend = this.getMonthsToAppend();\r",
                        "this.setForwardMonths(forwardMonths+monthsToAppend);\r",
                        "\r",
                        "this.gridlist.setMasked({xtype: 'loadmask', message: \"Working...\"});\r",
                        "this.createStore(this, this.gridcont, this.gridlist, false);\r",
                        "this.gridlist.setMasked(false);\r",
                        "this.scroller.scrollToEnd();\r",
                        "\r",
                        ""
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "getTree",
                    "designer|params": [
                        "list",
                        "rootId",
                        "expLevel",
                        "fldListArr",
                        "hasTopRoot",
                        "filterOpts"
                    ],
                    "implHandler": [
                        "// Required Fields:  'ID', 'PARENT_ID'   \r",
                        "// list       - data array to convert to treestore format\r",
                        "// rootId     - value of ultimate PARENT_ID (can be null)\r",
                        "// expLevel   - level to expand treestore to while generating\r",
                        "// fldListArr - defines columns to include in treestore from ArrRef for specific levels (if empty array then all fields are included at all levels as provided in list[])\r",
                        "//              2nd parameter defines levels including and higher where data element will be blanked out when generating the treestore\r",
                        "//              (particularly used for totalled numerics that don't apply to root levels, but the generating SQL can't update as NULL due to SQL UNION constraints \r",
                        "//              Note:  Exclude ID, PARENT_ID columns as these will be auto-added\r",
                        "//              For each field define level \"up to which\" values will be included on category rows.\r",
                        "//               '0' means highest root row will include non-nullable values (or as defined in flat file) for this field.\r",
                        "//               '1' means level 1 categories will include data (if defined)\r",
                        "//               '2' means data will only be included for up to level 2.  Level 1 and root will not show data for this column.\r",
                        "//                etc...\r",
                        "//              Example:   fldListArr = [['YearMonth', 0], ['grouper', 0], ['CloseDate', 1], ['Open', 1], ... ]\r",
                        "// hasTopRoot - true if a single root row exists\r",
                        "// filterOpts - Object defining filter options with members as follows:\r",
                        "//               - enabled : true or false (default)\r",
                        "//               - displayNodesWithAllMembersFilteredAsLeafs : true (default) or false \r",
                        "//                   (if, as result of filter a node has no displayable children, then set to true so that it appears\r",
                        "//                    as a leaf, or false to dispaly as expandable node ... regardless would not be expandable)\r",
                        "//               - filterFn : function that returns true if row is to be included in results\r",
                        "//\r",
                        "//               Example:\r",
                        "//               filterOpts = {\r",
                        "//                  enabled: true,\r",
                        "//                  displayNodesWithAllMembersFilteredAsLeafs: true,\r",
                        "//                  filterFn: function (rowObj) {return (parseInt(rowObj.Female) < parseInt(rowObj.Male));}\r",
                        "//               };\r",
                        "//\r",
                        "//               Notes about filtering:\r",
                        "//               - Node is included if any of it's children are included (whether node passes filter test or not!)\r",
                        "//               - \r",
                        "//\r",
                        "expLevel = (Ext.isEmpty(expLevel) ? 99 : expLevel);  // Level for initial expansion ...Defaults to fully expanded if not provided\r",
                        "\r",
                        "if (fldListArr.length===0) {\r",
                        "    // Initialize fldListArr with default values from all data fields in first row of list[]\r",
                        "    for (fld in list[0]) {\r",
                        "        if (fld !== 'ID' && fld !== 'PARENT_ID') {  // These are auto-added in createTreeStructure()\r",
                        "            fldListArr.push([fld, 0]);\r",
                        "        }\r",
                        "    }\r",
                        "}\r",
                        "var tree, root = {}, result = []; // fetch list from database\r",
                        "root.ID = rootId;\r",
                        "tree = {text : \".\"};\r",
                        "result.push(this.createTreeStructure(tree, root, list, 1, expLevel, fldListArr, hasTopRoot, filterOpts).result);\r",
                        "return result[0][0];\r",
                        ""
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "createTreeStructure",
                    "designer|params": [
                        "tree",
                        "root",
                        "list",
                        "level",
                        "expLevel",
                        "fldListArr",
                        "hasTopRoot",
                        "filterOpts"
                    ],
                    "implHandler": [
                        "var i=0, result = [], child, childList = [], children = [], temptree = {}, thisExp,\r",
                        "    has_nonfiltered_child = false;\r",
                        "\r",
                        "// Initialize Filter option variables\r",
                        "filterOpts = (Ext.isEmpty(filterOpts) ? {} : filterOpts);\r",
                        "var filtEnabled = (Ext.isEmpty(filterOpts.enabled) ? false : filterOpts.enabled);\r",
                        "var filtNodesAsLeafs = (Ext.isEmpty(filterOpts.displayNodesWithAllMembersFilteredAsLeafs) ? true : filterOpts.displayNodesWithAllMembersFilteredAsLeafs);\r",
                        "var filtFn = (Ext.isEmpty(filterOpts.filterFn) ? undefined : filterOpts.filterFn);\r",
                        "\r",
                        "if (level === 1 && hasTopRoot) {children = [list[0]];}  // Initial root\r",
                        "else {children = this.getChildren(root, list, false);} //Fetch children\r",
                        "\r",
                        "var ln = children.length;\r",
                        "\r",
                        "for(i=0; i<ln;i++)\r",
                        "{\r",
                        "    child = children[i];\r",
                        "    // Blank out categorized data above specified level as pre-specified in fldListArr\r",
                        "    // Example:  we may have 3 levels of cateogries.  Details sum to to the 3rd and perhaps 2nd level, \r",
                        "    //           but the 1st level should leave this column empty as not desired or applicable.\r",
                        "    for (var j=0; j< fldListArr.length; j++) {\r",
                        "        if (fldListArr[j][1] > 0 && fldListArr[j][1]>=level) {child[fldListArr[j][0]] = '';}\r",
                        "    }\r",
                        "\r",
                        "    if(this.getChildren(child, list, true).length===0) \r",
                        "    {\r",
                        "        temptree = {LEVEL : level, ID : child.ID, PARENT_ID : child.PARENT_ID, leaf : true};\r",
                        "        this.assignMembers(fldListArr, temptree, child);\r",
                        "\r",
                        "        // Push child to tree if filter not enabled or if passes filter condition\r",
                        "        if (!filtEnabled || filtFn(temptree)) { \r",
                        "            childList.push(temptree);\r",
                        "            tree[\"children\"] = childList; // Add leaf to child array of the passed parent (also links arrays)\r",
                        "            has_nonfiltered_child = true;\r",
                        "        }\r",
                        "    }\r",
                        "    else\r",
                        "    {\r",
                        "        thisExp = (level < expLevel ? true : false);\r",
                        "        temptree = {LEVEL : level, ID : child.ID, PARENT_ID : child.PARENT_ID, expanded : thisExp, leaf : false}; \r",
                        "        this.assignMembers(fldListArr, temptree, child);\r",
                        "\r",
                        "        // Push to children array now, but we will Pop it back later if this record and all children fail the filter condition\r",
                        "        childList.push(temptree);\r",
                        "        tree[\"children\"] = childList;  // Add node to child array of passed parent (also links arrays)\r",
                        "\r",
                        "        // Recursively create tree structure for the child since children exist.\r",
                        "        if (!this.createTreeStructure(temptree, child, list, level+1, expLevel, fldListArr, hasTopRoot, filterOpts).has_nonfiltered_child) {\r",
                        "            // If child items are all fitlered, but node passes filter test then  load this node as leaf instead of node (unless specified otherwise)\r",
                        "            if (!filtEnabled || filtFn(temptree)) {\r",
                        "                tree.children[tree.children.length-1].leaf = filtNodesAsLeafs;\r",
                        "                tree.children[tree.children.length-1].expanded = false;\r",
                        "                tree.children[tree.children.length-1].expandable = false;  // disallow expand all children are filtered \r",
                        "                has_nonfiltered_child = true;\r",
                        "\r",
                        "            } else {\r",
                        "                tree.children.pop();    // If HAS_NONFILTERED_CHILD = false, then pop() per above\r",
                        "            }\r",
                        "        } else {\r",
                        "            has_nonfiltered_child = true;\r",
                        "        }\r",
                        "\r",
                        "    }\r",
                        "}\r",
                        "\r",
                        "result.push(tree);   // DON'T NEED TO DO THIS UNTIL DONE WITH FINAL ITERATION\r",
                        "return {result: result, has_nonfiltered_child: has_nonfiltered_child};\r",
                        ""
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "assignMembers",
                    "designer|params": [
                        "fldListArr",
                        "treeObj",
                        "child"
                    ],
                    "implHandler": [
                        "for (var i=0; i< fldListArr.length; i++) {\r",
                        "    if (fldListArr[i][0]  !== 'ID' && fldListArr[i][0] !== 'PARENT_ID') {\r",
                        "        treeObj[fldListArr[i][0]] = child[fldListArr[i][0]];\r",
                        "    }\r",
                        "}"
                    ]
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "fn": "getChildren",
                    "designer|params": [
                        "root",
                        "list",
                        "firstOnly"
                    ],
                    "implHandler": [
                        "var i=0, ln = list.length, result = [];\r",
                        "for(i=0; i<ln;i++)\r",
                        "{\r",
                        "    if(root.ID===list[i].PARENT_ID)\r",
                        "    {\r",
                        "        result.push(list[i]);\r",
                        "        if (firstOnly) {return result;} // Only checking if single child exists so abort upon first detection\r",
                        "    }\r",
                        "}\r",
                        "return result;"
                    ]
                }
            }
        ]
    },
    "linkedNodes": {},
    "boundStores": {},
    "boundModels": {}
}