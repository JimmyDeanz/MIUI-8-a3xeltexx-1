.class final Landroid/app/SystemServiceRegistry$76;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/app/BarBeamCommandImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/BarBeamCommandImpl;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.barcode_emulator"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "barbeam"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IBarBeamService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamService;

    move-result-object v1

    .local v1, "service":Landroid/app/IBarBeamService;
    new-instance v2, Landroid/app/BarBeamCommandImpl;

    invoke-direct {v2, v1}, Landroid/app/BarBeamCommandImpl;-><init>(Landroid/app/IBarBeamService;)V

    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "service":Landroid/app/IBarBeamService;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/app/ContextImpl;

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$76;->createService(Landroid/app/ContextImpl;)Landroid/app/BarBeamCommandImpl;

    move-result-object v0

    return-object v0
.end method
