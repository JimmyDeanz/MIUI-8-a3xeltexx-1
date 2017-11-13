.class public Lcom/samsung/android/cocktailbar/CocktailBarFeatures;
.super Ljava/lang/Object;
.source "CocktailBarFeatures.java"


# static fields
.field public static final CATEGORY_NORMAL:Ljava/lang/String; = "normal"

.field public static final COCKTAIL_ENABLED:Z = false

.field private static final FEATURE_COCKTAIL_BAR:I = 0x1

.field private static final FEATURE_COCKTAIL_PANEL:I = 0x2

.field private static final FEATURE_NONE:I

.field private static mCategoryFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCocktailFeature:I

.field private static sQueriedTypeCocktail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-boolean v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sQueriedTypeCocktail:Z

    .line 46
    sput v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureCocktailFeature(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 54
    sget-boolean v1, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sQueriedTypeCocktail:Z

    if-nez v1, :cond_1

    .line 55
    sput-boolean v2, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sQueriedTypeCocktail:Z

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "com.sec.feature.cocktailbar"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->verifyCocktailFeature(Landroid/content/pm/PackageManager;ILjava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    .line 63
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    if-nez v1, :cond_1

    .line 64
    const/4 v1, 0x2

    const-string v2, "com.sec.feature.cocktailpanel"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->verifyCocktailFeature(Landroid/content/pm/PackageManager;ILjava/lang/String;)I

    move-result v1

    sput v1, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 67
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getCategroyFilters(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const-class v0, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->mCategoryFilter:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isSupportCategory(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCocktailBar(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 95
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCocktailPanel(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 108
    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    if-eq v1, v0, :cond_0

    sget v1, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->sCocktailFeature:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemBarType(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static verifyCocktailFeature(Landroid/content/pm/PackageManager;ILjava/lang/String;)I
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "feature"    # I
    .param p2, "systemFeature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "result":I
    if-eqz p0, :cond_1

    .line 76
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, p1

    .line 82
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 76
    goto :goto_0

    .line 79
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "system/etc/permissions/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, p1

    :goto_1
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
