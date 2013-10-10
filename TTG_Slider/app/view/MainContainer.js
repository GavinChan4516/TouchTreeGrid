/*
 * File: app/view/MainContainer.js
 *
 * This file was generated by Sencha Architect version 2.2.3.
 * http://www.sencha.com/products/architect/
 *
 * This file requires use of the Sencha Touch 2.3.x library, under independent license.
 * License of Sencha Architect does not include license for Sencha Touch 2.3.x. For more
 * details see http://www.sencha.com/license or contact license@sencha.com.
 *
 * This file will be auto-generated each and everytime you save your project.
 *
 * Do NOT hand edit this file.
 */

Ext.define('TouchTreeGrid.view.MainContainer', {
    extend: 'Ext.Container',

    requires: [
        'TouchTreeGrid.view.AccordionCont'
    ],

    config: {
        layout: {
            type: 'hbox'
        },
        items: [
            {
                xtype: 'container',
                itemId: 'menunav',
                minWidth: '15em',
                style: 'border-right: thin solid #999; background-color: #323232;',
                width: '80%',
                layout: {
                    type: 'vbox'
                },
                items: [
                    {
                        xtype: 'container',
                        cls: 'menuopt_header',
                        height: '2.5em',
                        html: 'TouchTreeGrid Demo',
                        itemId: 'menuopt_header',
                        maxHeight: '2.5em',
                        minHeight: '2.5em',
                        padding: '.6em 0 0 0',
                        style: 'color: white; text-align: center; font-size: 1em;',
                        ui: 'plain'
                    },
                    {
                        xtype: 'container',
                        flex: 1,
                        height: '35em',
                        itemId: 'menuoptitems',
                        minHeight: '',
                        style: 'background-color: #323232;',
                        scrollable: {
                            //http://www.sencha.com/forum/showthread.php?175065
                            direction: 'vertical',
                            directionLock: true,
                            momentumEasing: {
                                momentum: {
                                    acceleration: 30,
                                    friction: 0.5
                                },
                                bounce: {
                                    acceleration: 0.0001,
                                    springTension: 0.9999
                                },
                                minVelocity: 5
                            },
                            outOfBoundRestrictFactor: 0
                        },
                        items: [
                            {
                                xtype: 'touchtreegrid',
                                store: 'menuOptsStore',
                                listScrollable: false,
                                disableSelection: false,
                                onItemDisclosure: true,
                                columns: [
                                    {
                                        dataIndex: 'Image',
                                        width: '15%',
                                        style: 'text-align: left;'
                                    },
                                    {
                                        dataIndex: 'Text',
                                        width: '85%',
                                        style: 'text-align: left;'
                                    }
                                ],
                                disclosureProperty: 'leaf',
                                listItemId: 'menuoptlist',
                                includeFooter: false,
                                categIndentPct: '0',
                                categDepthColors: true,
                                categDepthColorsArr: [
                                    '#323232',
                                    'white',
                                    'white'
                                ],
                                includeHeader: false,
                                applyDefaultCollapseLevel: false,
                                singleExpand: true,
                                mode: 'MULTI',
                                arrowPctWidth: '0',
                                cls: [
                                    'x-touchtreegrid-list',
                                    'x-touchtreegrid-list-menuopt'
                                ],
                                height: '35em',
                                itemId: 'menuopt'
                            }
                        ]
                    },
                    {
                        xtype: 'toolbar',
                        docked: 'bottom',
                        itemId: 'menuopt_footer',
                        maxHeight: '2em',
                        minHeight: '2em',
                        style: ' background-color: #323232; ',
                        ui: 'plain',
                        items: [
                            {
                                xtype: 'image',
                                docked: 'left',
                                height: '2em',
                                itemId: 'menuoptexpand',
                                margin: '0 0 .5em .5em',
                                width: '2em',
                                src: './resources/images/bullet_arrow_bottom.png'
                            },
                            {
                                xtype: 'image',
                                docked: 'left',
                                height: '2em',
                                itemId: 'menuoptcollapse',
                                margin: '0 0 .5em 0em',
                                width: '2em',
                                src: './resources/images/bullet_arrow_top.png'
                            }
                        ]
                    }
                ]
            },
            {
                xtype: 'container',
                flex: 1,
                cls: 'slide',
                height: '100%',
                id: 'menucont',
                itemId: 'menucont',
                width: '100%',
                zIndex: 5,
                layout: {
                    type: 'hbox'
                },
                items: [
                    {
                        xtype: 'container',
                        flex: 1,
                        itemId: 'menucontgridpanel',
                        width: '100%',
                        layout: {
                            type: 'fit'
                        },
                        items: [
                            {
                                xtype: 'toolbar',
                                cls: 'menuconttoolbardark',
                                docked: 'top',
                                itemId: 'menuconttoolbar',
                                title: 'Accordion',
                                items: [
                                    {
                                        xtype: 'button',
                                        itemId: 'menubtn',
                                        padding: '0 .2em .3em .2em',
                                        style: 'border: 1px solid grey; ',
                                        ui: 'plain',
                                        labelCls: 'x-button-label-menu',
                                        text: 'MENU'
                                    },
                                    {
                                        xtype: 'image',
                                        docked: 'right',
                                        height: '1.5em',
                                        hidden: false,
                                        itemId: 'gridhelp',
                                        margin: '.5em 0 0 0',
                                        width: '1.5em',
                                        src: './resources/images/question.png'
                                    }
                                ]
                            },
                            {
                                xtype: 'container',
                                itemId: 'menucontswap',
                                layout: {
                                    type: 'card'
                                },
                                items: [
                                    {
                                        xtype: 'accordionCont'
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        itemId: 'menuconthelppanel',
                        minWidth: 0,
                        style: 'border-left: 1px solid gray; background-color:#fffd8f;',
                        layout: {
                            type: 'fit'
                        },
                        scrollable: 'vertical',
                        items: [
                            {
                                xtype: 'toolbar',
                                cls: 'menuconthelptoolbar',
                                docked: 'top',
                                itemId: 'menuconthelptoolbar',
                                ui: 'plain',
                                items: [
                                    {
                                        xtype: 'button',
                                        iconMask: true,
                                        itemId: 'closehelp',
                                        margin: '0 0 .2em 0',
                                        padding: '0 0 .2em 0',
                                        iconCls: 'delete'
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        ],
        listeners: [
            {
                fn: 'onMenubtnTap',
                event: 'tap',
                delegate: '#menubtn'
            }
        ]
    },

    onMenubtnTap: function(button, e, eOpts) {
        // Use RELEASE event (within controller) for handling button press and prevent default
        // browser behaviour which activates underlying elements off TAP event (e.g. if search field underneath)
        e.preventDefault();

    },

    initialize: function() {
        this.callParent();

        // Configure for phone vs. tablet
        var cont = this.down('#menucont');
        var nav = this.down('#menunav');
        var gridcont = this.down('#menuopt');

        if (!Ext.os.is.Phone) {
            nav.setWidth('20%');

            //    cont.setLeft('');
            cont.setWidth('80%');

            gridcont.setSingleExpand(false);
            gridcont.setApplyDefaultCollapseLevel(true);  // expand all for tablets

            cont.down('#menuconthelptoolbar').setHidden(true);  // Hide help menu toolbar for tablets
        }    
        else {
            cont.setLeft(0);
            cont.setWidth('100%');
            gridcont.setSingleExpand(true);
            gridcont.setApplyDefaultCollapseLevel(false);    // use data defined collapse levels

        }    
    }

});