.class final Landroid/app/SystemServiceRegistry$92;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Lcom/sec/epdg/EpdgManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Lcom/sec/epdg/EpdgManager;
    .locals 3

    .prologue
    const-string v2, "epdg"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sec/epdg/IEpdgManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgManager;

    move-result-object v1

    .local v1, "service":Lcom/sec/epdg/IEpdgManager;
    new-instance v2, Lcom/sec/epdg/EpdgManager;

    invoke-direct {v2, v1}, Lcom/sec/epdg/EpdgManager;-><init>(Lcom/sec/epdg/IEpdgManager;)V

    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$92;->createService()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    return-object v0
.end method
