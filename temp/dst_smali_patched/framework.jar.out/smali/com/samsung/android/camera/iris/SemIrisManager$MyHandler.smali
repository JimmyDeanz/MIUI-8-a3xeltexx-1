.class Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;
.super Landroid/os/Handler;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/iris/SemIrisManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/samsung/android/camera/iris/SemIrisManager$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/samsung/android/camera/iris/SemIrisManager$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;)V

    return-void
.end method

.method private sendAcquiredResult(JI)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    .prologue
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1700(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v1, 0x2718

    if-eq p3, v1, :cond_0

    const/16 v1, 0x2719

    if-ne p3, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1700(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;->onRequested(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # invokes: Lcom/samsung/android/camera/iris/SemIrisManager;->getAcquiredString(I)Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1800(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1300(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1300(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private sendAuthenticatedFailed()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method private sendAuthenticatedSucceeded(Lcom/samsung/android/camera/iris/Iris;)V
    .locals 2
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;

    .prologue
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1600(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Lcom/samsung/android/camera/iris/Iris;)V

    .local v0, "result":Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;)V

    .end local v0    # "result":Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;
    :cond_0
    return-void
.end method

.method private sendEnrollResult(Lcom/samsung/android/camera/iris/Iris;I)V
    .locals 1
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "remaining"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1300(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1300(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    :cond_0
    return-void
.end method

.method private sendErrorResult(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "errMsgId"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1300(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1300(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # invokes: Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1400(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$500(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.server.iris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$500(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$500(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x3e8

    if-le p3, v0, :cond_2

    const/4 p3, 0x4

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # invokes: Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1400(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1100(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1100(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;
    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1200(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # invokes: Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;
    invoke-static {v2, p3}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1400(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private sendRemovedResult(JII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1100(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;
    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1200(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v1

    .local v1, "reqIrisId":I
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;
    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1200(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/Iris;->getGroupId()I

    move-result v0

    .local v0, "reqGroupId":I
    if-eq p3, v1, :cond_0

    const-string v2, "SemIrisManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Iris id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq p4, v0, :cond_1

    const-string v2, "SemIrisManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1100(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    # getter for: Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;
    invoke-static {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->access$1200(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalSucceeded(Lcom/samsung/android/camera/iris/Iris;)V

    .end local v0    # "reqGroupId":I
    .end local v1    # "reqIrisId":I
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendEnrollResult(Lcom/samsung/android/camera/iris/Iris;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendAcquiredResult(JI)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    invoke-direct {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendAuthenticatedSucceeded(Lcom/samsung/android/camera/iris/Iris;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendAuthenticatedFailed()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendErrorResult(JI)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;->sendRemovedResult(JII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
