.class final Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;
.super Ljava/lang/Object;
.source "StAXValidatorHelper.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/ValidatorHelper;
.implements Lmf/org/apache/xerces/impl/validation/EntityState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;,
        Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;,
        Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;
    }
.end annotation


# static fields
.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final STRING_INTERNING:Ljava/lang/String; = "javax.xml.stream.isInterning"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field final fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

.field final fDeclaredPrefixes:Ljava/util/ArrayList;

.field private fDepth:I

.field final fElementQName:Lmf/org/apache/xerces/xni/QName;

.field private fEntities:Ljava/util/HashMap;

.field private final fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fEventHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

.field private final fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private final fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

.field private fStAXEventResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

.field private final fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

.field private fStAXStreamResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

.field private fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

.field private fStreamHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

.field final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private fStringsInternalized:Z

.field private final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field final fTempString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private final fXMLStreamReaderLocation:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 3
    .param p1, "componentManager"    # Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/StAXLocationWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    .line 123
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fXMLStreamReaderLocation:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    .line 126
    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    .line 129
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringsInternalized:Z

    .line 147
    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    .line 150
    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

    .line 153
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    .line 154
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 155
    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    .line 158
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 161
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    .line 162
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 163
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    .line 164
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 165
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 166
    new-instance v0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    .line 167
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setDeclaredPrefixes(Ljava/util/List;)V

    .line 168
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fXMLStreamReaderLocation:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    return-object v0
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    return-object v0
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/StAXLocationWrapper;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    return-object v0
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    return-object v0
.end method

.method static synthetic access$5(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    return v0
.end method

.method static synthetic access$6(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;I)V
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    return-void
.end method

.method static synthetic access$7(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    return-object v0
.end method

.method static synthetic access$8(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;Lmf/javax/xml/stream/events/XMLEvent;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

    return-void
.end method

.method static synthetic access$9(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lmf/javax/xml/stream/events/XMLEvent;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

    return-object v0
.end method

.method private setupStAXResultHandler(Lmf/javax/xml/transform/stax/StAXResult;)V
    .locals 3
    .param p1, "result"    # Lmf/javax/xml/transform/stax/StAXResult;

    .prologue
    const/4 v2, 0x0

    .line 318
    if-nez p1, :cond_0

    .line 319
    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    .line 320
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 339
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p1}, Lmf/javax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Lmf/javax/xml/stream/XMLStreamWriter;

    move-result-object v0

    .line 324
    .local v0, "writer":Lmf/javax/xml/stream/XMLStreamWriter;
    if-eqz v0, :cond_2

    .line 325
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXStreamResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    if-nez v1, :cond_1

    .line 326
    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;-><init>(Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;)V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXStreamResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    .line 328
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXStreamResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    .line 329
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXStreamResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V

    .line 338
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_0

    .line 332
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXEventResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    if-nez v1, :cond_3

    .line 333
    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-direct {v1, p0, v2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;-><init>(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;)V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXEventResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    .line 335
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXEventResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    .line 336
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXEventResultBuilder:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V

    goto :goto_1
.end method


# virtual methods
.method final fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "toFill"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localpart"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringsInternalized:Z

    if-nez v1, :cond_5

    .line 258
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 259
    :goto_0
    if-eqz p3, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 260
    :goto_1
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 273
    :cond_0
    :goto_2
    move-object v0, p3

    .line 274
    .local v0, "raw":Ljava/lang/String;
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq p4, v1, :cond_1

    .line 275
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 276
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 278
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, p3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v2, v2, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v3, v3, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v4, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_1
    invoke-virtual {p1, p4, p3, v0, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void

    .line 258
    .end local v0    # "raw":Ljava/lang/String;
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 259
    :cond_3
    sget-object p3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    .line 260
    :cond_4
    sget-object p4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    .line 263
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 264
    const/4 p2, 0x0

    .line 266
    :cond_6
    if-nez p3, :cond_7

    .line 267
    sget-object p3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 269
    :cond_7
    if-nez p4, :cond_0

    .line 270
    sget-object p4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2
.end method

.method final getCurrentEvent()Lmf/javax/xml/stream/events/XMLEvent;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

    return-object v0
.end method

.method final getEntityDeclaration(Ljava/lang/String;)Lmf/javax/xml/stream/events/EntityDeclaration;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/EntityDeclaration;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/EntityDeclaration;

    .line 236
    .local v0, "entityDecl":Lmf/javax/xml/stream/events/EntityDeclaration;
    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Lmf/javax/xml/stream/events/EntityDeclaration;->getNotationName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 240
    .end local v0    # "entityDecl":Lmf/javax/xml/stream/events/EntityDeclaration;
    :cond_0
    return v1
.end method

.method final processEntityDeclarations(Ljava/util/List;)V
    .locals 5
    .param p1, "entityDecls"    # Ljava/util/List;

    .prologue
    .line 301
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 302
    .local v2, "size":I
    :goto_0
    if-lez v2, :cond_1

    .line 303
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 304
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    .line 306
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_3

    .line 311
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 301
    .end local v2    # "size":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 307
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/EntityDeclaration;

    .line 308
    .local v0, "decl":Lmf/javax/xml/stream/events/EntityDeclaration;
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/EntityDeclaration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method final setup(Lmf/javax/xml/stream/Location;Lmf/javax/xml/transform/stax/StAXResult;Z)V
    .locals 2
    .param p1, "location"    # Lmf/javax/xml/stream/Location;
    .param p2, "result"    # Lmf/javax/xml/transform/stax/StAXResult;
    .param p3, "stringsInternalized"    # Z

    .prologue
    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    .line 287
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    .line 288
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->setupStAXResultHandler(Lmf/javax/xml/transform/stax/StAXResult;)V

    .line 289
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V

    .line 290
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 294
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 295
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 296
    iput-boolean p3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringsInternalized:Z

    .line 297
    return-void
.end method

.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 10
    .param p1, "source"    # Lmf/javax/xml/transform/Source;
    .param p2, "result"    # Lmf/javax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 176
    instance-of v4, p2, Lmf/javax/xml/transform/stax/StAXResult;

    if-nez v4, :cond_0

    if-nez p2, :cond_6

    :cond_0
    move-object v2, p1

    .line 177
    check-cast v2, Lmf/javax/xml/transform/stax/StAXSource;

    .local v2, "staxSource":Lmf/javax/xml/transform/stax/StAXSource;
    move-object v1, p2

    .line 178
    check-cast v1, Lmf/javax/xml/transform/stax/StAXResult;

    .line 180
    .local v1, "staxResult":Lmf/javax/xml/transform/stax/StAXResult;
    :try_start_0
    invoke-virtual {v2}, Lmf/javax/xml/transform/stax/StAXSource;->getXMLStreamReader()Lmf/javax/xml/stream/XMLStreamReader;

    move-result-object v3

    .line 181
    .local v3, "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    if-eqz v3, :cond_3

    .line 183
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStreamHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

    if-nez v4, :cond_1

    .line 184
    new-instance v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

    invoke-direct {v4, p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)V

    iput-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStreamHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

    .line 186
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStreamHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

    invoke-virtual {v4, v3, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->validate(Lmf/javax/xml/stream/XMLStreamReader;Lmf/javax/xml/transform/stax/StAXResult;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :goto_0
    iput-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

    .line 208
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 209
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fXMLStreamReaderLocation:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->setXMLStreamReader(Lmf/javax/xml/stream/XMLStreamReader;)V

    .line 210
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    if-eqz v4, :cond_2

    .line 211
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    invoke-interface {v4, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V

    .line 214
    :cond_2
    return-void

    .line 190
    :cond_3
    :try_start_1
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEventHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

    if-nez v4, :cond_4

    .line 191
    new-instance v4, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

    invoke-direct {v4, p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;-><init>(Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;)V

    iput-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEventHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

    .line 193
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEventHelper:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

    invoke-virtual {v2}, Lmf/javax/xml/transform/stax/StAXSource;->getXMLEventReader()Lmf/javax/xml/stream/XMLEventReader;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->validate(Lmf/javax/xml/stream/XMLEventReader;Lmf/javax/xml/transform/stax/StAXResult;)V
    :try_end_1
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    .end local v3    # "streamReader":Lmf/javax/xml/stream/XMLStreamReader;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lmf/javax/xml/stream/XMLStreamException;
    :try_start_2
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    .end local v0    # "e":Lmf/javax/xml/stream/XMLStreamException;
    :catchall_0
    move-exception v4

    .line 207
    iput-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Lmf/javax/xml/stream/events/XMLEvent;

    .line 208
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    .line 209
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fXMLStreamReaderLocation:Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->setXMLStreamReader(Lmf/javax/xml/stream/XMLStreamReader;)V

    .line 210
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    if-eqz v5, :cond_5

    .line 211
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;

    invoke-interface {v5, v6}, Lmf/org/apache/xerces/jaxp/validation/StAXDocumentHandler;->setStAXResult(Lmf/javax/xml/transform/stax/StAXResult;)V

    .line 213
    :cond_5
    throw v4

    .line 199
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :try_start_3
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v4

    throw v4

    .line 202
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_2
    move-exception v0

    .line 203
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    .end local v0    # "e":Lmf/org/apache/xerces/xni/XNIException;
    .end local v1    # "staxResult":Lmf/javax/xml/transform/stax/StAXResult;
    .end local v2    # "staxSource":Lmf/javax/xml/transform/stax/StAXSource;
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 217
    const-string v6, "SourceResultMismatch"

    .line 218
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 216
    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
