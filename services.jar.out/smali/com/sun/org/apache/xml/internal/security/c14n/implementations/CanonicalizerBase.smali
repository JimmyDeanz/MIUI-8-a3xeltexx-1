.class public abstract Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;
.super Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;


# static fields
.field static final COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

.field static final NODE_AFTER_DOCUMENT_ELEMENT:I = 0x1

.field static final NODE_BEFORE_DOCUMENT_ELEMENT:I = -0x1

.field static final NODE_NOT_BEFORE_OR_AFTER_DOCUMENT_ELEMENT:I = 0x0

.field static final XML:Ljava/lang/String; = "xml"

.field static final XMLNS:Ljava/lang/String; = "xmlns"

.field private static final _AMP_:[B

.field private static final _BEGIN_COMM:[B

.field private static final _BEGIN_PI:[B

.field private static final _END_COMM:[B

.field private static final _END_PI:[B

.field private static final _END_TAG:[B

.field private static final _GT_:[B

.field private static final _LT_:[B

.field private static final _QUOT_:[B

.field private static final __X9_:[B

.field private static final __XA_:[B

.field private static final __XD_:[B

.field static final equalsStr:[B

.field protected static final nullNode:Lorg/w3c/dom/Attr;


# instance fields
.field _excludeNode:Lorg/w3c/dom/Node;

.field _includeComments:Z

.field _writer:Ljava/io/OutputStream;

.field _xpathNodeSet:Ljava/util/Set;

.field nodeFilter:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x5

    const/4 v1, 0x2

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_END_PI:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_BEGIN_PI:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_END_COMM:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_BEGIN_COMM:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->__XA_:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->__X9_:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_QUOT_:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->__XD_:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_GT_:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_LT_:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_END_TAG:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_b

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_AMP_:[B

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    new-array v0, v1, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->equalsStr:[B

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v2, "xmlns"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->nullNode:Lorg/w3c/dom/Attr;

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->nullNode:Lorg/w3c/dom/Attr;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable to create nullNode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x3ft
        0x3et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3ct
        0x3ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
        0x3et
    .end array-data

    :array_3
    .array-data 1
        0x3ct
        0x21t
        0x2dt
        0x2dt
    .end array-data

    :array_4
    .array-data 1
        0x26t
        0x23t
        0x78t
        0x41t
        0x3bt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x26t
        0x23t
        0x78t
        0x39t
        0x3bt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x26t
        0x71t
        0x75t
        0x6ft
        0x74t
        0x3bt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x26t
        0x23t
        0x78t
        0x44t
        0x3bt
    .end array-data

    nop

    :array_8
    .array-data 1
        0x26t
        0x67t
        0x74t
        0x3bt
    .end array-data

    :array_9
    .array-data 1
        0x26t
        0x6ct
        0x74t
        0x3bt
    .end array-data

    :array_a
    .array-data 1
        0x3ct
        0x2ft
    .end array-data

    nop

    :array_b
    .array-data 1
        0x26t
        0x61t
        0x6dt
        0x70t
        0x3bt
    .end array-data

    nop

    :array_c
    .array-data 1
        0x3dt
        0x22t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_xpathNodeSet:Ljava/util/Set;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_excludeNode:Lorg/w3c/dom/Node;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_writer:Ljava/io/OutputStream;

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_includeComments:Z

    return-void
.end method

.method private engineCanonicalizeXPathNodeSetInternal(Lorg/w3c/dom/Node;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_writer:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_writer:Ljava/io/OutputStream;

    instance-of v0, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_writer:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->reset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_writer:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static final getParentNameSpaces(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)V
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/Element;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v2, v0, Lorg/w3c/dom/Element;

    if-nez v2, :cond_5

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_3

    invoke-interface {v3, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    const-string/jumbo v5, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_4
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "xml"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_7
    invoke-virtual {p1, v5, v6, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMapping(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    goto :goto_3

    :cond_8
    const-string/jumbo v0, "xmlns"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->getMappingWithoutRendered(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "xmlns"

    const-string v1, ""

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->nullNode:Lorg/w3c/dom/Attr;

    invoke-virtual {p1, v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->addMappingAndRender(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;

    goto/16 :goto_0
.end method

.method static final getPositionRelativeToDocumentElement(Lorg/w3c/dom/Node;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eq v1, p0, :cond_0

    :goto_1
    if-eqz p0, :cond_3

    if-ne p0, v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static final outputAttrToWriter(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p0, p2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->writeStringToUtf8(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->equalsStr:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {v0, p2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->writeCharToUtf8(CLjava/io/OutputStream;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_AMP_:[B

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_LT_:[B

    goto :goto_2

    :sswitch_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_QUOT_:[B

    goto :goto_2

    :sswitch_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->__X9_:[B

    goto :goto_2

    :sswitch_4
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->__XA_:[B

    goto :goto_2

    :sswitch_5
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->__XD_:[B

    goto :goto_2

    :cond_0
    const/16 v0, 0x22

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xd -> :sswitch_5
        0x22 -> :sswitch_2
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
    .end sparse-switch
.end method

.method static final outputCommentToWriter(Lorg/w3c/dom/Comment;Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0xa

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->getPositionRelativeToDocumentElement(Lorg/w3c/dom/Node;)I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_BEGIN_COMM:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->__XD_:[B

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->writeCharToUtf8(CLjava/io/OutputStream;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_END_COMM:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, -0x1

    if-ne v1, v0, :cond_3

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    :cond_3
    return-void
.end method

.method static final outputPItoWriter(Lorg/w3c/dom/ProcessingInstruction;Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->getPositionRelativeToDocumentElement(Lorg/w3c/dom/Node;)I

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_BEGIN_PI:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    sget-object v5, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->__XD_:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v5, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->writeCharToUtf8(CLjava/io/OutputStream;)V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    :goto_2
    if-ge v0, v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_3

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->__XD_:[B

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v4, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->writeCharToUtf8(CLjava/io/OutputStream;)V

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_END_PI:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, -0x1

    if-ne v2, v0, :cond_5

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    :cond_5
    return-void
.end method

.method static final outputTextToWriter(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->writeCharToUtf8(CLjava/io/OutputStream;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_AMP_:[B

    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_LT_:[B

    goto :goto_2

    :sswitch_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_GT_:[B

    goto :goto_2

    :sswitch_3
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->__XD_:[B

    goto :goto_2

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method static final writeCharToUtf8(CLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x7ff

    if-le p0, v0, :cond_3

    ushr-int/lit8 v0, p0, 0xc

    int-to-char v1, v0

    const/16 v0, 0xe0

    if-lez v1, :cond_1

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x80

    const/16 v1, 0x3f

    :goto_1
    ushr-int/lit8 v2, p0, 0x6

    int-to-char v2, v2

    if-lez v2, :cond_2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, p0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xc0

    const/16 v1, 0x1f

    goto :goto_1
.end method

.method static final writeStringToUtf8(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x7f

    if-gt v4, v0, :cond_0

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x7ff

    if-le v4, v0, :cond_3

    ushr-int/lit8 v0, v4, 0xc

    int-to-char v1, v0

    const/16 v0, 0xe0

    if-lez v1, :cond_1

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x80

    const/16 v1, 0x3f

    :goto_1
    ushr-int/lit8 v5, v4, 0x6

    int-to-char v5, v5

    if-lez v5, :cond_2

    and-int/2addr v1, v5

    or-int/2addr v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v4, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    move v0, v2

    goto :goto_0

    :cond_3
    const/16 v0, 0xc0

    const/16 v1, 0x1f

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method final canonicalizeSubTree(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;Lorg/w3c/dom/Node;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v11, 0x3e

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_writer:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_excludeNode:Lorg/w3c/dom/Node;

    iget-boolean v7, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_includeComments:Z

    move-object v3, v4

    move-object v1, v4

    move-object v0, p1

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object p1, v1

    move-object v1, v3

    :cond_0
    :goto_1
    if-nez p1, :cond_5

    if-eqz v1, :cond_5

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_END_TAG:[B

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->writeStringToUtf8(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {v5, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->outputNodePop()V

    if-ne v1, p3, :cond_4

    :cond_1
    return-void

    :pswitch_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v1, "empty"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->outputNodePush()V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object p1, v1

    move-object v1, v3

    goto :goto_1

    :pswitch_3
    if-eqz v7, :cond_7

    check-cast v0, Lorg/w3c/dom/Comment;

    invoke-static {v0, v5}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->outputCommentToWriter(Lorg/w3c/dom/Comment;Ljava/io/OutputStream;)V

    move-object p1, v1

    move-object v1, v3

    goto :goto_1

    :pswitch_4
    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-static {v0, v5}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->outputPItoWriter(Lorg/w3c/dom/ProcessingInstruction;Ljava/io/OutputStream;)V

    move-object p1, v1

    move-object v1, v3

    goto :goto_1

    :pswitch_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->outputTextToWriter(Ljava/lang/String;Ljava/io/OutputStream;)V

    move-object p1, v1

    move-object v1, v3

    goto :goto_1

    :pswitch_6
    if-ne v0, v6, :cond_2

    move-object p1, v1

    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->outputNodePush()V

    const/16 v2, 0x3c

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->writeStringToUtf8(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->handleAttributesSubtree(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;

    move-result-object v9

    if-eqz v9, :cond_3

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v5}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->outputAttrToWriter(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_END_TAG:[B

    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v8, v5}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->writeStringToUtf8(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {v5, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->outputNodePop()V

    if-eqz v3, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object p1, v1

    move-object v1, v3

    goto/16 :goto_1

    :cond_4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v0, v3, Lorg/w3c/dom/Element;

    if-nez v0, :cond_8

    move-object v1, v4

    goto/16 :goto_1

    :cond_5
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_0

    :cond_6
    move-object v1, v3

    goto/16 :goto_1

    :cond_7
    move-object p1, v1

    move-object v1, v3

    goto/16 :goto_1

    :cond_8
    move-object v1, v3

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method final canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x3e

    const/4 v4, 0x0

    new-instance v6, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;

    invoke-direct {v6}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;-><init>()V

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_writer:Ljava/io/OutputStream;

    move-object v3, v4

    move-object v1, v4

    move-object v0, p1

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object p1, v1

    move-object v1, v3

    :cond_0
    :goto_1
    if-nez p1, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_END_TAG:[B

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->writeStringToUtf8(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {v7, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->outputNodePop()V

    :goto_2
    if-ne v1, p2, :cond_9

    :cond_1
    return-void

    :pswitch_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v1, "empty"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->outputNodePush()V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object p1, v1

    move-object v1, v3

    goto :goto_1

    :pswitch_3
    iget-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_includeComments:Z

    if-eqz v2, :cond_c

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_c

    check-cast v0, Lorg/w3c/dom/Comment;

    invoke-static {v0, v7}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->outputCommentToWriter(Lorg/w3c/dom/Comment;Ljava/io/OutputStream;)V

    move-object p1, v1

    move-object v1, v3

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_c

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-static {v0, v7}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->outputPItoWriter(Lorg/w3c/dom/ProcessingInstruction;Ljava/io/OutputStream;)V

    move-object p1, v1

    move-object v1, v3

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->outputTextToWriter(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->outputTextToWriter(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object p1, v1

    move-object v1, v3

    goto/16 :goto_1

    :pswitch_6
    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->isVisible(Lorg/w3c/dom/Node;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->outputNodePush()V

    const/16 v2, 0x3c

    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->writeStringToUtf8(Ljava/lang/String;Ljava/io/OutputStream;)V

    move-object v5, v2

    :goto_4
    invoke-virtual {p0, v1, v6}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->handleAttributes(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;

    move-result-object v9

    if-eqz v9, :cond_5

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v7}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->outputAttrToWriter(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->push()V

    move-object v5, v4

    goto :goto_4

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v7, v11}, Ljava/io/OutputStream;->write(I)V

    :cond_6
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz v8, :cond_7

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_END_TAG:[B

    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v5, v7}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->writeStringToUtf8(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {v7, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->outputNodePop()V

    :goto_6
    if-eqz v3, :cond_b

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object p1, v1

    move-object v1, v3

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->pop()V

    goto :goto_6

    :cond_8
    invoke-virtual {v6}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->pop()V

    goto/16 :goto_2

    :cond_9
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v0, v3, Lorg/w3c/dom/Element;

    if-nez v0, :cond_d

    move-object v1, v4

    goto/16 :goto_1

    :cond_a
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_0

    :cond_b
    move-object v1, v3

    goto/16 :goto_1

    :cond_c
    move-object p1, v1

    move-object v1, v3

    goto/16 :goto_1

    :cond_d
    move-object v1, v3

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public engineCanonicalize(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isExcludeComments()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_includeComments:Z

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isOctetStream()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->engineCanonicalize([B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isElement()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getExcludeNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getNodeFilters()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->nodeFilter:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNeedsToBeExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->circumventBug2650(Lorg/w3c/dom/Document;)V

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalizeXPathNodeSetInternal(Lorg/w3c/dom/Node;)[B

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getNodeSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Ljava/util/Set;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getNodeSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalizeXPathNodeSet(Ljava/util/Set;)[B
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public engineCanonicalizeSubTree(Lorg/w3c/dom/Node;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)[B

    move-result-object v0

    return-object v0
.end method

.method engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_excludeNode:Lorg/w3c/dom/Node;

    :try_start_0
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;-><init>()V

    instance-of v1, p1, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    invoke-static {v1, v2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->getParentNameSpaces(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)V

    :cond_0
    invoke-virtual {p0, p1, v2, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->canonicalizeSubTree(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;Lorg/w3c/dom/Node;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_writer:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_writer:Ljava/io/OutputStream;

    instance-of v1, v1, Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_writer:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->reset:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_writer:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    move-object v1, v2

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public engineCanonicalizeXPathNodeSet(Ljava/util/Set;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_xpathNodeSet:Ljava/util/Set;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_xpathNodeSet:Ljava/util/Set;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Ljava/util/Set;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalizeXPathNodeSetInternal(Lorg/w3c/dom/Node;)[B

    move-result-object v0

    return-object v0
.end method

.method abstract handleAttributes(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation
.end method

.method abstract handleAttributesSubtree(Lorg/w3c/dom/Element;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation
.end method

.method isVisible(Lorg/w3c/dom/Node;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->nodeFilter:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->nodeFilter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;->isNodeInclude(Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_xpathNodeSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWriter(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->_writer:Ljava/io/OutputStream;

    return-void
.end method
