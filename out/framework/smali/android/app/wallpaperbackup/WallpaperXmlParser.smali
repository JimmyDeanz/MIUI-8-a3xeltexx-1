.class public Landroid/app/wallpaperbackup/WallpaperXmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WallpaperXmlParser.java"


# instance fields
.field private itemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/wallpaperbackup/WallpaperUserPOJO;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentElement:Ljava/lang/Boolean;

.field private mCurrentValue:Ljava/lang/String;

.field private mItem:Landroid/app/wallpaperbackup/WallpaperUserPOJO;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 24
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    .line 25
    const-string v5, ""

    iput-object v5, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mCurrentValue:Ljava/lang/String;

    .line 26
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    .line 27
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->itemsList:Ljava/util/ArrayList;

    .line 34
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 35
    .local v3, "saxParserFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 36
    .local v2, "saxParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 37
    .local v4, "xmlReader":Lorg/xml/sax/XMLReader;
    invoke-interface {v4, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 38
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 40
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 41
    .local v1, "objSource":Lorg/xml/sax/InputSource;
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 47
    return-void

    .line 43
    .end local v1    # "objSource":Lorg/xml/sax/InputSource;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v5
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mCurrentValue:Ljava/lang/String;

    .line 105
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    .line 84
    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->setWidth(I)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string/jumbo v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->setHeight(I)V

    goto :goto_0

    .line 90
    :cond_2
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_3
    const-string v0, "component"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->setComponent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/wallpaperbackup/WallpaperUserPOJO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->itemsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getObject()Landroid/app/wallpaperbackup/WallpaperUserPOJO;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mCurrentElement:Ljava/lang/Boolean;

    .line 60
    const-string v1, ""

    iput-object v1, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mCurrentValue:Ljava/lang/String;

    .line 62
    const-string v0, "User"

    .line 64
    .local v0, "objListTag":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    invoke-direct {v1}, Landroid/app/wallpaperbackup/WallpaperUserPOJO;-><init>()V

    iput-object v1, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    .line 66
    iget-object v1, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->itemsList:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/wallpaperbackup/WallpaperXmlParser;->mItem:Landroid/app/wallpaperbackup/WallpaperUserPOJO;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    return-void
.end method
