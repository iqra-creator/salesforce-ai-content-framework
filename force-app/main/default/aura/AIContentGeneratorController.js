/**
 * Author: Iqra Masood
 * Description: Client-side controller for AIContentGenerator
 */
({
    doInit : function(component, event, helper) {
        helper.loadModels(component);
    },

    onProviderChange : function(component, event, helper) {
        helper.loadModels(component);
    },

    generate : function(component, event, helper) {
        helper.generateContent(component);
    }
})
