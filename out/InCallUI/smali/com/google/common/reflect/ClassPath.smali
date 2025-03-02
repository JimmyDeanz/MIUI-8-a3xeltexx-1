.class public final Lcom/google/common/reflect/ClassPath;
.super Ljava/lang/Object;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/ClassPath$Scanner;,
        Lcom/google/common/reflect/ClassPath$ClassInfo;,
        Lcom/google/common/reflect/ClassPath$ResourceInfo;
    }
.end annotation


# static fields
.field private static final CLASS_PATH_ATTRIBUTE_SEPARATOR:Lcom/google/common/base/Splitter;

.field private static final IS_TOP_LEVEL:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/common/reflect/ClassPath$ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/google/common/reflect/ClassPath;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/ClassPath;->logger:Ljava/util/logging/Logger;

    .line 62
    new-instance v0, Lcom/google/common/reflect/ClassPath$1;

    invoke-direct {v0}, Lcom/google/common/reflect/ClassPath$1;-><init>()V

    sput-object v0, Lcom/google/common/reflect/ClassPath;->IS_TOP_LEVEL:Lcom/google/common/base/Predicate;

    .line 69
    const-string v0, " "

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/ClassPath;->CLASS_PATH_ATTRIBUTE_SEPARATOR:Lcom/google/common/base/Splitter;

    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/common/reflect/ClassPath;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/common/base/Splitter;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/common/reflect/ClassPath;->CLASS_PATH_ATTRIBUTE_SEPARATOR:Lcom/google/common/base/Splitter;

    return-object v0
.end method

.method static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 441
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".class"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    .line 442
    .local v0, "classNameEnd":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getClassPathEntries(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableMap;
    .locals 10
    .param p0, "classloader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/net/URI;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 282
    .local v2, "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/net/URI;Ljava/lang/ClassLoader;>;"
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 283
    .local v6, "parent":Ljava/lang/ClassLoader;
    if-eqz v6, :cond_0

    .line 284
    invoke-static {v6}, Lcom/google/common/reflect/ClassPath;->getClassPathEntries(Ljava/lang/ClassLoader;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 286
    :cond_0
    instance-of v9, p0, Ljava/net/URLClassLoader;

    if-eqz v9, :cond_2

    move-object v8, p0

    .line 287
    check-cast v8, Ljava/net/URLClassLoader;

    .line 288
    .local v8, "urlClassLoader":Ljava/net/URLClassLoader;
    invoke-virtual {v8}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v0

    .local v0, "arr$":[Ljava/net/URL;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 291
    .local v3, "entry":Ljava/net/URL;
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 295
    .local v7, "uri":Ljava/net/URI;
    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 296
    invoke-virtual {v2, v7, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 292
    .end local v7    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 300
    .end local v0    # "arr$":[Ljava/net/URL;
    .end local v1    # "e":Ljava/net/URISyntaxException;
    .end local v3    # "entry":Ljava/net/URL;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "urlClassLoader":Ljava/net/URLClassLoader;
    :cond_2
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v9

    return-object v9
.end method
