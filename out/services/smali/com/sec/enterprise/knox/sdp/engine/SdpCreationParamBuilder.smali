.class public Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;
.super Ljava/lang/Object;
.source "SdpCreationParamBuilder.java"


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mFlags:I

.field private mPrivilegedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "alias":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    .line 26
    invoke-direct {p0, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->validateFlags(I)I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->mPrivilegedApps:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method private validateFlags(I)I
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 89
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 90
    :cond_0
    const/4 p1, 0x0

    .line 92
    .end local p1    # "flags":I
    :cond_1
    return p1
.end method


# virtual methods
.method public addPrivilegedApp(Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)V
    .locals 1
    .param p1, "domain"    # Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->mPrivilegedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public getParam()Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;

    iget-object v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    iget-object v3, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->mPrivilegedApps:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setMdfpp()V
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    .line 62
    return-void
.end method

.method public setMinor()V
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    .line 72
    return-void
.end method
