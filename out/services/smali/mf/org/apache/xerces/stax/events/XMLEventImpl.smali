.class abstract Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.super Ljava/lang/Object;
.source "XMLEventImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/XMLEvent;


# instance fields
.field private fEventType:I

.field private fLocation:Lmf/javax/xml/stream/Location;


# direct methods
.method constructor <init>(ILmf/javax/xml/stream/Location;)V
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    .line 58
    if-eqz p2, :cond_0

    .line 59
    new-instance v0, Lmf/org/apache/xerces/stax/ImmutableLocation;

    invoke-direct {v0, p2}, Lmf/org/apache/xerces/stax/ImmutableLocation;-><init>(Lmf/javax/xml/stream/Location;)V

    iput-object v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fLocation:Lmf/javax/xml/stream/Location;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/stax/EmptyLocation;->getInstance()Lmf/org/apache/xerces/stax/EmptyLocation;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fLocation:Lmf/javax/xml/stream/Location;

    goto :goto_0
.end method


# virtual methods
.method public final asCharacters()Lmf/javax/xml/stream/events/Characters;
    .locals 0

    .prologue
    .line 163
    check-cast p0, Lmf/javax/xml/stream/events/Characters;

    .end local p0    # "this":Lmf/org/apache/xerces/stax/events/XMLEventImpl;
    return-object p0
.end method

.method public final asEndElement()Lmf/javax/xml/stream/events/EndElement;
    .locals 0

    .prologue
    .line 156
    check-cast p0, Lmf/javax/xml/stream/events/EndElement;

    .end local p0    # "this":Lmf/org/apache/xerces/stax/events/XMLEventImpl;
    return-object p0
.end method

.method public final asStartElement()Lmf/javax/xml/stream/events/StartElement;
    .locals 0

    .prologue
    .line 149
    check-cast p0, Lmf/javax/xml/stream/events/StartElement;

    .end local p0    # "this":Lmf/org/apache/xerces/stax/events/XMLEventImpl;
    return-object p0
.end method

.method public final getEventType()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    return v0
.end method

.method public final getLocation()Lmf/javax/xml/stream/Location;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fLocation:Lmf/javax/xml/stream/Location;

    return-object v0
.end method

.method public final getSchemaType()Lmf/javax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAttribute()Z
    .locals 2

    .prologue
    .line 91
    const/16 v0, 0xa

    iget v1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCharacters()Z
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x4

    iget v1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-eq v0, v1, :cond_0

    .line 127
    const/16 v0, 0xc

    iget v1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-eq v0, v1, :cond_0

    .line 128
    const/4 v0, 0x6

    iget v1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-eq v0, v1, :cond_0

    .line 126
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isEndDocument()Z
    .locals 2

    .prologue
    .line 142
    const/16 v0, 0x8

    iget v1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEndElement()Z
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x2

    iget v1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEntityReference()Z
    .locals 2

    .prologue
    .line 112
    const/16 v0, 0x9

    iget v1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNamespace()Z
    .locals 2

    .prologue
    .line 98
    const/16 v0, 0xd

    iget v1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isProcessingInstruction()Z
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x3

    iget v1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStartDocument()Z
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x7

    iget v1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStartElement()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 84
    iget v1, p0, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 176
    .local v0, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;->writeAsEncodedUnicode(Ljava/io/Writer;)V
    :try_end_0
    .catch Lmf/javax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 178
    :catch_0
    move-exception v1

    goto :goto_0
.end method
