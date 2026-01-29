/**
 * Author: Iqra Masood
 * Description: Central registry for supported AI models per provider
 */
public class AIModelRegistry {

    public static List<String> getModels(String provider) {
        if(provider == 'ChatGPT') {
            return new List<String>{
                'gpt-3.5-turbo',
                'gpt-4',
                'gpt-5'
            };
        }

        if(provider == 'Gemini') {
            return new List<String>{
                'gemini-pro',
                'gemini-1.5',
                'gemini-advanced'
            };
        }

        return new List<String>();
    }
}
