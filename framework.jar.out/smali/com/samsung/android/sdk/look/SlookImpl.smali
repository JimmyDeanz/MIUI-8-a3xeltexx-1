.class public Lcom/samsung/android/sdk/look/SlookImpl;
.super Ljava/lang/Object;
.source "SlookImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/SlookImpl$VERSION_CODES;
    }
.end annotation


# static fields
.field private static final AIRBUTTON:I = 0x1

.field private static final COCKTAIL_BAR:I = 0x6

.field private static final COCKTAIL_PANEL:I = 0x7

.field public static final DEBUG:Z = true

.field private static final SDK_INT:I

.field private static final SMARTCLIP:I = 0x2

.field private static final SPEN_HOVER_ICON:I = 0x4

.field private static final WRITINGBUDDY:I = 0x3

.field private static sCocktailLevel:I

.field private static sHasMetaEdgeSingle:I

.field private static sUspLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 28
    const-string/jumbo v0, "ro.slook.ver"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    .line 65
    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    .line 67
    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    .line 69
    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private static checkCocktailLevel()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 131
    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 132
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 133
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_1

    .line 135
    :try_start_0
    const-string v3, "com.sec.feature.cocktailbar"

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    :goto_0
    sput v3, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    .line 136
    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-nez v3, :cond_1

    .line 137
    const-string v3, "com.sec.feature.cocktailpanel"

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x7

    :cond_0
    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_1
    return-void

    :cond_2
    move v3, v2

    .line 135
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static checkValidCocktailMetaData()V
    .locals 15

    .prologue
    const/4 v0, 0x0

    .line 147
    sget v12, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 148
    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    .line 149
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 150
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_0

    if-nez v8, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/16 v12, 0x80

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-interface {v9, v8, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 157
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 158
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 159
    .local v7, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 160
    const-string v12, "com.samsung.android.cocktail.mode"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v12, "edge_single"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 162
    const/4 v12, 0x1

    sput v12, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    .line 165
    .end local v11    # "value":Ljava/lang/String;
    :cond_2
    sget v12, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    if-nez v12, :cond_0

    .line 166
    new-instance v6, Landroid/content/Intent;

    const-string v12, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x80

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-interface {v9, v6, v12, v13, v14}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 171
    .local v3, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_4

    .line 172
    .local v0, "N":I
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_0

    .line 173
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 174
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 175
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x40000

    and-int/2addr v12, v13

    if-eqz v12, :cond_5

    .line 172
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 171
    .end local v0    # "N":I
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "i":I
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 178
    .restart local v0    # "N":I
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "i":I
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5
    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 179
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 180
    if-eqz v7, :cond_3

    .line 181
    const-string v12, "com.samsung.android.cocktail.mode"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 182
    .restart local v11    # "value":Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v12, "edge_single"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 183
    const/4 v12, 0x1

    sput v12, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 191
    .end local v0    # "N":I
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "i":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "metaData":Landroid/os/Bundle;
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 192
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getVersionCode()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    return v0
.end method

.method public static isFeatureEnabled(I)Z
    .locals 7
    .param p0, "type"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 90
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v2, v3

    .line 126
    :cond_0
    :goto_0
    return v2

    .line 95
    :pswitch_1
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 96
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 97
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_1

    .line 99
    :try_start_0
    const-string v4, "com.sec.feature.spen_usp"

    invoke-interface {v1, v4}, Landroid/content/pm/IPackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1
    if-ne p0, v2, :cond_3

    .line 106
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v4, v6, :cond_2

    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 100
    .restart local v1    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :cond_3
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-ge v4, v6, :cond_0

    move v2, v3

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkCocktailLevel()V

    .line 112
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v4, :cond_4

    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-le v4, p0, :cond_0

    .line 114
    :cond_4
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v4, :cond_5

    .line 115
    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkValidCocktailMetaData()V

    .line 116
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    if-eq v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_5
    move v2, v3

    .line 118
    goto :goto_0

    .line 122
    :pswitch_3
    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkCocktailLevel()V

    .line 123
    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v4, :cond_6

    sget v4, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-le v4, p0, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
