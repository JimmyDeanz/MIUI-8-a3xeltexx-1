.class public Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;
.super Ljava/lang/Object;
.source "CaAkmManager.java"


# static fields
.field private static final SETTING_FILE_NAME:Ljava/lang/String; = "/data/misc/akmd_set.txt"

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadIntValue(Ljava/lang/String;)I
    .locals 1
    .param p1, "lpKeyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "val":I
    return v0
.end method

.method private saveIntValue(Ljava/lang/String;I)V
    .locals 0
    .param p1, "lpKeyName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    return-void
.end method


# virtual methods
.method public final getOrientationValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "HSUC_HDST_FORM0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "HSUC_HO_FORM0.x"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HSUC_HO_FORM0.y"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "HSUC_HO_FORM0.z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "HFLUCV_HREF_FORM0.x"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HFLUCV_HREF_FORM0.y"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "HFLUCV_HREF_FORM0.z"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final loadOrientationInfo()Landroid/os/Bundle;
    .locals 9

    .prologue
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "loadAkmData":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->getOrientationValueNames()[Ljava/lang/String;

    move-result-object v5

    .local v5, "names":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "i":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->loadIntValue(Ljava/lang/String;)I

    move-result v6

    .local v6, "value":I
    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "i":Ljava/lang/String;
    .end local v6    # "value":I
    :cond_0
    return-object v4
.end method

.method public final saveOrientationInfo(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "oriInfo"    # Landroid/os/Bundle;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    const-string v6, "can\'t save the orientation information"

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->getOrientationValueNames()[Ljava/lang/String;

    move-result-object v4

    .local v4, "names":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .local v1, "i":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "value":I
    invoke-direct {p0, v1, v5}, Lcom/samsung/android/contextaware/utilbundle/CaAkmManager;->saveIntValue(Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
