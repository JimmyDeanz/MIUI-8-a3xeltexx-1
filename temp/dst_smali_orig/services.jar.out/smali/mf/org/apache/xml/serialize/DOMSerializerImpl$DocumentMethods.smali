.class Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;
.super Ljava/lang/Object;
.source "DOMSerializerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xml/serialize/DOMSerializerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DocumentMethods"
.end annotation


# static fields
.field private static fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

.field private static fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

.field private static fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

.field private static fgDocumentMethodsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    sput-object v4, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

    sput-object v4, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

    sput-object v4, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

    sput-boolean v5, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z

    :try_start_0
    const-class v1, Lmf/org/w3c/dom/Document;

    const-string v2, "getXmlVersion"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

    const-class v1, Lmf/org/w3c/dom/Document;

    const-string v2, "getInputEncoding"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

    const-class v1, Lmf/org/w3c/dom/Document;

    const-string v2, "getXmlEncoding"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    sput-boolean v1, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "exc":Ljava/lang/Exception;
    :goto_0
    return-void

    .end local v0    # "exc":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .restart local v0    # "exc":Ljava/lang/Exception;
    sput-object v4, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

    sput-object v4, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

    sput-object v4, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

    sput-boolean v5, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    sget-boolean v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    sget-object v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
