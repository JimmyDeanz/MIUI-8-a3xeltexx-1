.class public abstract Lmf/javax/xml/stream/XMLEventFactory;
.super Ljava/lang/Object;
.source "XMLEventFactory.java"


# static fields
.field static final DEFAULIMPL:Ljava/lang/String; = "com.sun.xml.internal.stream.events.XMLEventFactoryImpl"

.field static final JAXPFACTORYID:Ljava/lang/String; = "mf.javax.xml.stream.XMLEventFactory"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFactory()Lmf/javax/xml/stream/XMLEventFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 109
    const-string/jumbo v0, "mf.javax.xml.stream.XMLEventFactory"

    .line 110
    const-string v1, "com.sun.xml.internal.stream.events.XMLEventFactoryImpl"

    .line 108
    invoke-static {v0, v1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/XMLEventFactory;

    return-object v0
.end method

.method public static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/stream/XMLEventFactory;
    .locals 4
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/stream/XMLEventFactory;
    :try_end_0
    .catch Lmf/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 163
    invoke-virtual {v0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-direct {v1, v2, v3}, Lmf/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance()Lmf/javax/xml/stream/XMLEventFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 76
    const-string/jumbo v0, "mf.javax.xml.stream.XMLEventFactory"

    .line 77
    const-string v1, "com.sun.xml.internal.stream.events.XMLEventFactoryImpl"

    .line 75
    invoke-static {v0, v1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/XMLEventFactory;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/stream/XMLEventFactory;
    .locals 4
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lmf/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/stream/XMLEventFactory;
    :try_end_0
    .catch Lmf/javax/xml/stream/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 136
    invoke-virtual {v0}, Lmf/javax/xml/stream/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-direct {v1, v2, v3}, Lmf/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract createAttribute(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/Attribute;
.end method

.method public abstract createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/Attribute;
.end method

.method public abstract createAttribute(Lmf/javax/xml/namespace/QName;Ljava/lang/String;)Lmf/javax/xml/stream/events/Attribute;
.end method

.method public abstract createCData(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;
.end method

.method public abstract createCharacters(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;
.end method

.method public abstract createComment(Ljava/lang/String;)Lmf/javax/xml/stream/events/Comment;
.end method

.method public abstract createDTD(Ljava/lang/String;)Lmf/javax/xml/stream/events/DTD;
.end method

.method public abstract createEndDocument()Lmf/javax/xml/stream/events/EndDocument;
.end method

.method public abstract createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/EndElement;
.end method

.method public abstract createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/EndElement;
.end method

.method public abstract createEndElement(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/EndElement;
.end method

.method public abstract createEntityReference(Ljava/lang/String;Lmf/javax/xml/stream/events/EntityDeclaration;)Lmf/javax/xml/stream/events/EntityReference;
.end method

.method public abstract createIgnorableSpace(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;
.end method

.method public abstract createNamespace(Ljava/lang/String;)Lmf/javax/xml/stream/events/Namespace;
.end method

.method public abstract createNamespace(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/Namespace;
.end method

.method public abstract createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/ProcessingInstruction;
.end method

.method public abstract createSpace(Ljava/lang/String;)Lmf/javax/xml/stream/events/Characters;
.end method

.method public abstract createStartDocument()Lmf/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartDocument(Ljava/lang/String;)Lmf/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartDocument(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Lmf/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/StartElement;
.end method

.method public abstract createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/StartElement;
.end method

.method public abstract createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Lmf/javax/xml/namespace/NamespaceContext;)Lmf/javax/xml/stream/events/StartElement;
.end method

.method public abstract createStartElement(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Lmf/javax/xml/stream/events/StartElement;
.end method

.method public abstract setLocation(Lmf/javax/xml/stream/Location;)V
.end method
