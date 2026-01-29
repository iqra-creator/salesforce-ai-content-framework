/**
 * Author: Iqra Masood
 * Description: Helper methods for AIContentGenerator
 */
({
    loadModels : function(component) {
        let action = component.get("c.fetchModels");
        action.setParams({
            provider: component.get("v.provider")
        });

        action.setCallback(this, function(response) {
            if (response.getState() === "SUCCESS") {
                let models = response.getReturnValue();
                component.set("v.models", models);
                component.set("v.model", models.length > 0 ? models[0] : null);
            }
        });

        $A.enqueueAction(action);
    },

    generateContent : function(component) {
        component.set("v.isLoading", true);

        let action = component.get("c.generateContent");
        action.setParams({
            provider: component.get("v.provider"),
            model: component.get("v.model"),
            prompt: component.get("v.prompt")
        });

        action.setCallback(this, function(response) {
            component.set("v.isLoading", false);

            if (response.getState() === "SUCCESS") {
                component.set("v.result", response.getReturnValue());
            }
        });

        $A.enqueueAction(action);
    }
})
