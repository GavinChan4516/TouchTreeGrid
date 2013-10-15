/*
 * File: app/store/MenuOptsStore.js
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

Ext.define('TouchTreeGrid.store.MenuOptsStore', {
    extend: 'Ext.data.TreeStore',

    config: {
        autoLoad: true,
        storeId: 'menuOptsStore',
        root: {
            children: [
                {
                    LEVEL: '1',
                    expanded: true,
                    leaf: false,
                    Image: '<img src=\'./resources/images/accordion.png\'>',
                    Text: 'Task List Examples',
                    children: [
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Accordion'
                        },
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Task#2'
                        },
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Task#3'
                        }
                    ]
                },
                {
                    LEVEL: '1',
                    expanded: false,
                    leaf: false,
                    Image: '<img src=\'./resources/images/investment_menu_quality.png\'>',
                    Text: 'Project Tree Examples',
                    children: [
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Project #1'
                        },
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Project #2'
                        },
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Project #3'
                        }
                    ]
                },
                {
                    LEVEL: '1',
                    expanded: false,
                    leaf: false,
                    Image: '<img src=\'./resources/images/global_telecom.png\'>',
                    Text: 'US Census Tree Examples',
                    children: [
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'US Census - Maine',
                            userClassName: 'censusmainecontainer'
                        },
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Census Filter Ex#1'
                        },
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Freeze Column'
                        }
                    ]
                },
                {
                    LEVEL: '1',
                    expanded: false,
                    leaf: false,
                    Image: '<img src=\'./resources/images/attributes_display.png\'>',
                    Text: 'Simple List Examples',
                    children: [
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Basic List #1'
                        },
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Basic List #2'
                        },
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Grouper #1'
                        },
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Grouper #2'
                        },
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Horizontal Scrolling'
                        },
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Dynamic Grid'
                        }
                    ]
                },
                {
                    LEVEL: '1',
                    expanded: false,
                    leaf: false,
                    Image: '<img src=\'./resources/images/layers.png\'>',
                    Text: 'Miscellaneous',
                    children: [
                        {
                            LEVEL: '2',
                            leaf: true,
                            Image: null,
                            Text: 'Manual TPL'
                        }
                    ]
                }
            ],
            text: '.'
        },
        fields: [
            {
                name: 'Image'
            },
            {
                name: 'Text'
            }
        ]
    }
});