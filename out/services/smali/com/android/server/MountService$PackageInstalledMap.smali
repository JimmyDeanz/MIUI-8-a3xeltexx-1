.class Lcom/android/server/MountService$PackageInstalledMap;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstalledMap"
.end annotation


# instance fields
.field public final external:Z

.field public final id:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 1
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/server/MountService$PackageInstalledMap;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p2, p0, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    .line 489
    return-void
.end method

.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "exter"    # Z

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/server/MountService$PackageInstalledMap;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p2, p0, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 483
    iput-boolean p3, p0, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    .line 484
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 492
    instance-of v1, p1, Lcom/android/server/MountService$PackageInstalledMap;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 494
    check-cast v0, Lcom/android/server/MountService$PackageInstalledMap;

    .line 496
    .local v0, "tmp":Lcom/android/server/MountService$PackageInstalledMap;
    iget-object v1, p0, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 499
    .end local v0    # "tmp":Lcom/android/server/MountService$PackageInstalledMap;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
