flowchart TD
    User[Salesforce User]
    UI[Aura Component<br/>AIContentGenerator]
    Controller[Apex Controller<br/>AIContentController]
    Service[Service Layer<br/>AIProviderService]
    Registry[Model Registry<br/>AIModelRegistry]
    
    ChatGPT[ChatGPT Provider]
    Gemini[Gemini Provider]

    NC1[Named Credential<br/>ChatGPT_NC]
    NC2[Named Credential<br/>Gemini_NC]

    API1[ChatGPT API]
    API2[Gemini API]

    User --> UI
    UI --> Controller
    Controller --> Registry
    Controller --> Service
    Service --> ChatGPT
    Service --> Gemini
    ChatGPT --> NC1 --> API1
    Gemini --> NC2 --> API2
