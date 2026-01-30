```mermaid
flowchart TB

    User[User / Salesforce UI]

    subgraph Salesforce_UI["Salesforce UI Layer"]
        Aura[Aura Component<br/>AIContentGenerator]
    end

    subgraph Apex_Controller["Apex Controller Layer"]
        Controller[AIContentController]
    end

    subgraph Service_Layer["Service Layer"]
        Service[AIProviderService]
        ModelRegistry[AIModelRegistry]
    end

    subgraph Provider_Layer["Provider Implementations"]
        ChatGPT[ChatGPTProvider]
        Gemini[GeminiProvider]
    end

    subgraph Security_Layer["Security & Auth"]
        NC1[Named Credential<br/>ChatGPT_NC]
        NC2[Named Credential<br/>Gemini_NC]
    end

    subgraph External_AI["External AI Providers"]
        OpenAI[ChatGPT API]
        GeminiAPI[Gemini API]
    end

    User --> Aura
    Aura --> Controller
    Controller --> ModelRegistry
    Controller --> Service
    Service --> ChatGPT
    Service --> Gemini
    ChatGPT --> NC1
    Gemini --> NC2
    NC1 --> OpenAI
    NC2 --> GeminiAPI
