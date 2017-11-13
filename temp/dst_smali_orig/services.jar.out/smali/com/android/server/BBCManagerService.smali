.class public Lcom/android/server/BBCManagerService;
.super Ljava/lang/Object;
.source "BBCManagerService.java"


# static fields
.field static final ACCESS_PERSONAL_APPS:Ljava/lang/String; = "accessPersonalApps"

.field static final PACKAGE_UID_INFO:Ljava/lang/String; = "packageUidInfo"

.field static final TAG:Ljava/lang/String; = "BBCManagerService"

.field static mBbcDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleExchangeDataBBC(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .local v2, "ret":Landroid/os/Bundle;
    const-string v3, "action"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v3, "BBCManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExchangeDataBBC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v3, "accessPersonalApps"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lcom/android/server/BBCManagerService;->processAccessPersonalApps(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isAccessPersonalApp(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "caller_uid"    # I
    .param p2, "callee"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "ret":Z
    :try_start_0
    sget-object v5, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v6, "accessPersonalApps"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "accessPersonalApps":Landroid/os/Bundle;
    if-nez p0, :cond_0

    sget-object v5, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v6, "packageUidInfo"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .local v4, "uids":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local v4    # "uids":Landroid/os/Bundle;
    :cond_0
    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, "apps":Landroid/os/Bundle;
    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "*"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    const-string v5, "BBCManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAccessPersonalApp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    .end local v1    # "apps":Landroid/os/Bundle;
    :cond_4
    :goto_0
    return v3

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static processAccessPersonalApps(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .local v4, "ret":Landroid/os/Bundle;
    const-string v6, "apps"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, "apps":Landroid/os/Bundle;
    const-string v6, "packageName"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "bbcApp":Ljava/lang/String;
    const-string v6, "uid"

    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .local v5, "uid":I
    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .local v0, "accessPersonalApps":Landroid/os/Bundle;
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v7, "accessPersonalApps"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "accessPersonalApps":Landroid/os/Bundle;
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v7, "accessPersonalApps"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    if-lez v5, :cond_1

    const/4 v3, 0x0

    .local v3, "packageUidInfo":Landroid/os/Bundle;
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v7, "packageUidInfo"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "packageUidInfo":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .restart local v3    # "packageUidInfo":Landroid/os/Bundle;
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v7, "packageUidInfo"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "packageUidInfo":Landroid/os/Bundle;
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "ret":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .restart local v4    # "ret":Landroid/os/Bundle;
    const-string v6, "result"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v4

    .restart local v0    # "accessPersonalApps":Landroid/os/Bundle;
    :cond_2
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v7, "accessPersonalApps"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "accessPersonalApps":Landroid/os/Bundle;
    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "accessPersonalApps":Landroid/os/Bundle;
    .restart local v3    # "packageUidInfo":Landroid/os/Bundle;
    :cond_4
    sget-object v6, Lcom/android/server/BBCManagerService;->mBbcDataMap:Ljava/util/HashMap;

    const-string v7, "packageUidInfo"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "packageUidInfo":Landroid/os/Bundle;
    check-cast v3, Landroid/os/Bundle;

    .restart local v3    # "packageUidInfo":Landroid/os/Bundle;
    goto :goto_2
.end method
