.class public Lmf/org/apache/xerces/xinclude/XIncludeHandler;
.super Ljava/lang/Object;
.source "XIncludeHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;,
        Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    }
.end annotation


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final BUFFER_SIZE:Ljava/lang/String; = "http://apache.org/xml/properties/input-buffer-size"

.field public static final CURRENT_BASE_URI:Ljava/lang/String; = "currentBaseURI"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field public static final HTTP_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HTTP_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final INITIAL_SIZE:I = 0x8

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field private static final NEW_NS_ATTR_QNAME:Lmf/org/apache/xerces/xni/QName;

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final STATE_EXPECT_FALLBACK:I = 0x3

.field private static final STATE_IGNORE:I = 0x2

.field private static final STATE_NORMAL_PROCESSING:I = 0x1

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_HREF:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_PARSE:Ljava/lang/String;

.field private static final XINCLUDE_BASE:Ljava/lang/String;

.field public static final XINCLUDE_DEFAULT_CONFIGURATION:Ljava/lang/String; = "mf.org.apache.xerces.parsers.XIncludeParserConfiguration"

.field public static final XINCLUDE_FALLBACK:Ljava/lang/String;

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field public static final XINCLUDE_INCLUDE:Ljava/lang/String;

.field public static final XINCLUDE_INCLUDED:Ljava/lang/String;

.field private static final XINCLUDE_LANG:Ljava/lang/String;

.field public static final XINCLUDE_NS_URI:Ljava/lang/String;

.field public static final XINCLUDE_PARSE_TEXT:Ljava/lang/String;

.field public static final XINCLUDE_PARSE_XML:Ljava/lang/String;

.field private static final XML_BASE_QNAME:Lmf/org/apache/xerces/xni/QName;

.field private static final XML_LANG_QNAME:Lmf/org/apache/xerces/xni/QName;

.field public static final XPOINTER:Ljava/lang/String; = "xpointer"

.field private static final gAfterEscaping1:[C

.field private static final gAfterEscaping2:[C

.field private static final gHexChs:[C

.field private static final gNeedEscaping:[Z


# instance fields
.field protected final fBaseURI:Ljava/util/Stack;

.field protected final fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

.field protected fBufferSize:I

.field protected fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

.field protected final fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

.field protected fCurrentLanguage:Ljava/lang/String;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field protected fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

.field private fDepth:I

.field protected fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected final fExpandedSystemID:Ljava/util/Stack;

.field private fFixupBaseURIs:Z

.field private fFixupLanguage:Z

.field fHasIncludeReportedContent:Z

.field protected fHrefFromParent:Ljava/lang/String;

.field private fInDTD:Z

.field private fIsXML11:Z

.field protected final fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

.field protected final fLanguageStack:Ljava/util/Stack;

.field protected final fLiteralSystemID:Ljava/util/Stack;

.field protected fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

.field private fNeedCopyFeatures:Z

.field private final fNotations:Ljava/util/ArrayList;

.field protected fParentRelativeURI:Ljava/lang/String;

.field protected fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

.field private fResultDepth:I

.field private fSawFallback:[Z

.field private fSawInclude:[Z

.field protected fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

.field private fSeenRootElement:Z

.field private fSendUEAndNotationEvents:Z

.field protected fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

.field private fState:[I

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fUnparsedEntities:Ljava/util/ArrayList;

.field protected fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

.field protected fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

.field protected fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

.field protected fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

.field protected fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

.field protected fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

.field protected fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x80

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    const-string v4, "http://www.w3.org/2001/XInclude"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    const-string v4, "include"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    const-string v4, "fallback"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_FALLBACK:Ljava/lang/String;

    const-string v4, "xml"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    const-string v4, "text"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_TEXT:Ljava/lang/String;

    const-string v4, "href"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_HREF:Ljava/lang/String;

    const-string v4, "parse"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_PARSE:Ljava/lang/String;

    const-string v4, "encoding"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

    const-string v4, "accept"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

    const-string v4, "accept-language"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

    const-string v4, "[included]"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDED:Ljava/lang/String;

    const-string v4, "base"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XML_BASE_QNAME:Lmf/org/apache/xerces/xni/QName;

    const-string v4, "lang"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XML_LANG_QNAME:Lmf/org/apache/xerces/xni/QName;

    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lmf/org/apache/xerces/xni/QName;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    aput-object v5, v4, v11

    const-string v5, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    aput-object v5, v4, v9

    const-string v5, "http://apache.org/xml/features/xinclude/fixup-language"

    aput-object v5, v4, v12

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v11

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v9

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v12

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v5, v4, v11

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v5, v4, v9

    const-string v5, "http://apache.org/xml/properties/security-manager"

    aput-object v5, v4, v12

    const-string v5, "http://apache.org/xml/properties/input-buffer-size"

    aput-object v5, v4, v10

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    const/16 v6, 0x800

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v10

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    new-array v4, v13, [Z

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    new-array v4, v13, [C

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    new-array v4, v13, [C

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    const/16 v4, 0x10

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    const/16 v4, 0xa

    new-array v1, v4, [C

    fill-array-data v1, :array_1

    .local v1, "escChs":[C
    array-length v3, v1

    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    aget-char v0, v1, v2

    .local v0, "ch":C
    sget-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    aput-boolean v9, v4, v0

    sget-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    sget-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x60s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    iput-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    new-instance v0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iput-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aput-boolean v3, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aput-boolean v3, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aput v2, v0, v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    new-instance v0, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    new-instance v0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    new-instance v0, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    iput-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    return-void
.end method

.method private checkMultipleRootElements()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRootElementProcessed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultipleRootElements"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setRootElementProcessed(Z)V

    return-void
.end method

.method private checkWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 4
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;

    .prologue
    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v0, v2, v3

    .local v0, "end":I
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v2, v2, v1

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ContentIllegalAtTopLevel"

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V
    .locals 3
    .param p1, "features"    # Ljava/util/Enumeration;
    .param p2, "featurePrefix"    # Ljava/lang/String;
    .param p3, "from"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .param p4, "to"    # Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    .prologue
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "featureId":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p4, v1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p3, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 4
    .param p1, "features"    # Ljava/util/Enumeration;
    .param p2, "featurePrefix"    # Ljava/lang/String;
    .param p3, "from"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .param p4, "to"    # Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .prologue
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "featureId":Ljava/lang/String;
    invoke-interface {p3, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    .local v1, "value":Z
    :try_start_0
    invoke-interface {p4, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 2
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .param p3, "baseSystemId"    # Ljava/lang/String;
    .param p4, "accept"    # Ljava/lang/String;
    .param p5, "acceptLanguage"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lmf/org/apache/xerces/util/HTTPInputSource;

    invoke-direct {v0, p1, p2, p3}, Lmf/org/apache/xerces/util/HTTPInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "httpSource":Lmf/org/apache/xerces/util/HTTPInputSource;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "Accept"

    invoke-virtual {v0, v1, p4}, Lmf/org/apache/xerces/util/HTTPInputSource;->setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "Accept-Language"

    invoke-virtual {v0, v1, p5}, Lmf/org/apache/xerces/util/HTTPInputSource;->setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private escapeHref(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x7e

    const/16 v12, 0x20

    const/16 v11, 0x25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, "len":I
    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v9, v8, 0x3

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v8, :cond_3

    :cond_0
    if-ge v6, v8, :cond_1

    move v7, v6

    .local v7, "j":I
    :goto_1
    if-lt v7, v8, :cond_5

    const/4 v2, 0x0

    .local v2, "bytes":[B
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    array-length v8, v2

    const/4 v6, 0x0

    :goto_2
    if-lt v6, v8, :cond_b

    .end local v2    # "bytes":[B
    .end local v7    # "j":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-eq v9, v8, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "href":Ljava/lang/String;
    :cond_2
    :goto_3
    return-object p1

    .restart local p1    # "href":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, "ch":I
    if-gt v3, v13, :cond_0

    if-lt v3, v12, :cond_2

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    aget-boolean v9, v9, v3

    if-eqz v9, :cond_4

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    aget-char v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    aget-char v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    int-to-char v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .end local v3    # "ch":I
    .restart local v7    # "j":I
    :cond_5
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .restart local v3    # "ch":I
    if-lt v3, v12, :cond_6

    if-le v3, v13, :cond_9

    :cond_6
    const/16 v9, 0xa0

    if-lt v3, v9, :cond_7

    const v9, 0xd7ff

    if-le v3, v9, :cond_9

    :cond_7
    const v9, 0xf900

    if-lt v3, v9, :cond_8

    const v9, 0xfdcf

    if-le v3, v9, :cond_9

    :cond_8
    const v9, 0xfdf0

    if-lt v3, v9, :cond_a

    const v9, 0xffef

    if-gt v3, v9, :cond_a

    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_a
    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v8, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, "ch2":I
    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_2

    int-to-char v9, v3

    int-to-char v10, v4

    invoke-static {v9, v10}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v4

    const/high16 v9, 0xf0000

    if-ge v4, v9, :cond_2

    const v9, 0xffff

    and-int/2addr v9, v4

    const v10, 0xfffd

    if-gt v9, v10, :cond_2

    goto :goto_5

    .end local v3    # "ch":I
    .end local v4    # "ch2":I
    .restart local v2    # "bytes":[B
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_3

    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_b
    aget-byte v0, v2, v6

    .local v0, "b":B
    if-gez v0, :cond_c

    add-int/lit16 v3, v0, 0x100

    .restart local v3    # "ch":I
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    shr-int/lit8 v10, v3, 0x4

    aget-char v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    and-int/lit8 v10, v3, 0xf

    aget-char v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local v3    # "ch":I
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_c
    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    aget-boolean v9, v9, v0

    if-eqz v9, :cond_d

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    aget-char v9, v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    aget-char v9, v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_d
    int-to-char v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6
.end method

.method private getIncludeParentBaseURI()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v0

    .local v0, "depth":I
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentBaseURI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getBaseURI(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getIncludeParentDepth()I
    .locals 2

    .prologue
    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .end local v0    # "i":I
    :cond_0
    return v0

    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getIncludeParentLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v0

    .local v0, "depth":I
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentLanguage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getLanguage(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getResultDepth()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    return v0
.end method

.method private getRootElementProcessed()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRootElementProcessed()Z

    move-result v0

    goto :goto_0
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "one"    # Ljava/lang/String;
    .param p2, "two"    # Ljava/lang/String;

    .prologue
    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidInHTTPHeader(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/16 v2, 0x20

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7e

    if-le v0, v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private reportError(Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "severity"    # S
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xinclude"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private scopeOfBaseURI(I)I
    .locals 2
    .param p1, "depth"    # I

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/IntStack;->elementAt(I)I

    move-result v1

    if-le v1, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private scopeOfLanguage(I)I
    .locals 2
    .param p1, "depth"    # I

    .prologue
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/IntStack;->elementAt(I)I

    move-result v1

    if-le v1, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 3
    .param p1, "reporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/xinclude"

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    :cond_0
    return-void
.end method

.method private setRootElementProcessed(Z)V
    .locals 1
    .param p1, "seenRoot"    # Z

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setRootElementProcessed(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected addNotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;-><init>()V

    .local v0, "not":Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;
    iput-object p1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->systemId:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->publicId:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->baseURI:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->expandedSystemId:Ljava/lang/String;

    iput-object p3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addUnparsedEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "notation"    # Ljava/lang/String;
    .param p4, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;-><init>()V

    .local v0, "ent":Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    iput-object p1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->systemId:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->publicId:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->baseURI:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->expandedSystemId:Ljava/lang/String;

    iput-object p3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    iput-object p4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "enumeration"    # [Ljava/lang/String;
    .param p5, "defaultType"    # Ljava/lang/String;
    .param p6, "defaultValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p7, "nonNormalizedDefaultValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p8, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    goto :goto_0
.end method

.method protected checkAndSendNotation(Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;)V
    .locals 7
    .param p1, "not"    # Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    new-instance v0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v3, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->publicId:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->systemId:Ljava/lang/String;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->baseURI:Ljava/lang/String;

    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->expandedSystemId:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v6}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "id":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    iget-object v3, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-virtual {p0, v3, v0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->addNotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-boolean v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v3, v4, v0, v5}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .end local v0    # "id":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "index":I
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    .local v2, "localNotation":Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->isDuplicate(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NonDuplicateNotation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "index":I
    .end local v2    # "localNotation":Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkAndSendNotation(Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;)V

    goto :goto_0
.end method

.method protected checkAndSendUnparsedEntity(Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;)V
    .locals 7
    .param p1, "ent"    # Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    new-instance v0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v3, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->publicId:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->systemId:Ljava/lang/String;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->baseURI:Ljava/lang/String;

    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->expandedSystemId:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v6}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "id":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    iget-object v3, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-virtual {p0, v3, v0, v4, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->addUnparsedEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-boolean v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v3, v4, v0, v5, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .end local v0    # "id":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "index":I
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    .local v2, "localEntity":Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->isDuplicate(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "NonDuplicateUnparsedEntity"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "index":I
    .end local v2    # "localEntity":Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkAndSendUnparsedEntity(Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;)V

    goto :goto_0
.end method

.method protected checkNotation(Ljava/lang/String;)V
    .locals 3
    .param p1, "notName"    # Ljava/lang/String;

    .prologue
    new-instance v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    invoke-direct {v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;-><init>()V

    .local v1, "not":Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;
    iput-object p1, v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "not":Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;
    check-cast v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    .restart local v1    # "not":Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkAndSendNotation(Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;)V

    :cond_0
    return-void
.end method

.method protected checkUnparsedEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "entName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;-><init>()V

    .local v0, "ent":Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    iput-object p1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ent":Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    check-cast v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    .restart local v0    # "ent":Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkNotation(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkAndSendUnparsedEntity(Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;)V

    :cond_0
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected copyFeatures(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V
    .locals 2
    .param p1, "from"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .param p2, "to"    # Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    .prologue
    invoke-static {}, Lmf/org/apache/xerces/impl/Constants;->getXercesFeatures()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "features":Ljava/util/Enumeration;
    const-string v1, "http://apache.org/xml/features/"

    invoke-direct {p0, v0, v1, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/Constants;->getSAXFeatures()Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "http://xml.org/sax/features/"

    invoke-direct {p0, v0, v1, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V

    return-void
.end method

.method protected copyFeatures(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 2
    .param p1, "from"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .param p2, "to"    # Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .prologue
    invoke-static {}, Lmf/org/apache/xerces/impl/Constants;->getXercesFeatures()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "features":Ljava/util/Enumeration;
    const-string v1, "http://apache.org/xml/features/"

    invoke-direct {p0, v0, v1, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/Constants;->getSAXFeatures()Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "http://xml.org/sax/features/"

    invoke-direct {p0, v0, v1, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "rootElement"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentModel"    # Ljava/lang/String;
    .param p3, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v0

    .local v0, "lastState":I
    if-ne v0, v4, :cond_3

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    :goto_0
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isIncludeElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->handleIncludeElement(Lmf/org/apache/xerces/xni/XMLAttributes;)Z

    move-result v1

    .local v1, "success":Z
    if-eqz v1, :cond_4

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    .end local v1    # "success":Z
    :cond_1
    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/IntStack;->peek()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->restoreBaseURI()V

    :cond_2
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    .restart local v1    # "success":Z
    :cond_4
    const-string v2, "NoFallback"

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "success":Z
    :cond_5
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isFallbackElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->handleFallbackElement()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "IncludeChild"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "FallbackChild"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    if-ne v2, v6, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v2, :cond_9

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    :cond_9
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    if-ne v2, v6, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v2, :cond_b

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    :cond_b
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1
.end method

.method public endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    if-nez v0, :cond_0

    const-string v0, "RootElementRequired"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isIncludeElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NoFallback"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isFallbackElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    :cond_1
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->peek()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->restoreBaseURI()V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->peek()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->restoreLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    return-void

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getBaseURI(I)Ljava/lang/String;
    .locals 2
    .param p1, "depth"    # I

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->scopeOfBaseURI(I)I

    move-result v0

    .local v0, "scope":I
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getDTDSource()Lmf/org/apache/xerces/xni/parser/XMLDTDSource;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    return-object v0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 2
    .param p1, "depth"    # I

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->scopeOfLanguage(I)I

    move-result v0

    .local v0, "scope":I
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getRelativeBaseURI()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v4

    .local v4, "includeParentDepth":I
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRelativeURI(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "relativeURI":Ljava/lang/String;
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v7, v10

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v12}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v10

    :cond_2
    if-nez v4, :cond_b

    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    if-nez v12, :cond_3

    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v12}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRelativeBaseURI()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    :cond_3
    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_4

    move-object v7, v10

    goto :goto_0

    :cond_4
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-direct {v0, v12, v13}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    .local v0, "base":Lmf/org/apache/xerces/util/URI;
    new-instance v11, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v11, v0, v10}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    .local v11, "uri":Lmf/org/apache/xerces/util/URI;
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .local v2, "baseScheme":Ljava/lang/String;
    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    .local v9, "literalScheme":Ljava/lang/String;
    invoke-direct {p0, v2, v9}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object v7, v10

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .local v1, "baseAuthority":Ljava/lang/String;
    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .local v5, "literalAuthority":Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_6
    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    .local v7, "literalPath":Ljava/lang/String;
    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v8

    .local v8, "literalQuery":Ljava/lang/String;
    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v6

    .local v6, "literalFragment":Ljava/lang/String;
    if-nez v8, :cond_7

    if-eqz v6, :cond_0

    :cond_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .local v3, "buffer":Ljava/lang/StringBuffer;
    if-eqz v7, :cond_8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    if-eqz v8, :cond_9

    const/16 v12, 0x3f

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    if-eqz v6, :cond_a

    const/16 v12, 0x23

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .end local v0    # "base":Lmf/org/apache/xerces/util/URI;
    .end local v1    # "baseAuthority":Ljava/lang/String;
    .end local v2    # "baseScheme":Ljava/lang/String;
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "literalAuthority":Ljava/lang/String;
    .end local v6    # "literalFragment":Ljava/lang/String;
    .end local v7    # "literalPath":Ljava/lang/String;
    .end local v8    # "literalQuery":Ljava/lang/String;
    .end local v9    # "literalScheme":Ljava/lang/String;
    .end local v11    # "uri":Lmf/org/apache/xerces/util/URI;
    :cond_b
    move-object v7, v10

    goto/16 :goto_0
.end method

.method public getRelativeURI(I)Ljava/lang/String;
    .locals 6
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->scopeOfBaseURI(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .local v1, "start":I
    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v4

    if-ne v1, v4, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    new-instance v2, Lmf/org/apache/xerces/util/URI;

    const-string v5, "file"

    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "uri":Lmf/org/apache/xerces/util/URI;
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v3, Lmf/org/apache/xerces/util/URI;

    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    .end local v2    # "uri":Lmf/org/apache/xerces/util/URI;
    .local v3, "uri":Lmf/org/apache/xerces/util/URI;
    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    .end local v3    # "uri":Lmf/org/apache/xerces/util/URI;
    .restart local v2    # "uri":Lmf/org/apache/xerces/util/URI;
    goto :goto_1
.end method

.method protected getSawFallback(I)Z
    .locals 1
    .param p1, "depth"    # I

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method protected getSawInclude(I)Z
    .locals 1
    .param p1, "depth"    # I

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method protected getState()I
    .locals 2

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aget v0, v0, v1

    return v0
.end method

.method protected getState(I)I
    .locals 1
    .param p1, "depth"    # I

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    aget v0, v0, p1

    return v0
.end method

.method protected handleFallbackElement()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "FallbackParent"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MultipleFallbacks"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    goto :goto_1
.end method

.method protected handleIncludeElement(Lmf/org/apache/xerces/xni/XMLAttributes;)Z
    .locals 36
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "IncludeChild"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_HREF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "href":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_PARSE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "parse":Ljava/lang/String;
    const-string v2, "xpointer"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .local v35, "xpointer":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "accept":Ljava/lang/String;
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "acceptLanguage":Ljava/lang/String;
    if-nez v30, :cond_2

    sget-object v30, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    :cond_2
    if-nez v23, :cond_3

    sget-object v23, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v35, :cond_16

    const-string v2, "XpointerMissing"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_4
    const/16 v24, 0x0

    .local v24, "hrefURI":Lmf/org/apache/xerces/util/URI;
    :try_start_0
    new-instance v25, Lmf/org/apache/xerces/util/URI;

    const/4 v2, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .local v25, "hrefURI":Lmf/org/apache/xerces/util/URI;
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string v2, "HrefFragmentIdentifierIllegal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_f

    move-object/from16 v24, v25

    .end local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .restart local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    :cond_5
    :goto_1
    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isValidInHTTPHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "AcceptMalformed"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :cond_6
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isValidInHTTPHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "AcceptLanguageMalformed"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    :cond_7
    const/16 v26, 0x0

    .local v26, "includedSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v2, :cond_9

    :try_start_2
    new-instance v33, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1, v3, v4}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v33, "resourceIdentifier":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-object/from16 v0, v33

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v26

    if-eqz v26, :cond_9

    move-object/from16 v0, v26

    instance-of v2, v0, Lmf/org/apache/xerces/util/HTTPInputSource;

    if-nez v2, :cond_9

    if-nez v6, :cond_8

    if-eqz v7, :cond_9

    :cond_8
    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v26

    .end local v33    # "resourceIdentifier":Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    :cond_9
    if-nez v26, :cond_b

    if-nez v6, :cond_a

    if-eqz v7, :cond_1a

    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v4, v23

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v26

    :cond_b
    :goto_2
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz v35, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v2, :cond_d

    :cond_c
    if-nez v35, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-nez v2, :cond_13

    :cond_d
    const-string v31, "mf.org.apache.xerces.parsers.XIncludeParserConfiguration"

    .local v31, "parserName":Ljava/lang/String;
    if-eqz v35, :cond_e

    const-string v31, "mf.org.apache.xerces.parsers.XPointerParserConfiguration"

    :cond_e
    invoke-static {}, Lmf/org/apache/xerces/xinclude/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v31

    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/security-manager"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/input-buffer-size"

    new-instance v4, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/namespace-context"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/features/xinclude/fixup-language"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    if-eqz v35, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/xpointer-handler"

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    .local v28, "newHandler":Lmf/org/apache/xerces/xpointer/XPointerHandler;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v3, "http://apache.org/xml/properties/internal/namespace-context"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v4, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    if-eqz v3, :cond_1b

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v4, "http://apache.org/xml/features/xinclude/fixup-language"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-eqz v3, :cond_1c

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setParent(Lmf/org/apache/xerces/xinclude/XIncludeHandler;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setHref(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setXIncludeLocator(Lmf/org/apache/xerces/util/XMLLocatorWrapper;)V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    .end local v28    # "newHandler":Lmf/org/apache/xerces/xpointer/XPointerHandler;
    .end local v31    # "parserName":Ljava/lang/String;
    :cond_13
    :goto_5
    if-eqz v35, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    move-object/from16 v0, v35

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xpointer/XPointerProcessor;->parseXPointer(Ljava/lang/String;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->pushScope()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, v26

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    :cond_15
    if-eqz v35, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    invoke-interface {v2}, Lmf/org/apache/xerces/xpointer/XPointerProcessor;->isXPointerResolved()Z

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v27

    .local v27, "locale":Ljava/util/Locale;
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    const-string v3, "XPointerResolutionUnsuccessful"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .local v32, "reason":Ljava/lang/String;
    const-string v2, "XMLResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    aput-object v32, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .end local v26    # "includedSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .end local v27    # "locale":Ljava/util/Locale;
    .end local v32    # "reason":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v27

    .restart local v27    # "locale":Ljava/util/Locale;
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    const-string v3, "XPointerStreamability"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .restart local v32    # "reason":Ljava/lang/String;
    const-string v2, "XMLResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    aput-object v32, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v27    # "locale":Ljava/util/Locale;
    .end local v32    # "reason":Ljava/lang/String;
    :cond_17
    const/16 v27, 0x0

    goto :goto_8

    .restart local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    :catch_0
    move-exception v21

    move-object/from16 v25, v24

    .end local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .local v21, "exc":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .restart local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->escapeHref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .local v29, "newHref":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_18

    move-object/from16 v23, v29

    :try_start_5
    new-instance v24, Lmf/org/apache/xerces/util/URI;

    const/4 v2, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V
    :try_end_5
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_5 .. :try_end_5} :catch_e

    .end local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .restart local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "HrefFragmentIdentifierIllegal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v22

    .local v22, "exc2":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    :goto_a
    const-string v2, "HrefSyntacticallyInvalid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .end local v22    # "exc2":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .end local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .restart local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    :cond_18
    const-string v2, "HrefSyntacticallyInvalid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v21    # "exc":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .end local v29    # "newHref":Ljava/lang/String;
    :cond_19
    move-object/from16 v24, v25

    .end local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .restart local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    goto/16 :goto_1

    .restart local v26    # "includedSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :catch_2
    move-exception v19

    .local v19, "e":Ljava/io/IOException;
    const-string v2, "XMLResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v19    # "e":Ljava/io/IOException;
    :cond_1a
    new-instance v26, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .end local v26    # "includedSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v26    # "includedSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    goto/16 :goto_2

    .restart local v28    # "newHandler":Lmf/org/apache/xerces/xpointer/XPointerHandler;
    .restart local v31    # "parserName":Ljava/lang/String;
    :cond_1b
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_3

    :cond_1c
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_4

    .end local v28    # "newHandler":Lmf/org/apache/xerces/xpointer/XPointerHandler;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v3, "http://apache.org/xml/properties/internal/xinclude-handler"

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    .local v28, "newHandler":Lmf/org/apache/xerces/xinclude/XIncludeHandler;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setParent(Lmf/org/apache/xerces/xinclude/XIncludeHandler;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setHref(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setXIncludeLocator(Lmf/org/apache/xerces/util/XMLLocatorWrapper;)V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    goto/16 :goto_5

    .end local v28    # "newHandler":Lmf/org/apache/xerces/xinclude/XIncludeHandler;
    .end local v31    # "parserName":Ljava/lang/String;
    :catch_3
    move-exception v13

    .local v13, "ex":Lmf/org/apache/xerces/xni/XNIException;
    const-string v2, "XMLResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v13}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v13    # "ex":Lmf/org/apache/xerces/xni/XNIException;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    goto/16 :goto_6

    :cond_1f
    const/16 v27, 0x0

    goto/16 :goto_7

    :catch_4
    move-exception v19

    .local v19, "e":Lmf/org/apache/xerces/xni/XNIException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    :cond_20
    const-string v2, "XMLParseError"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    .end local v19    # "e":Lmf/org/apache/xerces/xni/XNIException;
    :cond_21
    :goto_b
    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_5
    move-exception v19

    .local v19, "e":Ljava/io/IOException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    if-eqz v2, :cond_23

    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v19    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v3}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    throw v2

    .restart local v19    # "e":Ljava/io/IOException;
    :cond_23
    :try_start_9
    const-string v2, "XMLResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v19    # "e":Ljava/io/IOException;
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    goto :goto_b

    :cond_25
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_TEXT:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "encoding":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    const/16 v34, 0x0

    .local v34, "textReader":Lmf/org/apache/xerces/xinclude/XIncludeTextReader;
    const/4 v2, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fIsXML11:Z

    if-nez v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-nez v2, :cond_26

    new-instance v2, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;-><init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/xinclude/XIncludeHandler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v34, v0

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->parse()V
    :try_end_a
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/CharConversionException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v34, :cond_21

    :try_start_b
    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_b

    :catch_6
    move-exception v19

    .restart local v19    # "e":Ljava/io/IOException;
    const-string v2, "TextResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v19    # "e":Ljava/io/IOException;
    :cond_26
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_c
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/CharConversionException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_c

    :catch_7
    move-exception v13

    .local v13, "ex":Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v34, :cond_21

    :try_start_e
    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_b

    :catch_8
    move-exception v19

    .restart local v19    # "e":Ljava/io/IOException;
    const-string v2, "TextResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v13    # "ex":Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
    .end local v19    # "e":Ljava/io/IOException;
    :cond_27
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-nez v2, :cond_28

    new-instance v2, Lmf/org/apache/xerces/xinclude/XInclude11TextReader;

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Lmf/org/apache/xerces/xinclude/XInclude11TextReader;-><init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/xinclude/XIncludeHandler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v34, v0

    goto/16 :goto_d

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_f
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/CharConversionException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_e

    :catch_9
    move-exception v19

    .local v19, "e":Ljava/io/CharConversionException;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v15, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v16, "CharConversionFailure"

    const/16 v17, 0x0

    const/16 v18, 0x2

    invoke-virtual/range {v14 .. v19}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v34, :cond_21

    :try_start_11
    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto/16 :goto_b

    :catch_a
    move-exception v19

    .local v19, "e":Ljava/io/IOException;
    const-string v2, "TextResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v19    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v19

    .restart local v19    # "e":Ljava/io/IOException;
    :try_start_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    if-eqz v2, :cond_2a

    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .end local v19    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    if-eqz v34, :cond_29

    :try_start_13
    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    :cond_29
    throw v2

    .restart local v19    # "e":Ljava/io/IOException;
    :cond_2a
    :try_start_14
    const-string v2, "TextResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v34, :cond_2b

    :try_start_15
    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    :cond_2b
    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_c
    move-exception v19

    const-string v2, "TextResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v19    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v19

    .restart local v19    # "e":Ljava/io/IOException;
    const-string v2, "TextResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v19    # "e":Ljava/io/IOException;
    .end local v20    # "encoding":Ljava/lang/String;
    .end local v34    # "textReader":Lmf/org/apache/xerces/xinclude/XIncludeTextReader;
    :cond_2c
    const-string v2, "InvalidParseValue"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v30, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    .end local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .end local v26    # "includedSource":Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .restart local v21    # "exc":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .restart local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .restart local v29    # "newHref":Ljava/lang/String;
    :catch_e
    move-exception v22

    move-object/from16 v24, v25

    .end local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .restart local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    goto/16 :goto_a

    .end local v21    # "exc":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .end local v24    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    .end local v29    # "newHref":Ljava/lang/String;
    .restart local v25    # "hrefURI":Lmf/org/apache/xerces/util/URI;
    :catch_f
    move-exception v21

    goto/16 :goto_9
.end method

.method protected hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "nonNormalizedText"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p4, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected isFallbackElement(Lmf/org/apache/xerces/xni/QName;)Z
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_FALLBACK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isIncludeElement(Lmf/org/apache/xerces/xni/QName;)Z
    .locals 2
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRootDocument()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTopLevelIncludedItem()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItemViaInclude()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItemViaFallback()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isTopLevelIncludedItemViaFallback()Z
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    return v0
.end method

.method protected isTopLevelIncludedItemViaInclude()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;Z)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    return-object v0
.end method

.method protected modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;Z)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .param p2, "force"    # Z

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItem()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lmf/org/apache/xerces/util/AugmentationsImpl;

    .end local p1    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    invoke-direct {p1}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    .restart local p1    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDED:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method

.method public notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->addNotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;
    .locals 20
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItem()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->sameBaseURIAsIncludeParent()Z

    move-result v17

    if-nez v17, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .end local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    invoke-direct/range {p1 .. p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    .restart local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    :cond_0
    const/4 v15, 0x0

    .local v15, "uri":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRelativeBaseURI()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    :goto_0
    sget-object v17, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XML_BASE_QNAME:Lmf/org/apache/xerces/xni/QName;

    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v15}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .local v7, "index":I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    .end local v7    # "index":I
    .end local v15    # "uri":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->sameLanguageAsIncludeParent()Z

    move-result v17

    if-nez v17, :cond_3

    if-nez p1, :cond_2

    new-instance p1, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .end local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    invoke-direct/range {p1 .. p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    .restart local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    :cond_2
    sget-object v17, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XML_LANG_QNAME:Lmf/org/apache/xerces/xni/QName;

    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "index":I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    .end local v7    # "index":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v8

    .local v8, "inscopeNS":Ljava/util/Enumeration;
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-nez v17, :cond_7

    .end local v8    # "inscopeNS":Ljava/util/Enumeration;
    :cond_5
    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v9

    .local v9, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-lt v6, v9, :cond_e

    .end local v6    # "i":I
    .end local v9    # "length":I
    :cond_6
    return-object p1

    .restart local v15    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .end local v4    # "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    .end local v15    # "uri":Ljava/lang/String;
    .restart local v8    # "inscopeNS":Ljava/util/Enumeration;
    :cond_7
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURIFromIncludeParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "parentURI":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "uri":Ljava/lang/String;
    if-eq v11, v15, :cond_4

    if-eqz p1, :cond_4

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_a

    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_4

    if-nez p1, :cond_8

    new-instance p1, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .end local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    invoke-direct/range {p1 .. p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    .restart local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    :cond_8
    sget-object v17, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/xni/QName;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/xni/QName;

    .local v10, "ns":Lmf/org/apache/xerces/xni/QName;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eqz v15, :cond_9

    move-object/from16 v17, v15

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v10, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "index":I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v15}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .end local v7    # "index":I
    :cond_9
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_3

    .end local v10    # "ns":Lmf/org/apache/xerces/xni/QName;
    :cond_a
    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_4

    if-nez p1, :cond_b

    new-instance p1, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .end local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    invoke-direct/range {p1 .. p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    .restart local p1    # "attributes":Lmf/org/apache/xerces/xni/XMLAttributes;
    :cond_b
    sget-object v17, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/xni/QName;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/xni/QName;

    .restart local v10    # "ns":Lmf/org/apache/xerces/xni/QName;
    iput-object v12, v10, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    iget-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :goto_4
    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eqz v15, :cond_d

    move-object/from16 v17, v15

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v10, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "index":I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v15}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .end local v7    # "index":I
    :cond_c
    iget-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    :cond_d
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_5

    .end local v8    # "inscopeNS":Ljava/util/Enumeration;
    .end local v10    # "ns":Lmf/org/apache/xerces/xni/QName;
    .end local v11    # "parentURI":Ljava/lang/String;
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v15    # "uri":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v9    # "length":I
    :cond_e
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "type":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v16

    .local v16, "value":Ljava/lang/String;
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkUnparsedEntity(Ljava/lang/String;)V

    :cond_f
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_12

    new-instance v13, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .local v13, "st":Ljava/util/StringTokenizer;
    :goto_6
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-nez v17, :cond_11

    .end local v13    # "st":Ljava/util/StringTokenizer;
    :cond_10
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .restart local v13    # "st":Ljava/util/StringTokenizer;
    :cond_11
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .local v5, "entName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkUnparsedEntity(Ljava/lang/String;)V

    goto :goto_6

    .end local v5    # "entName":Ljava/lang/String;
    .end local v13    # "st":Ljava/util/StringTokenizer;
    :cond_12
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkNotation(Ljava/lang/String;)V

    goto :goto_7
.end method

.method protected processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 4
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    sget-object v2, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    const-string v3, "base"

    invoke-interface {p1, v2, v3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "baseURIValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .local v1, "expandedValue":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->saveBaseURI()V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "expandedValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 3
    .param p1, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;

    .prologue
    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    const-string v2, "lang"

    invoke-interface {p1, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->saveLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected reportFatalError(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method protected reportFatalError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)V

    return-void
.end method

.method protected reportResourceError(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method protected reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)V

    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 8
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    iput-boolean v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fIsXML11:Z

    iput-boolean v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    iput-boolean v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/IntStack;->clear()V

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/IntStack;->clear()V

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v3, v3

    if-lt v1, v3, :cond_3

    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v3, v3

    if-lt v1, v3, :cond_4

    :try_start_0
    const-string v3, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    :goto_4
    return-void

    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getResultDepth()I

    move-result v3

    goto :goto_0

    .restart local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    aput v7, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    aput-boolean v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    aput-boolean v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception v3

    :cond_5
    iput-boolean v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    :try_start_1
    const-string v3, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    iget-boolean v5, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_9

    :cond_6
    :goto_5
    :try_start_2
    const-string v3, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    iget-boolean v5, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_6
    :try_start_3
    const-string v3, "http://apache.org/xml/features/xinclude/fixup-language"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/features/xinclude/fixup-language"

    iget-boolean v5, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_8
    :goto_7
    :try_start_4
    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/util/SymbolTable;

    .local v2, "value":Lmf/org/apache/xerces/util/SymbolTable;
    if-eqz v2, :cond_9

    iput-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v2    # "value":Lmf/org/apache/xerces/util/SymbolTable;
    :cond_9
    :goto_8
    :try_start_5
    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .local v2, "value":Lmf/org/apache/xerces/impl/XMLErrorReporter;
    if-eqz v2, :cond_a

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    .end local v2    # "value":Lmf/org/apache/xerces/impl/XMLErrorReporter;
    :cond_a
    :goto_9
    :try_start_6
    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .local v2, "value":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    if-eqz v2, :cond_b

    iput-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    .end local v2    # "value":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :cond_b
    :goto_a
    :try_start_7
    const-string v3, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/util/SecurityManager;

    .local v2, "value":Lmf/org/apache/xerces/util/SecurityManager;
    if-eqz v2, :cond_c

    iput-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/security-manager"

    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    .end local v2    # "value":Lmf/org/apache/xerces/util/SecurityManager;
    :cond_c
    :goto_b
    :try_start_8
    const-string v3, "http://apache.org/xml/properties/input-buffer-size"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "value":Ljava/lang/Integer;
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v4, "http://apache.org/xml/properties/input-buffer-size"

    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    .end local v2    # "value":Ljava/lang/Integer;
    :cond_d
    :goto_c
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    iget v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    :cond_e
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    iget v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    :cond_f
    new-instance v3, Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-direct {v3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V

    :try_start_9
    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v4, "http://apache.org/xml/features/validation/schema"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    sget-object v3, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v4}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v4, "http://xml.org/sax/features/validation"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v3

    goto/16 :goto_4

    :catch_2
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    goto/16 :goto_6

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    goto/16 :goto_7

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    goto/16 :goto_8

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    goto/16 :goto_9

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    goto/16 :goto_a

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :catch_7
    move-exception v0

    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    goto/16 :goto_b

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    .restart local v2    # "value":Ljava/lang/Integer;
    :cond_10
    :try_start_a
    const-string v3, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_c

    .end local v2    # "value":Ljava/lang/Integer;
    :catch_8
    move-exception v0

    .restart local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    const-string v3, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    goto/16 :goto_c

    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    :cond_11
    :try_start_b
    const-string v3, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string v4, "http://apache.org/xml/features/validation/dynamic"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_b
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_4

    :catch_9
    move-exception v3

    goto/16 :goto_5
.end method

.method protected restoreBaseURI()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public restoreLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected sameBaseURIAsIncludeParent()Z
    .locals 3

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentBaseURI()Ljava/lang/String;

    move-result-object v1

    .local v1, "parentBaseURI":Ljava/lang/String;
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    .local v0, "baseURI":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected sameLanguageAsIncludeParent()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentLanguage()Ljava/lang/String;

    move-result-object v0

    .local v0, "parentLanguage":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected saveBaseURI()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected saveLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected searchForRecursiveIncludes(Ljava/lang/String;)Z
    .locals 1
    .param p1, "includedSysId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->searchForRecursiveIncludes(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0
    .param p1, "handler"    # Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 1
    .param p1, "handler"    # Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    :cond_1
    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const-string v0, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method protected setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHrefFromParent:Ljava/lang/String;

    return-void
.end method

.method protected setParent(Lmf/org/apache/xerces/xinclude/XIncludeHandler;)V
    .locals 0
    .param p1, "parent"    # Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v1, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    .local v0, "bufferSize":Ljava/lang/Integer;
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    goto :goto_0
.end method

.method protected setSawFallback(IZ)V
    .locals 4
    .param p1, "depth"    # I
    .param p2, "val"    # Z

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v1, v1

    if-lt p1, v1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [Z

    .local v0, "newarray":[Z
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    .end local v0    # "newarray":[Z
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    aput-boolean p2, v1, p1

    return-void
.end method

.method protected setSawInclude(IZ)V
    .locals 4
    .param p1, "depth"    # I
    .param p2, "val"    # Z

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v1, v1

    if-lt p1, v1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [Z

    .local v0, "newarray":[Z
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    .end local v0    # "newarray":[Z
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    aput-boolean p2, v1, p1

    return-void
.end method

.method protected setState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .local v0, "newarray":[I
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    .end local v0    # "newarray":[I
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aput p1, v1, v2

    return-void
.end method

.method protected setXIncludeLocator(Lmf/org/apache/xerces/util/XMLLocatorWrapper;)V
    .locals 0
    .param p1, "locator"    # Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    .prologue
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    return-void
.end method

.method protected setupCurrentBaseURI(Lmf/org/apache/xerces/xni/XMLLocator;)V
    .locals 5
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;

    .prologue
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    .local v1, "expandedSystemId":Ljava/lang/String;
    if-nez v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    return-void

    .end local v1    # "expandedSystemId":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHrefFromParent:Ljava/lang/String;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    goto :goto_0

    .restart local v1    # "expandedSystemId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Lmf/org/apache/xerces/util/URI$MalformedURIException;
    const-string v2, "ExpandedSystemId"

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "namespaceContext"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    instance-of v0, p3, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-nez v0, :cond_0

    const-string v0, "IncompatibleNamespaceContext"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    move-object v0, p3

    check-cast v0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setupCurrentBaseURI(Lmf/org/apache/xerces/xni/XMLLocator;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->saveBaseURI()V

    if-nez p4, :cond_1

    new-instance p4, Lmf/org/apache/xerces/util/AugmentationsImpl;

    .end local p4    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    invoke-direct {p4}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    .restart local p4    # "augs":Lmf/org/apache/xerces/xni/Augmentations;
    :cond_1
    const-string v0, "currentBaseURI"

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {p4, v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->searchForRecursiveIncludes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "RecursiveInclude"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->saveLanguage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    invoke-interface {v0, v1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x3

    const/4 v5, 0x1

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v0

    .local v0, "lastState":I
    if-ne v0, v3, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    :goto_0
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isIncludeElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->handleIncludeElement(Lmf/org/apache/xerces/xni/XMLAttributes;)Z

    move-result v1

    .local v1, "success":Z
    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    .end local v1    # "success":Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    .restart local v1    # "success":Z
    :cond_3
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_1

    .end local v1    # "success":Z
    :cond_4
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isFallbackElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->handleFallbackElement()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "IncludeChild"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "FallbackChild"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v2, :cond_8

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    :cond_8
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v2, :cond_a

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    :cond_a
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1
.end method

.method public startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p2, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resId"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "ENTITY_SKIPPED"

    invoke-interface {p4, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UnexpandedEntityReferenceIllegal"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "notation"    # Ljava/lang/String;
    .param p4, "augmentations"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->addUnparsedEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "standalone"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const-string v0, "1.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fIsXML11:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method
