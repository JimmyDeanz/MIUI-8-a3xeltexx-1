.class final Lcom/samsung/android/dualscreen/DualScreenManager$2;
.super Landroid/util/Singleton;
.source "DualScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/dualscreen/DualScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;
    .locals 5

    .prologue
    const-string v2, "dualscreen"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default service binder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    .local v1, "service":Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/DualScreenManager$2;->create()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v0

    return-object v0
.end method
