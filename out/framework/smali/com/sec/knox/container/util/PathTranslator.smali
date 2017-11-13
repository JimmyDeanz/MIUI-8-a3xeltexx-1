.class public Lcom/sec/knox/container/util/PathTranslator;
.super Ljava/lang/Object;
.source "PathTranslator.java"


# static fields
.field private static final PACKAGE_DATA_PATH_PREFIX:Ljava/lang/String; = "/data/user"

.field private static final PATH_MNT_EXTSD:Ljava/lang/String; = "/mnt/extSdCard"

.field private static final PATH_MNT_KNOX:Ljava/lang/String; = "/mnt/knox/default/emulated"

.field private static final PATH_MNT_RUNTIME:Ljava/lang/String; = "/mnt/runtime/default/emulated"

.field private static final PATH_MNT_SD:Ljava/lang/String; = "/mnt/sdcard"

.field private static final PATH_STORAGE_EMULATED:Ljava/lang/String; = "/storage/emulated"

.field private static final PATH_STORAGE_EMULATED_EXP:Ljava/lang/String; = "^/storage/emulated/([0-9]+)"

.field private static final PATH_STORAGE_EMULATED_LEGACY:Ljava/lang/String; = "/storage/emulated/legacy"

.field private static final PATH_STORAGE_EXTSD:Ljava/lang/String; = "/storage/extSdCard"

.field private static final PATH_STORAGE_SELF_PRIMARY:Ljava/lang/String; = "/storage/self/primary"

.field private static final mFilePathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/knox/container/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    .line 25
    sget-object v0, Lcom/sec/knox/container/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    const-string v1, "^/data/data"

    const-string v2, "/data/user/?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/sec/knox/container/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    const-string v1, "^/storage/enc_emulated/legacy"

    const-string v2, "/mnt/shell/enc_emulated/?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/sec/knox/container/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    const-string v1, "^/storage/enc_emulated/([0-9]+)"

    const-string v2, "/mnt/shell/enc_emulated/?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/sec/knox/container/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    const-string v1, "^/data/clipboard"

    const-string v2, "/data/clipboard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/sec/knox/container/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    const-string v1, "^/data/user"

    const-string v2, "/data/user"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/sec/knox/container/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    const-string v1, "^/data/system/container/"

    const-string v2, "/data/system/container/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRealPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "containerId"    # I

    .prologue
    .line 42
    const-string v4, ""

    .line 43
    .local v4, "realPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 45
    .local v1, "found":Z
    const-string v6, "epmf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 83
    .end local p0    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 49
    .restart local p0    # "path":Ljava/lang/String;
    :cond_2
    const-string v6, "/mnt/extSdCard"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/storage/extSdCard"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 53
    const-string v6, "/mnt/sdcard"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "/storage/self/primary"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "/storage/emulated/legacy"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "/storage/emulated"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 56
    :cond_3
    const/16 v6, 0x64

    if-lt p1, v6, :cond_5

    const-string v3, "/mnt/knox/default/emulated"

    .line 59
    .local v3, "leadPath":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    const-string v6, "/mnt/sdcard"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v5, "/mnt/sdcard"

    .line 67
    .local v5, "srcPath":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 69
    const-string v6, "epmf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "match key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " real="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v3    # "leadPath":Ljava/lang/String;
    .end local v5    # "srcPath":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v6, "epmf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pathout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 57
    :cond_5
    const-string v3, "/mnt/runtime/default/emulated"

    .restart local v3    # "leadPath":Ljava/lang/String;
    goto :goto_1

    .line 62
    :cond_6
    const-string v6, "/storage/self/primary"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v5, "/storage/self/primary"

    .restart local v5    # "srcPath":Ljava/lang/String;
    goto :goto_2

    .line 63
    .end local v5    # "srcPath":Ljava/lang/String;
    :cond_7
    const-string v6, "/storage/emulated/legacy"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v5, "/storage/emulated/legacy"

    .restart local v5    # "srcPath":Ljava/lang/String;
    goto :goto_2

    .line 64
    .end local v5    # "srcPath":Ljava/lang/String;
    :cond_8
    const-string v6, "^/storage/emulated/([0-9]+).*"

    invoke-virtual {p0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v5, "^/storage/emulated/([0-9]+)"

    .restart local v5    # "srcPath":Ljava/lang/String;
    goto :goto_2

    .line 65
    .end local v5    # "srcPath":Ljava/lang/String;
    :cond_9
    const-string v5, "/storage/emulated"

    .restart local v5    # "srcPath":Ljava/lang/String;
    goto :goto_2

    .line 71
    .end local v3    # "leadPath":Ljava/lang/String;
    .end local v5    # "srcPath":Ljava/lang/String;
    :cond_a
    sget-object v6, Lcom/sec/knox/container/util/PathTranslator;->mFilePathMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "?"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    const-string v7, "epmf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "match key="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " val="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " real="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v1, 0x1

    .line 77
    goto/16 :goto_3
.end method

.method public static isPackageDataRelatedPath(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "containerId"    # I

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/sec/knox/container/util/PathTranslator;->getRealPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "translatedPath":Ljava/lang/String;
    const-string v2, "/data/user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 96
    .local v0, "retVal":Z
    if-eqz v0, :cond_0

    .line 97
    const-string v2, "epmf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package path detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return v0

    .line 100
    :cond_0
    const-string v2, "epmf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not a package path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
