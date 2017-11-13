.class public Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;
.super Ljava/lang/Object;
.source "DSKPPSessionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler$1;,
        Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler$InstanceHolder;
    }
.end annotation


# static fields
.field static mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler$1;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;->mContext:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler$InstanceHolder;->INSTANCE:Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;

    return-object v0
.end method


# virtual methods
.method public createSession(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isTwoPass"    # Z

    .prologue
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;-><init>()V

    .local v0, "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->generateSessionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mSessionId:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mPkgName:Ljava/lang/String;

    const/16 v1, 0x350

    iput v1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mCurrStep:I

    if-eqz p2, :cond_0

    const/16 v1, 0x353

    iput v1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mNextStep:I

    :goto_0
    sget-object v1, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setDskppSessionData(Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v1, 0x352

    iput v1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mNextStep:I

    goto :goto_0
.end method

.method public deleteSession(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->deleteDskppSession(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public validateSession(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "step"    # I

    .prologue
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;-><init>()V

    .local v0, "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    iput-object p1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mPkgName:Ljava/lang/String;

    iput p2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mNextStep:I

    sget-object v1, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->validateDskppSession(Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;)Z

    move-result v1

    return v1
.end method
