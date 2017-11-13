.class public Lcom/android/internal/app/IrisEnrollActivity;
.super Landroid/app/Activity;
.source "IrisEnrollActivity.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private isIrisFramework:Z

.field private mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

.field private mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisService:Lcom/samsung/android/camera/iris/IIrisService;

.field private mIrisView:Landroid/view/View;

.field private mIsServiceBind:Z

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field private mToken:Landroid/os/IBinder;

.field private token:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "IrisEnrollActivity"

    sput-object v0, Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisService:Lcom/samsung/android/camera/iris/IIrisService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIsServiceBind:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->isIrisFramework:Z

    iput-object v1, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisView:Landroid/view/View;

    new-instance v0, Lcom/android/internal/app/IrisEnrollActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IrisEnrollActivity$1;-><init>(Lcom/android/internal/app/IrisEnrollActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mToken:Landroid/os/IBinder;

    new-instance v0, Lcom/android/internal/app/IrisEnrollActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IrisEnrollActivity$2;-><init>(Lcom/android/internal/app/IrisEnrollActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    new-instance v0, Lcom/android/internal/app/IrisEnrollActivity$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IrisEnrollActivity$3;-><init>(Lcom/android/internal/app/IrisEnrollActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    new-instance v0, Lcom/android/internal/app/IrisEnrollActivity$5;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IrisEnrollActivity$5;-><init>(Lcom/android/internal/app/IrisEnrollActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/app/IrisEnrollActivity;Lcom/samsung/android/camera/iris/IIrisService;)Lcom/samsung/android/camera/iris/IIrisService;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/IrisEnrollActivity;
    .param p1, "x1"    # Lcom/samsung/android/camera/iris/IIrisService;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisService:Lcom/samsung/android/camera/iris/IIrisService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/app/IrisEnrollActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/IrisEnrollActivity;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIsServiceBind:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/app/IrisEnrollActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/IrisEnrollActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/IrisEnrollActivity;->enrollIrisWithView()V

    return-void
.end method

.method private bindIrisService()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/IrisEnrollActivity;->mServiceConn:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/app/IrisEnrollActivity$4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IrisEnrollActivity$4;-><init>(Lcom/android/internal/app/IrisEnrollActivity;)V

    iput-object v1, p0, Lcom/android/internal/app/IrisEnrollActivity;->mServiceConn:Landroid/content/ServiceConnection;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.server.seciris"

    const-string v3, "com.android.server.seciris.IrisService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/IrisEnrollActivity;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/IrisEnrollActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;

    const-string v2, "bindIrisService: OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private enrollIrisWithView()V
    .locals 13

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIsServiceBind:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v12, v0, [I

    .local v12, "position":[I
    iget-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v12, v2

    const/4 v3, 0x1

    aget v3, v12, v3

    iget-object v4, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/app/IrisEnrollActivity;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Lcom/samsung/android/camera/iris/IIrisService;->enrollwithUI(Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12    # "position":[I
    :cond_0
    :goto_0
    return-void

    .restart local v12    # "position":[I
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getIrisManager()V
    .locals 2

    .prologue
    const-string v0, "iris"

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IrisEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;

    const-string v1, "mIrisManager is null fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;

    const-string v1, "mIrisManager is not null success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIsServiceBind:Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1090083

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IrisEnrollActivity;->setContentView(I)V

    const v0, 0x10203e6

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IrisEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->token:Landroid/os/IBinder;

    iget-boolean v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->isIrisFramework:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v6, v0, [I

    .local v6, "position":[I
    iget-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-direct {p0}, Lcom/android/internal/app/IrisEnrollActivity;->getIrisManager()V

    iget-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    const/16 v1, 0xa

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/app/IrisEnrollActivity;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    iget-object v5, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->enrollwithUI([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/view/View;)V

    .end local v6    # "position":[I
    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/IrisEnrollActivity;->bindIrisService()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v1, p0, Lcom/android/internal/app/IrisEnrollActivity;->isIrisFramework:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v2, p0, Lcom/android/internal/app/IrisEnrollActivity;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->stopIRCamera(Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIsServiceBind:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/IrisEnrollActivity;->mIrisService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/android/internal/app/IrisEnrollActivity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/app/IrisEnrollActivity;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->stopIRCamera(Landroid/os/IBinder;ILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
