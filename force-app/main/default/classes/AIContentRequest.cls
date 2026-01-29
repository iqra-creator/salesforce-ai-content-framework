/**
 * Author: Iqra Masood
 * Description: Wrapper class for AI content generation requests
 */
public class AIContentRequest {

    public String provider;
    public String model;
    public String prompt;

    public AIContentRequest(String provider, String model, String prompt) {
        this.provider = provider;
        this.model = model;
        this.prompt = prompt;
    }
}
