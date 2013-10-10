/*
 * File: app/controller/ListsController.js
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

Ext.define('TouchTreeGrid.controller.ListsController', {
    extend: 'Ext.app.Controller',

    config: {
        models: [
            'Dow2012',
            'Dow2012Tree'
        ],
        stores: [
            'Dow2012grouper',
            'Dow2012',
            'dow2012TreeStore',
            'Dow2012Horiz'
        ],
        views: [
            'Dow2012Cont',
            'Dow2012Basic2Cont',
            'Dow2012grouperCont',
            'Dow2012grouper2Cont',
            'Dow2012DynamicCont',
            'Dow2012HorizCont'
        ],

        refs: {
            dow2012Cont: {
                autoCreate: true,
                selector: 'dow2012Cont',
                xtype: 'dow2012Cont'
            },
            dow2012Basic2Cont: {
                autoCreate: true,
                selector: 'dow2012Basic2Cont',
                xtype: 'dow2012Basic2Cont'
            },
            dow2012grouperCont: {
                autoCreate: true,
                selector: 'dow2012grouperCont',
                xtype: 'dow2012grouperCont'
            },
            dow2012grouper2Cont: {
                autoCreate: true,
                selector: 'dow2012grouper2Cont',
                xtype: 'dow2012grouper2Cont'
            },
            dow2012HorizCont: {
                autoCreate: true,
                selector: 'dow2012HorizCont',
                xtype: 'dow2012HorizCont'
            },
            dow2012DynamicCont: {
                autoCreate: true,
                selector: 'dow2012DynamicCont',
                xtype: 'dow2012DynamicCont'
            }
        },

        control: {
            "container#dow2012horiz": {
                leafItemTap: 'onHorizGridLeafItemTap'
            },
            "container#dow2012Dynamic": {
                leafItemTap: 'onDynamicGridLeafItemTap'
            },
            "container#dow2012grouper2": {
                expCollapse: 'onDow2012grouper2ExpCollapse'
            }
        }
    },

    onHorizGridLeafItemTap: function(me, list, index, target, record, e) {
        // Example of how we can code to only act if CloseDate or Close (Price) elements are tapped
        // (requires that columns[] array have "addDataIndexToDiv: true" attribute defined for each of these
        // columns)

        var myField = e.target.getAttribute('dataIndex');
        var tapped = true;

        if (myField === 'CloseDate') {
            var myDate = Ext.Date.format(record.get('CloseDate'), "n/j/Y");
            Ext.Msg.alert('Close Date: ' + myDate);
        }
        else if (myField === 'Close') {
            Ext.Msg.alert('Close Price: ' + record.get('Close'));    
        }
        else {
            // For this example no other fields were defined with dataIndex attribute within DIV
            tapped = false;
        }

        if (tapped) {
            console.log('onHorizGridLeafItemTap record tapped:');
            console.log(record);
        }

    },

    onDynamicGridLeafItemTap: function(me, list, index, target, record, e) {
        // Example of how we can code to only act if CloseDate or Close (Price) elements are tapped
        // (requires that columns[] array have "addDataIndexToDiv: true" attribute defined for each of these columns)

        var myField = e.target.getAttribute('dataIndex');
        var tapped = true;

        if (myField === 'CloseDate') {
            var myDate = Ext.Date.format(record.get('CloseDate'), "n/j/Y");
            Ext.Msg.alert('Close Date: ' + myDate);
        }
        else if (myField === 'Close') {
            Ext.Msg.alert('Close Price: ' + record.get('Close'));    
        }
        else {
            // For this example no other fields were defined with dataIndex attribute within DIV
            tapped = false;
        }

        if (tapped) {
            console.log('onHorizGridLeafItemTap record tapped:');
            console.log(record);
        }

    },

    onDow2012grouper2ExpCollapse: function(params) {
        // For really large data sets seems to expand/collapse faster by refreshing the treestore with appropriate collapse level
        var collapseLevel = params.collapseLevel;
        var list = params.list;
        var gridcont = params.gridcont;

        gridcont.collapseLevel = collapseLevel;

        this.loadDow2012Grouper2Store(gridcont, list);

        list.setMasked(false);

    },

    loadDow2012DynamicStore: function(gridcont, grid) {
        var me = this;
        var gridurl = 'data/dow2012dynamicCss.json';

        commonController.loadDynamicStore(me, gridcont, gridurl, 'Loading Dynamic...', false);

    },

    loadDow2012Grouper2Store: function(gridcont, grid) {
        var me = this;
        var gridurl = 'data/dow2012categ.json';

        // Passing loadStoreInPostProcess=true because for this example we will 
        // be loading dow2012TreeStore (flatfile format) and then post-processing
        // into treestore format 
        commonController.loadStore(me, gridcont, gridurl, 'Loading Grouper#2...', true);

    }

});