/**
 * Author: Iqra Masood
 * Description: Handles ChatGPT API communication
 */
public class ChatGPTProvider {

    public static String generate(String model, String prompt) {

        HttpRequest req = new HttpRequest();
        req.setMethod('POST');
        req.setEndpoint('callout:ChatGPT_NC');
        req.setHeader('Content-Type', 'application/json');

        Map<String, Object> body = new Map<String, Object>();
        body.put('model', model);
        body.put('messages', new List<Object>{
            new Map<String, String>{
                'role' => 'user',
                'content' => prompt
            }
        });

        req.setBody(JSON.serialize(body));

        HttpResponse res = new Http().send(req);

        if(res.getStatusCode() != 200) {
            throw new AuraHandledException('ChatGPT request failed.');
        }

        return res.getBody();
    }
}
