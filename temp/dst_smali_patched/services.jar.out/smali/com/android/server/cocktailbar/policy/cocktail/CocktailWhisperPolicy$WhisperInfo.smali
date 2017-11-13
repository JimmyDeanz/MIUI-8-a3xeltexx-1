.class Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
.super Ljava/lang/Object;
.source "CocktailWhisperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WhisperInfo"
.end annotation


# instance fields
.field cocktailId:I

.field packageName:Ljava/lang/String;

.field uid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "whisper"    # Ljava/lang/String;
    .param p3, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    iput v3, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->cocktailId:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->packageName:Ljava/lang/String;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->uid:I

    :cond_1
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    # getter for: Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WhisperInfo packageName is wrong"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 1
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->cocktailId:I

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->uid:I

    return-void
.end method
