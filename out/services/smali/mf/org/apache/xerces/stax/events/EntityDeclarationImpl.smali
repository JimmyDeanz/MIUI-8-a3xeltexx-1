.class public final Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "EntityDeclarationImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/EntityDeclaration;


# instance fields
.field private final fName:Ljava/lang/String;

.field private final fNotationName:Ljava/lang/String;

.field private final fPublicId:Ljava/lang/String;

.field private final fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .param p5, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 48
    const/16 v0, 0xf

    invoke-direct {p0, v0, p5}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 49
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fName:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getReplacementText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    const-string v1, "<!ENTITY "

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 104
    const-string v1, " PUBLIC \""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 106
    const-string v1, "\" \""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 115
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 116
    const-string v1, " NDATA "

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    :cond_0
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 124
    return-void

    .line 111
    :cond_1
    const-string v1, " SYSTEM \""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
