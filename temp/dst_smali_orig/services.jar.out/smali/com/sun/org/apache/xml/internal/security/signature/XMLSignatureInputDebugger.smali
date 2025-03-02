.class public Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;
.super Ljava/lang/Object;


# static fields
.field static final ATTR_COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

.field static final HTMLExcludePrefix:Ljava/lang/String; = "<span class=\"EXCLUDED\">"

.field static final HTMLExcludeSuffix:Ljava/lang/String; = "</span>"

.field static final HTMLExcludedInclusiveNamespacePrefix:Ljava/lang/String; = "<span class=\"EXCLUDEDINCLUSIVENAMESPACE\">"

.field static final HTMLExcludedInclusiveNamespaceSuffix:Ljava/lang/String; = "</span>"

.field static final HTMLIncludePrefix:Ljava/lang/String; = "<span class=\"INCLUDED\">"

.field static final HTMLIncludeSuffix:Ljava/lang/String; = "</span>"

.field static final HTMLIncludedInclusiveNamespacePrefix:Ljava/lang/String; = "<span class=\"INCLUDEDINCLUSIVENAMESPACE\">"

.field static final HTMLIncludedInclusiveNamespaceSuffix:Ljava/lang/String; = "</span>"

.field static final HTMLPrefix:Ljava/lang/String; = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n<html>\n<head>\n<title>Caninical XML node set</title>\n<style type=\"text/css\">\n<!-- \n.INCLUDED { \n   color: #000000; \n   background-color: \n   #FFFFFF; \n   font-weight: bold; } \n.EXCLUDED { \n   color: #666666; \n   background-color: \n   #999999; } \n.INCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #FFFFFF; \n   font-weight: bold; \n   font-style: italic; } \n.EXCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #999999; \n   font-style: italic; } \n--> \n</style> \n</head>\n<body bgcolor=\"#999999\">\n<h1>Explanation of the output</h1>\n<p>The following text contains the nodeset of the given Reference before it is canonicalized. There exist four different styles to indicate how a given node is treated.</p>\n<ul>\n<li class=\"INCLUDED\">A node which is in the node set is labeled using the INCLUDED style.</li>\n<li class=\"EXCLUDED\">A node which is <em>NOT</em> in the node set is labeled EXCLUDED style.</li>\n<li class=\"INCLUDEDINCLUSIVENAMESPACE\">A namespace which is in the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n<li class=\"EXCLUDEDINCLUSIVENAMESPACE\">A namespace which is in NOT the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n</ul>\n<h1>Output</h1>\n<pre>\n"

.field static final HTMLSuffix:Ljava/lang/String; = "</pre></body></html>"

.field private static final NODE_AFTER_DOCUMENT_ELEMENT:I = 0x1

.field private static final NODE_BEFORE_DOCUMENT_ELEMENT:I = -0x1

.field private static final NODE_NOT_BEFORE_OR_AFTER_DOCUMENT_ELEMENT:I


# instance fields
.field private _doc:Lorg/w3c/dom/Document;

.field private _inclusiveNamespaces:Ljava/util/Set;

.field private _writer:Ljava/io/Writer;

.field private _xpathNodeSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->ATTR_COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_doc:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_doc:Lorg/w3c/dom/Document;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;-><init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)V

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_inclusiveNamespaces:Ljava/util/Set;

    return-void
.end method

.method private canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "empty"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n<html>\n<head>\n<title>Caninical XML node set</title>\n<style type=\"text/css\">\n<!-- \n.INCLUDED { \n   color: #000000; \n   background-color: \n   #FFFFFF; \n   font-weight: bold; } \n.EXCLUDED { \n   color: #666666; \n   background-color: \n   #999999; } \n.INCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #FFFFFF; \n   font-weight: bold; \n   font-style: italic; } \n.EXCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #999999; \n   font-style: italic; } \n--> \n</style> \n</head>\n<body bgcolor=\"#999999\">\n<h1>Explanation of the output</h1>\n<p>The following text contains the nodeset of the given Reference before it is canonicalized. There exist four different styles to indicate how a given node is treated.</p>\n<ul>\n<li class=\"INCLUDED\">A node which is in the node set is labeled using the INCLUDED style.</li>\n<li class=\"EXCLUDED\">A node which is <em>NOT</em> in the node set is labeled EXCLUDED style.</li>\n<li class=\"INCLUDEDINCLUSIVENAMESPACE\">A namespace which is in the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n<li class=\"EXCLUDEDINCLUSIVENAMESPACE\">A namespace which is in NOT the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n</ul>\n<h1>Output</h1>\n<pre>\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "</pre></body></html>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "<span class=\"INCLUDED\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->getPositionRelativeToDocumentElement(Lorg/w3c/dom/Node;)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Comment;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->outputCommentToWriter(Lorg/w3c/dom/Comment;)V

    if-ne v1, v3, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "<span class=\"EXCLUDED\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "<span class=\"INCLUDED\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->getPositionRelativeToDocumentElement(Lorg/w3c/dom/Node;)I

    move-result v1

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_5
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->outputPItoWriter(Lorg/w3c/dom/ProcessingInstruction;)V

    if-ne v1, v3, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "<span class=\"EXCLUDED\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "<span class=\"INCLUDED\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->outputTextToWriter(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->outputTextToWriter(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "<span class=\"EXCLUDED\">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "<span class=\"INCLUDED\">"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_6
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "</span>"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_7
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    new-array v5, v4, [Ljava/lang/Object;

    move v2, v1

    :goto_8
    if-ge v2, v4, :cond_f

    invoke-interface {v3, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "<span class=\"EXCLUDED\">"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "</span>"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->ATTR_COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    invoke-static {v5, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v2, v1

    :goto_9
    if-ge v2, v4, :cond_16

    aget-object v1, v5, v2

    check-cast v1, Lorg/w3c/dom/Attr;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_inclusiveNamespaces:Ljava/util/Set;

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v3, :cond_11

    if-eqz v6, :cond_10

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v8, "<span class=\"INCLUDEDINCLUSIVENAMESPACE\">"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_a
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->outputAttrToWriter(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_14

    if-eqz v6, :cond_13

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "</span>"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9

    :cond_10
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v8, "<span class=\"INCLUDED\">"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    if-eqz v6, :cond_12

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v8, "<span class=\"EXCLUDEDINCLUSIVENAMESPACE\">"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v8, "<span class=\"EXCLUDED\">"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "</span>"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_b

    :cond_14
    if-eqz v6, :cond_15

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "</span>"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "</span>"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v2, "<span class=\"INCLUDED\">"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_c
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v2, "&gt;"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v2, "</span>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_e
    if-eqz v1, :cond_19

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;)V

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_e

    :cond_17
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v2, "<span class=\"EXCLUDED\">"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_c

    :cond_18
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v2, "</span>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_d

    :cond_19
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v2, "<span class=\"INCLUDED\">"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_f
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v2, "&lt;/"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v2, "<span class=\"EXCLUDED\">"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_f

    :cond_1b
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

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
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPositionRelativeToDocumentElement(Lorg/w3c/dom/Node;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    if-ne v2, v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    :goto_1
    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private outputAttrToWriter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&amp;amp;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&amp;lt;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&amp;quot;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&amp;#x9;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&amp;#xA;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&amp;#xD;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    nop

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

.method private outputCommentToWriter(Lorg/w3c/dom/Comment;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "&lt;!--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v4, "&amp;#xD;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_1
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v4, "&middot;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_2
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v4, "&para;\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "--&gt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private outputPItoWriter(Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v2, "&lt;?"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v5, "&amp;#xD;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_1
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v5, "&middot;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_2
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v5, "&para;\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v1, :cond_2

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_3
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v4, "&amp;#xD;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v1, "?&gt;"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private outputTextToWriter(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&amp;amp;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&amp;lt;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&amp;gt;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&amp;#xD;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&middot;"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string v3, "&para;\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xd -> :sswitch_3
        0x20 -> :sswitch_4
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getHTMLRepresentation()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n<html>\n<head>\n<title>Caninical XML node set</title>\n<style type=\"text/css\">\n<!-- \n.INCLUDED { \n   color: #000000; \n   background-color: \n   #FFFFFF; \n   font-weight: bold; } \n.EXCLUDED { \n   color: #666666; \n   background-color: \n   #999999; } \n.INCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #FFFFFF; \n   font-weight: bold; \n   font-style: italic; } \n.EXCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #999999; \n   font-style: italic; } \n--> \n</style> \n</head>\n<body bgcolor=\"#999999\">\n<h1>Explanation of the output</h1>\n<p>The following text contains the nodeset of the given Reference before it is canonicalized. There exist four different styles to indicate how a given node is treated.</p>\n<ul>\n<li class=\"INCLUDED\">A node which is in the node set is labeled using the INCLUDED style.</li>\n<li class=\"EXCLUDED\">A node which is <em>NOT</em> in the node set is labeled EXCLUDED style.</li>\n<li class=\"INCLUDEDINCLUSIVENAMESPACE\">A namespace which is in the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n<li class=\"EXCLUDEDINCLUSIVENAMESPACE\">A namespace which is in NOT the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n</ul>\n<h1>Output</h1>\n<pre>\n<blink>no node set, sorry</blink></pre></body></html>"

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_doc:Lorg/w3c/dom/Document;

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_doc:Lorg/w3c/dom/Document;

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_doc:Lorg/w3c/dom/Document;

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    throw v0
.end method
