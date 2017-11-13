.class final Landroid/app/SystemServiceRegistry$57;
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
        "Landroid/view/WindowManager;",
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
.method public createService(Landroid/app/ContextImpl;)Landroid/view/WindowManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    new-instance v1, Landroid/view/WindowManagerImpl;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;)V

    .local v1, "wm":Landroid/view/WindowManagerImpl;
    invoke-static {}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->getInstance()Lcom/samsung/android/multidisplay/common/ContextRelationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->createWindowManager(Landroid/content/Context;Landroid/view/WindowManagerImpl;)V

    invoke-virtual {v1}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .local v0, "d":Landroid/view/Display;
    invoke-static {}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->getInstance()Lcom/samsung/android/multidisplay/common/ContextRelationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->createDisplay(Landroid/content/Context;Landroid/view/Display;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/app/ContextImpl;

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$57;->createService(Landroid/app/ContextImpl;)Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method
