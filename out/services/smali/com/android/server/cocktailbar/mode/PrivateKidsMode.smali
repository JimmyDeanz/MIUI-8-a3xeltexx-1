.class public Lcom/android/server/cocktailbar/mode/PrivateKidsMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateKidsMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mKidsModeObserver:Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14
    const-class v1, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->TAG:Ljava/lang/String;

    .line 16
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 22
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;

    invoke-direct {v0, p0, p3}, Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;-><init>(Lcom/android/server/cocktailbar/mode/PrivateKidsMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->mKidsModeObserver:Lcom/android/server/cocktailbar/mode/PrivateKidsMode$KidsModeObserver;

    .line 23
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCocktailBarType()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedCocktailType()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "kidsmode"

    return-object v0
.end method

.method isEnableMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 71
    iget-object v1, p0, Lcom/android/server/cocktailbar/mode/PrivateKidsMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "kids_home_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
