/**
 * Author: Iqra Masood
 * Description: Routes AI requests to the correct provider
 */
public class AIProviderService {

    public static String generate(AIContentRequest request) {

        if(String.isBlank(request.prompt)) {
            throw new AuraHandledException('Prompt cannot be empty.');
        }

        if(request.provider == 'ChatGPT') {
            return ChatGPTProvider.generate(
                request.model,
                request.prompt
            );
        }

        if(request.provider == 'Gemini') {
            return GeminiProvider.generate(
                request.model,
                request.prompt
            );
        }

        throw new AuraHandledException('Unsupported AI provider.');
    }
}
