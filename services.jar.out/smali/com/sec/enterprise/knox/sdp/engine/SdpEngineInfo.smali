.class public Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
.super Ljava/lang/Object;
.source "SdpEngineInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static PERSONA_PWD_RESET_TOKEN:Ljava/lang/String; = null

.field private static PWD_RESET_TOKEN:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SdpEngineInfo"


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mFlags:I

.field private mId:I

.field private mIsMigrating:Z

.field private mPackageName:Ljava/lang/String;

.field private mState:I

.field private mType:I

.field private mUserId:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "PersonaPwdResetToken"

    sput-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    .line 98
    const-string v0, "PwdResetToken"

    sput-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->PWD_RESET_TOKEN:Ljava/lang/String;

    .line 384
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 88
    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mId:I

    .line 89
    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mUserId:I

    .line 90
    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mState:I

    .line 91
    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mFlags:I

    .line 92
    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mVersion:I

    .line 93
    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    .line 94
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    .line 95
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    .line 36
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mId:I

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mUserId:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mState:I

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mFlags:I

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mVersion:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "userId"    # I
    .param p4, "state"    # I
    .param p5, "flags"    # I
    .param p6, "version"    # I
    .param p7, "isMigrating"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 58
    if-nez p1, :cond_0

    .line 59
    invoke-static {p2}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    .line 62
    :goto_0
    iput p2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mId:I

    .line 63
    iput p3, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mUserId:I

    .line 64
    iput p4, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mState:I

    .line 65
    iput p5, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mFlags:I

    .line 66
    iput p6, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mVersion:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isAndroidDefaultAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    .line 77
    :goto_1
    iput-boolean p7, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    .line 78
    return-void

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    goto :goto_1

    .line 75
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mFlags:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResetTokenTimaAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 112
    :cond_0
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->PWD_RESET_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mState:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mUserId:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mVersion:I

    return v0
.end method

.method public isAndroidDefaultEngine()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 325
    iget v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    if-ne v1, v0, :cond_0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomEngine()Z
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 270
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMdfpp()Z
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMigrating()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    return v0
.end method

.method public isMinor()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 286
    iget v1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsMigrating(Z)V
    .locals 0
    .param p1, "isMigrating"    # Z

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    .line 240
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    .line 152
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mState:I

    .line 183
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mVersion:I

    .line 218
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 339
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdpEngineInfo { alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-boolean v0, p0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->mIsMigrating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    return-void

    .line 375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
