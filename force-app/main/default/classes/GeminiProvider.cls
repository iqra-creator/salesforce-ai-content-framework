/**
 * Author: Iqra Masood
 * Description: Handles Gemini API communication
 */
public class GeminiProvider {

    public static String generate(String model, String prompt) {

        HttpRequest req = new HttpRequest();
        req.setMethod('POST');
        req.setEndpoint('callout:Gemini_NC');
        req.setHeader('Content-Type', 'application/json');

        Map<String, Object> body = new Map<String, Object>();
        body.put('model', model);
        body.put('prompt', prompt);

        req.setBody(JSON.serialize(body));

        HttpResponse res = new Http().send(req);

        if(res.getStatusCode() != 200) {
            throw new AuraHandledException('Gemini request failed.');
        }

        return res.getBody();
    }
}
