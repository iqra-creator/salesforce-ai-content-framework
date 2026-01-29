/**
 * Author: Iqra Masood
 * Description: Aura controller for AI content generation
 */
public with sharing class AIContentController {

    @AuraEnabled
    public static List<String> fetchModels(String provider) {
        return AIModelRegistry.getModels(provider);
    }

    @AuraEnabled
    public static String generateContent(
        String provider,
        String model,
        String prompt
    ) {
        AIContentRequest req =
            new AIContentRequest(provider, model, prompt);

        return AIProviderService.generate(req);
    }
}
