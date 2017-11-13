.class public Lcom/android/server/desktop/DesktopService;
.super Lcom/android/server/SystemService;
.source "DesktopService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktop/DesktopService$1;,
        Lcom/android/server/desktop/DesktopService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DesktopService"

.field private static mInstance:Lcom/android/server/desktop/DesktopService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktop/DesktopService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/desktop/DesktopService;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/android/server/desktop/DesktopService;->mInstance:Lcom/android/server/desktop/DesktopService;

    return-void
.end method

.method public static getInstance()Lcom/android/server/desktop/DesktopService;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/desktop/DesktopService;->mInstance:Lcom/android/server/desktop/DesktopService;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    const-string v0, "desktop"

    new-instance v1, Lcom/android/server/desktop/DesktopService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktop/DesktopService$BinderService;-><init>(Lcom/android/server/desktop/DesktopService;Lcom/android/server/desktop/DesktopService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktop/DesktopService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
