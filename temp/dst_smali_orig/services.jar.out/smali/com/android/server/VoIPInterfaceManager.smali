.class public Lcom/android/server/VoIPInterfaceManager;
.super Landroid/os/IVoIPInterface$Stub;
.source "VoIPInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VoIPInterfaceManager$1;,
        Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;,
        Lcom/android/server/VoIPInterfaceManager$CallState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final INVALID_INDEX:I = -0x1

.field private static final PERMISSION_VOIP_INTERFACE:Ljava/lang/String; = "com.sec.android.permission.VOIP_INTERFACE"

.field private static final TAG:Ljava/lang/String; = "VoIPInterfaceManager"


# instance fields
.field alarms:Landroid/app/AlarmManager;

.field private callTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dbg_exception:Z

.field private dbg_level:I

.field private mContext:Landroid/content/Context;

.field private mCpuBooster:Landroid/os/DVFSHelper;

.field mDirection:I

.field mIndex:I

.field mMode:I

.field mMpty:Z

.field mNumber:Ljava/lang/String;

.field mStatus:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mType:I

.field pIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/IVoIPInterface$Stub;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_level:I

    iput-boolean v1, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    iput-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->mCpuBooster:Landroid/os/DVFSHelper;

    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mIndex:I

    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mDirection:I

    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mStatus:I

    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mMode:I

    iput-boolean v1, p0, Lcom/android/server/VoIPInterfaceManager;->mMpty:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->mNumber:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mType:I

    iput-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->alarms:Landroid/app/AlarmManager;

    const-string v0, "VoIPInterfaceManager()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    const-string v0, "START VOIPINTERFACE SERVICE"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VoIPInterfaceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const-string v1, "createTelUrl()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private dump_calltype_w_index(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_0

    const-string v1, "###########################"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PKG NAME     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION NAME  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getactionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL NUMBER  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$500(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL STATE   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;
    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$600(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOTE NUM   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getRemotePartyNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .locals 10
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string v8, "com.sec.android.permission.VOIP_INTERFACE"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, "isAllowed":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .local v6, "pid":I
    invoke-direct {p0, v6}, Lcom/android/server/VoIPInterfaceManager;->getPackageNameByPID(I)[Ljava/lang/String;

    move-result-object v5

    .local v5, "packageNames":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->isAllowedVoIP(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_0

    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission denied:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", you do not have voip permission."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V
    .locals 10
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "isAllowed":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string v8, "com.sec.android.permission.VOIP_INTERFACE"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .local v6, "pid":I
    invoke-direct {p0, v6}, Lcom/android/server/VoIPInterfaceManager;->getPackageNameByPID(I)[Ljava/lang/String;

    move-result-object v5

    .local v5, "packageNames":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->isAllowedVoIPGetStateOnly(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x1

    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_1

    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission denied:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", you do not have voip permission."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getCallSessionInfo_w_pkgName() : Can not find session index with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getCallSessionInfo_w_pkgName() : Find session index with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v1, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    goto :goto_0
.end method

.method private getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I
    .locals 4
    .param p1, "callState"    # Lcom/android/server/VoIPInterfaceManager$CallState;

    .prologue
    const/4 v2, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallTypeIndex_w_callstate()...callState["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallDialing()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_2
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_4

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallRinging()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_4
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_6

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallActive()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_6
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_8

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallIdle()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v0    # "i":I
    :cond_8
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_a

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallHold()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v0    # "i":I
    :cond_a
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_c

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallAlerting()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v0    # "i":I
    :cond_c
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_e

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallIncoming()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v0    # "i":I
    :cond_e
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_10

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallWaiting()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .end local v0    # "i":I
    :cond_10
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_12

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallDisconnecting()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v0    # "i":I
    :cond_12
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_14

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallDisconnected()Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v0    # "i":I
    :cond_14
    move v0, v2

    goto/16 :goto_0
.end method

.method private getCallTypeIndex_w_pkgName(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "listSize":I
    const/4 v2, -0x1

    .local v2, "matchedIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v3}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    getCallTypeIndex_w_pkgName() : Find session index with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    getCallTypeIndex_w_pkgName() : Can not find session index with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    :cond_2
    return v2
.end method

.method private getPackageNameByPID(I)[Ljava/lang/String;
    .locals 5
    .param p1, "pid"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .local v1, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_0

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initCPUBoost()V
    .locals 6

    .prologue
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/DVFSHelper;

    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mCpuBooster:Landroid/os/DVFSHelper;

    :cond_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    .local v0, "supportedCPUFreqTable":[I
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v2, "CPU"

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mCpuBooster:Landroid/os/DVFSHelper;

    const v4, 0xc3500

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .end local v0    # "supportedCPUFreqTable":[I
    :cond_1
    return-void
.end method

.method private isVoIPRunningAndDeregi()Z
    .locals 10

    .prologue
    const-string v8, "isVoIPRunningAndDeregi()..."

    invoke-direct {p0, v8}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .local v7, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .local v5, "packagePid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v3, "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_2

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v8, v8, v1

    iget v9, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v9, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v1    # "i":I
    .end local v3    # "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "listSize":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v4, :cond_4

    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v8}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .local v6, "pid":Ljava/lang/Integer;
    if-nez v6, :cond_5

    const-string v8, "The session is in DB. but, process is not running.. It will be destroyed.."

    invoke-direct {p0, v8}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v8}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/VoIPInterfaceManager;->destroyCallSession(Ljava/lang/String;)Z

    .end local v6    # "pid":Ljava/lang/Integer;
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .restart local v6    # "pid":Ljava/lang/Integer;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "VoIPInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "setdbg_level"    # I

    .prologue
    iget v0, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_level:I

    if-ge p2, v0, :cond_0

    const-string v0, "VoIPInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private notifyVoIPCallStateChangeIntoTelephony()V
    .locals 4

    .prologue
    const-string v2, "    notifyVoIPCallStateChangeIntoTelephony()...notify to BT"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->notifyVoIPCallStateChangeIntoBT()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    notifyVoIPCallStateChangeIntoTelephony()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendVoIPBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "extraDataValue"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendVoIPBroadcast()...pkgName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] actionName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] extraDataValue["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "voipActivity":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "VOIP_ACTION"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startCPUBoost()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "VoIPInterfaceManager"

    const-string v1, "Can not start CPUBoost, please call initCPUBoost"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopCPUBoost()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "VoIPInterfaceManager"

    const-string v1, "Can not start CPUBoost, please call initCPUBoost"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateStatusBar(ZZ)V
    .locals 5
    .param p1, "disableExpand"    # Z
    .param p2, "disableAlerts"    # Z

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v2, 0x0

    .local v2, "state":I
    if-eqz p1, :cond_0

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    :cond_0
    if-eqz p2, :cond_1

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    :cond_1
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v2}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v2    # "state":I
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public answerVoIPCall()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const-string v4, "answerVoIPCall"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v4, "answerVoIPCall()..."

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v5, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->answerVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "    answerVoIPCall() : answerVoIPCall() is true in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "    answerVoIPCall() : answerVoIPCall() is false in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "    Can not find RINGING session"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callInVoIP(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const-string v3, "callInVoIP"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callInVoIP()... : number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "url":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v3, "    callInVoIP() : url == null"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VoIPInterfaceManager"

    const-string v4, "Failed to start intent activity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public canUseBTInVoIP(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const-string v1, "canUseBTInVoIP"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canUseBTInVoIP()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_0

    const-string v1, "    canUseBTInVoIP() : session != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "    canUseBTInVoIP() : session == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canUseHoldInVoIP()Z
    .locals 3

    .prologue
    const-string v2, "canUseHoldInVoIP"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v2, "canUseHoldInVoIP()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .end local v0    # "index":I
    :cond_0
    const-string v2, "    canUseHoldInVoIP() : There is no valid active voip call"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    .restart local v0    # "index":I
    :cond_1
    const-string v2, "    canUseHoldInVoIP() : session == null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v1, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getHoldStatus()Z

    move-result v2

    goto :goto_0
.end method

.method public convertVoIPStateToCallState(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    const-string v1, "convertVoIPStateToCallState"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertVoIPStateToCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$1;->$SwitchMap$com$android$server$VoIPInterfaceManager$CallState:[I

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertVoIPStateToCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public createCallSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)Z
    .locals 6
    .param p1, "apkName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "voipPhoneNumber"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IVoIPCallbackInterface;

    .prologue
    const/4 v3, 0x0

    const-string v4, "createCallSession"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCallSession()... apkName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actionName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", voipPhoneNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .local v0, "idxCallType":I
    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t This session already exists !! delete the same session !! apkName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", idxCallType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callTypeList.count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->getSessionCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-direct {v2, p0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;-><init>(Lcom/android/server/VoIPInterfaceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v1    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .local v2, "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-nez v2, :cond_1

    :try_start_1
    const-string v4, "    createCallSession() : newCallSessionInfo == null"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    monitor-exit p0

    :goto_1
    return v3

    :cond_1
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v2, v4}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)V

    invoke-virtual {v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isValidSessionInfo()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "    createCallSession() : newCallSessionInfo.isValidSessionInfo() is true"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v1, v2

    .end local v0    # "idxCallType":I
    .end local v2    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .restart local v1    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .end local v1    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .restart local v0    # "idxCallType":I
    .restart local v2    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_2
    :try_start_3
    const-string v4, "    Fail adding callSession"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "idxCallType":I
    .end local v2    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .restart local v1    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :catchall_1
    move-exception v3

    goto :goto_2
.end method

.method public destroyCallSession(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const-string v1, "destroyCallSession"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v1, "destroyCallSession()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v1, "    destroyCallSession() : Invalid packageName. Please check the package.."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    monitor-exit p0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    destroyCallSession() : find session with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "index value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableStatusBarforVoIP()V
    .locals 2

    .prologue
    const-string v0, "disableStatusBarforVoIP"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v0, "disableStatusBarforVoIP()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/VoIPInterfaceManager;->updateStatusBar(ZZ)V

    return-void
.end method

.method public dumpCallSessionInfoDB(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const-string v2, "dumpCallSessionInfoDB"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SESSION DB SIZE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->dump_calltype_w_index(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v1

    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .end local v1    # "index":I
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "index":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->dump_calltype_w_index(I)V

    goto :goto_1
.end method

.method public existValidCall()Z
    .locals 2

    .prologue
    const-string v0, "existValidCall"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "Not exist call session"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "existValidCall()... callTypeList.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-string v0, "finalize()... "

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/os/IVoIPInterface$Stub;->finalize()V

    return-void
.end method

.method public getActiveCallIndex()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    const-string v1, "getActiveCallIndex"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v3, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveCallIndex() ActiveCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    const-string v1, "getActiveCallIndex() return  INVALID_INDEX "

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0
.end method

.method public getActiveFgCallState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v1, "getActiveFgCallState"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "getActiveFgCallState()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v3, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActiveCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I

    move-result v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCallSessionInfo(I)Z
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "getCallSessionInfo"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v1, "VoIPInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallSessionInfo is called. Index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callTypeList.size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v4, p1, 0x1

    if-ge v1, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    const-string v1, "VoIPInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCall("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mIndex:I

    # getter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$300(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mDirection:I

    invoke-virtual {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mStatus:I

    iput v2, p0, Lcom/android/server/VoIPInterfaceManager;->mMode:I

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/VoIPInterfaceManager;->mMpty:Z

    # getter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$400(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mNumber:Ljava/lang/String;

    const/16 v1, 0x81

    iput v1, p0, Lcom/android/server/VoIPInterfaceManager;->mType:I

    const-string v1, "VoIPInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIndex : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/VoIPInterfaceManager;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mDirection : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/VoIPInterfaceManager;->mDirection:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mStatus : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/VoIPInterfaceManager;->mStatus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mMpty : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/VoIPInterfaceManager;->mMpty:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mNumber : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mType : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/VoIPInterfaceManager;->mType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method public getCurrentRemoteCallNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const-string v3, "getCurrentRemoteCallNumber"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v3, "getCurrentRemoteCallNumber()..."

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    .local v1, "index":I
    if-eq v1, v4, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Return remote party number for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getRemotePartyNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_2
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v3, "    Call with IDLE voip state or DISCONNECT voip state"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentVoIPNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const-string v3, "getCurrentVoIPNumber"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v3, "getCurrentVoIPNumber()..."

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    .local v1, "index":I
    if-eq v1, v4, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Return voip number for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getRegisteredCallNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_2
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v3, "    No call with ACTIVE voip state or HOLDING voip state"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDirectionForClcc()I
    .locals 1

    .prologue
    const-string v0, "getDirectionForClcc"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/VoIPInterfaceManager;->mDirection:I

    return v0
.end method

.method public getFirstActiveBgCallState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v1, "getFirstActiveBgCallState"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "getFirstActiveBgCallState()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HodingCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I

    move-result v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getFirstActiveRingingCallState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v1, "getFirstActiveRingingCallState"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "getFirstActiveRingingCallState()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v3, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RingingCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I

    move-result v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getIndexForClcc()I
    .locals 1

    .prologue
    const-string v0, "getIndexForClcc"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/VoIPInterfaceManager;->mIndex:I

    return v0
.end method

.method public getMptyForClcc()Z
    .locals 1

    .prologue
    const-string v0, "getMptyForClcc"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/VoIPInterfaceManager;->mMpty:Z

    return v0
.end method

.method public getNumberForClcc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "getNumberForClcc"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionCount()I
    .locals 1

    .prologue
    const-string v0, "getSessionCount"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v0, "getSessionCount()... "

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 5

    .prologue
    const-string v3, "getState"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v3, "getState()..."

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "state":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->getActiveCallIndex()I

    move-result v1

    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getState get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v3}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "index value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "index":I
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "NPE":Ljava/lang/NullPointerException;
    const-string v3, "NullPointerException occurred"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->dumpCallSessionInfoDB(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStatusForClcc()I
    .locals 1

    .prologue
    const-string v0, "getStatusForClcc"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/VoIPInterfaceManager;->mStatus:I

    return v0
.end method

.method public getVoIPCallCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const-string v1, "getVoIPCallCount"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_0

    const-string v1, "    getVoIPCallCount() : temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCallCountInThisSession()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "    getVoIPCallCount() : temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoIPInCallAlert()Z
    .locals 3

    .prologue
    const-string v1, "getVoIPInCallAlert"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "getVoIPInCallAlert()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "pref_voip_alert_on_call"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public hangupVoIPCall()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    const-string v4, "hangupVoIPCall"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v4, "hangupVoIPCall()..."

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v5, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->hangupVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "    hangupVoIPCall() : hangupVoIPCall() is true in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "    hangupVoIPCall() : hangupVoIPCall() is false in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "    Can not find DIALING/RINGING/ACTIVE  session"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public holdVoIPCall()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "holdVoIPCall"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v4, "holdVoIPCall()..."

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->holdVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "    holdVoIPCall() : holdVoIPCall() is true in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "    holdVoIPCall() : holdVoIPCall() is false in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "    Can not find ACTIVE session"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected isAllowedVoIP(Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .local v8, "signatureMatch":Z
    const-string v11, "com.amc.ui"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    move v10, v8

    :cond_0
    :goto_0
    return v10

    :cond_1
    const-string v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x40

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v9, "signatures":[Landroid/content/pm/Signature;
    if-eqz v9, :cond_4

    const/4 v10, 0x2

    new-array v0, v10, [Landroid/content/pm/Signature;

    const/4 v10, 0x0

    new-instance v11, Landroid/content/pm/Signature;

    const-string v12, "308201e53082014ea00302010202044c297bf2300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3130303632393034353230325a170d3131303632393034353230325a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100daa631a08a8f795410f717537bd9da66082ffc0a80c573683f38ca6e88b23df1789f85cc0665592ea84c669ba55ca6e327555882d24639da94e9a3168f8a6959d1bf937b8d471788917aa069fab9a5152cb9ab4ba6750abbc1b13b3a225a65c021dd8bf2cf2fd3cc1a097a3c227fcb6373899bb7267b05d42a05fcdcb5e6e24b0203010001300d06092a864886f70d010105050003818100749f8d27bad3d4837a029ae828bae9ff1deea50d04a4f5067da5bbe492a25c16eea7ee84a713bc81c853c77018ea10912a5d8d1b439f78563302c9b815cabd1f29bd9cceb0fdb64ac4b74c338200641597ee0abad0fc3183a4c69378a39ab070c4ae050d643268980e1ae3639e28a006d7290437af90741e87e363e31e9fccbd"

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v11, v0, v10

    const/4 v10, 0x1

    new-instance v11, Landroid/content/pm/Signature;

    const-string v12, "308201cf30820138a00302010202044e0bbe87300d06092a864886f70d0101050500302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f4950301e170d3131303633303030303833395a170d3431303632323030303833395a302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f495030819f300d06092a864886f70d010101050003818d0030818902818100c868e260bdeba63fde4630a72a7a7f4a7c9663ba6b28c182530fc807d3e7d0a9f1a9d5f83e05a4092ab8ae4b9b469f4fb7f9ea1c2dc0eeba09aae2c93bdd94f4665d3644639622bba583df2b44ad54d69ce5c7398338ad517cc3e6c3a8849a567131925475dd3db485b820920a2e2c690e780cfee2370eba462299c2a9e6d5990203010001300d06092a864886f70d010105050003818100b7972a1043f0ca6e7f6a62a48f785aaa56ca6b4533c11b4fdf0211855cc54174b088a287c399c2384bdfa95db476626f2d201e7a756c6d8e3cc98690a89379058c1c389096500a3a0945fce341d5188f70c2ef0e14f1aa7dfbeee888d8e30c2cdbc8870005490dbae4459170df512b4ee55f61f4e5299359b1bc54a0cb077387"

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v11, v0, v10

    .local v0, "SIGNATURES":[Landroid/content/pm/Signature;
    move-object v1, v9

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v7, v1, v4

    .local v7, "signature":Landroid/content/pm/Signature;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v10, v0

    if-ge v3, v10, :cond_2

    aget-object v10, v0, v3

    invoke-virtual {v10, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_3

    const/4 v8, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "SIGNATURES":[Landroid/content/pm/Signature;
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v3    # "i":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "signature":Landroid/content/pm/Signature;
    .end local v9    # "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    move v10, v8

    goto :goto_0
.end method

.method protected isAllowedVoIPGetStateOnly(Ljava/lang/String;)Z
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .local v6, "isAllowed":Z
    :try_start_0
    iget-object v12, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0xc0

    invoke-virtual {v12, p1, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .local v8, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v10, "signatures":[Landroid/content/pm/Signature;
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v1, "appInfos":Landroid/content/pm/ApplicationInfo;
    iget v12, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    const/4 v6, 0x1

    .end local v1    # "appInfos":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "signatures":[Landroid/content/pm/Signature;
    :cond_0
    :goto_0
    move v11, v6

    :cond_1
    return v11

    .restart local v1    # "appInfos":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v10    # "signatures":[Landroid/content/pm/Signature;
    :cond_2
    const-string v12, "com.amc.ui"

    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v10, :cond_0

    const-string v12, "eng"

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v11, 0x2

    new-array v0, v11, [Landroid/content/pm/Signature;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/pm/Signature;

    const-string v13, "308201e53082014ea00302010202044c297bf2300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3130303632393034353230325a170d3131303632393034353230325a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100daa631a08a8f795410f717537bd9da66082ffc0a80c573683f38ca6e88b23df1789f85cc0665592ea84c669ba55ca6e327555882d24639da94e9a3168f8a6959d1bf937b8d471788917aa069fab9a5152cb9ab4ba6750abbc1b13b3a225a65c021dd8bf2cf2fd3cc1a097a3c227fcb6373899bb7267b05d42a05fcdcb5e6e24b0203010001300d06092a864886f70d010105050003818100749f8d27bad3d4837a029ae828bae9ff1deea50d04a4f5067da5bbe492a25c16eea7ee84a713bc81c853c77018ea10912a5d8d1b439f78563302c9b815cabd1f29bd9cceb0fdb64ac4b74c338200641597ee0abad0fc3183a4c69378a39ab070c4ae050d643268980e1ae3639e28a006d7290437af90741e87e363e31e9fccbd"

    invoke-direct {v12, v13}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v12, v0, v11

    const/4 v11, 0x1

    new-instance v12, Landroid/content/pm/Signature;

    const-string v13, "308201cf30820138a00302010202044e0bbe87300d06092a864886f70d0101050500302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f4950301e170d3131303633303030303833395a170d3431303632323030303833395a302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f495030819f300d06092a864886f70d010101050003818d0030818902818100c868e260bdeba63fde4630a72a7a7f4a7c9663ba6b28c182530fc807d3e7d0a9f1a9d5f83e05a4092ab8ae4b9b469f4fb7f9ea1c2dc0eeba09aae2c93bdd94f4665d3644639622bba583df2b44ad54d69ce5c7398338ad517cc3e6c3a8849a567131925475dd3db485b820920a2e2c690e780cfee2370eba462299c2a9e6d5990203010001300d06092a864886f70d010105050003818100b7972a1043f0ca6e7f6a62a48f785aaa56ca6b4533c11b4fdf0211855cc54174b088a287c399c2384bdfa95db476626f2d201e7a756c6d8e3cc98690a89379058c1c389096500a3a0945fce341d5188f70c2ef0e14f1aa7dfbeee888d8e30c2cdbc8870005490dbae4459170df512b4ee55f61f4e5299359b1bc54a0cb077387"

    invoke-direct {v12, v13}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v12, v0, v11

    .local v0, "SIGNATURES":[Landroid/content/pm/Signature;
    move-object v2, v10

    .local v2, "arr$":[Landroid/content/pm/Signature;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v9, v2, v5

    .local v9, "signature":Landroid/content/pm/Signature;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v11, v0

    if-ge v4, v11, :cond_3

    aget-object v11, v0, v4

    invoke-virtual {v11, v9}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "SIGNATURES":[Landroid/content/pm/Signature;
    .end local v1    # "appInfos":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "signature":Landroid/content/pm/Signature;
    .end local v10    # "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isDualBTConnection()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "isDualBTConnection"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v3, "isDualBTConnection()... :  = "

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    const-string v3, "    idDualBTConnection(): ITelephony != null"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDualBTConnection()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isIncoming()Z
    .locals 4

    .prologue
    const-string v2, "isIncoming"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v2, "isIncoming()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->getActiveCallIndex()I

    move-result v1

    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIncoming get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getDirection()Z

    move-result v2

    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isVoIPActivated()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "isVoIPActivated"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "isVoIPActivated()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "    Can not find the session with ACTIVE state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPAlerting()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "isVoIPAlerting"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "isVoIPDisconnecting()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "    Can not find the session with ALERTING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPDialing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "isVoIPDialing"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "isVoIPDialing()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "    Can not find the session with DIALING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPDisconnecting()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "isVoIPDisconnecting"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "isVoIPDisconnecting()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "    Can not find the session with DISCONNECTING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPHolding()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "isVoIPHolding"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "isVoIPHolding()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "    Can not find the session with HOLDING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPIdle()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    const-string v2, "isVoIPIdle"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v2, "isVoIPIdle()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "    isVoIPIdle() : No session in db "

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isVoIPIncoming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "isVoIPIncoming"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "isVoIPDisconnecting()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "    Can not find the session with INCOMING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPRingOrDialing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const-string v1, "isVoIPRingOrDialing"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "isVoIPRingOrDialing()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "    Can not find the session with RINGING or DIALING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPRinging()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "isVoIPRinging"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "isVoIPRinging()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "    Can not find the session with RINGING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPWaiting()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "isVoIPWaiting"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    const-string v1, "isVoIPDisconnecting()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "    Can not find the session with WAITING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public moveVoIPToTop()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    const-string v4, "moveVoIPToTop"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v4, "moveVoIPToTop()..."

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v5, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->moveVoIPToTop()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "    moveVoIPToTop() : moveVoIPToTop() is true in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "    moveVoIPToTop() : moveVoIPToTop() is false in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "    Can not find DIALING/RINGING/ACTIVE  session"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const-string v4, ""

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public muteVoIPCall()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "muteVoIPCall"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v4, "muteVoIPCall()..."

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->muteVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "    muteVoIPCall() : muteVoIPCall() is true in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "    muteVoIPCall() : muteVoIPCall() is false in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "    Can not find holding session"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyCallStateforVoIP(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const-string v3, "notifyCallStateforVoIP"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v3, "notifyCallStateforVoIP()... :  = "

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const-string v3, "telephony.registry"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v2

    .local v2, "mRegistry":Lcom/android/internal/telephony/ITelephonyRegistry;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifyMissedCallforVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "date"    # J

    .prologue
    const-string v1, "notifyMissedCallforVoIP"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v1, "notifyMissedCallforVoIP()... :  = "

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .local v0, "mTel":Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "ident":J
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public reenableStatusBarforVoIP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "reenableStatusBarforVoIP"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v0, "reenableStatusBarforVoIP()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, v1, v1}, Lcom/android/server/VoIPInterfaceManager;->updateStatusBar(ZZ)V

    return-void
.end method

.method public resetVoIPCheckBC()V
    .locals 2

    .prologue
    const-string v0, "resetVoIPCheckBC"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v0, "resetVoIPCheckBC()"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->alarms:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method public resumeVoIPCall()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "resumeVoIPCall"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v4, "resumeVoIPCall()..."

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->resumeVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "    resumeVoIPCall() : resumeVoIPCall() is true in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "    resumeVoIPCall() : resumeVoIPCall() is false in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "    Can not find holding session"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBTUserWantsAudioOn(Z)Z
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const-string v2, "setBTUserWantsAudioOn"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBTUserWantsAudioOn()... : audion on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    const-string v2, "    setBTUserWantsAudioOn(): ITelephony != null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setBTUserWantsAudioOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v2, 0x1

    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBTUserWantsSwitchAudio()Z
    .locals 3

    .prologue
    const-string v2, "setBTUserWantsSwitchAudio"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v2, "setBTUserWantsSwitchAudio()... :  = "

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    const-string v2, "    idDualBTConnection(): ITelephony != null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->setBTUserWantsSwitchAudio()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v2, 0x1

    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setEngMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "hiddenkey"    # Ljava/lang/String;
    .param p2, "debugLevel"    # I

    .prologue
    const/4 v1, 0x0

    const-string v0, "setEngMode"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v0, "setEngMode()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iput p2, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_level:I

    iput-boolean v1, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "147268321478969"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "    you can use debug mode"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    iput p2, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_level:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    goto :goto_0
.end method

.method public setUseBTInVoIP(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "btEnable"    # Z

    .prologue
    const-string v2, "setUseBTInVoIP"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUseBTInVoIP()... : pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", btEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .end local v0    # "index":I
    :cond_0
    const-string v2, "    setUseBTInVoIP() : Can not access session db with this apk"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    .restart local v0    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v1, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$102(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    const-string v2, "    setUseBTInVoIP() : set BT flag in the session"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setUseHoldInVoIP(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "holdEnable"    # Z

    .prologue
    const-string v2, "setUseHoldInVoIP"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUseHoldInVoIP()... : pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", holdEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .end local v0    # "index":I
    :cond_0
    const-string v2, "    setUseHoldInVoIP() : Can not access session db with this apk"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    .restart local v0    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .local v1, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useHoldCall:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$202(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    const-string v2, "    setUseHoldInVoIP() : set hold flag in the session"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setVoIPActive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "activatedNumber"    # Ljava/lang/String;

    .prologue
    const-string v1, "setVoIPActive"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoIPActive()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    const-string v1, "    setVoIPActive() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v1, "    setVoIPActive() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPAlerting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "alertingNumber"    # Ljava/lang/String;

    .prologue
    const-string v1, "setVoIPAlerting"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoIPAlerting()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    const-string v1, "    setVoIPAlerting() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v1, "    setVoIPAlerting() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPCallCount(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const-string v1, "setVoIPCallCount"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    setVoIPCallCount() : temp != null, count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallCountInThisSession(I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "    setVoIPCallCount() : temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPDialing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "calleeNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v2, "setVoIPDialing"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoIPDialing()... : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    const-string v2, "    setVoIPDialing() :temp != null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setDirection(Z)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v2, "    setVoIPDialing() :temp == null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVoIPDisconnected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "disconnectedNumber"    # Ljava/lang/String;

    .prologue
    const-string v1, "setVoIPDisconnected"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoIPDisconnected()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    const-string v1, "    setVoIPDisconnected() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v1, "    setVoIPDisconnected() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPDisconnecting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "disconnectingNumber"    # Ljava/lang/String;

    .prologue
    const-string v1, "setVoIPDisconnecting"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoIPDisconnecting()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    const-string v1, "    setVoIPDisconnecting() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v1, "    setVoIPDisconnecting() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPHolding(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "holdNumber"    # Ljava/lang/String;

    .prologue
    const-string v1, "setVoIPHolding"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoIPHolding()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    const-string v1, "    setVoIPHolding() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v1, "    setVoIPHolding() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPIdle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const-string v0, "setVoIPIdle"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v0, "setVoIPIdle()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    const/4 v0, 0x1

    return v0
.end method

.method public setVoIPInCallAlert(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const-string v2, "setVoIPInCallAlert"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    const-string v2, "setVoIPInCallAlert()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_voip_alert_on_call"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setVoIPIncoming(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const-string v2, "setVoIPIncoming"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoIPIncoming()... : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    const-string v2, "    setVoIPIncoming() :temp != null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setDirection(Z)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v1, "    setVoIPIncoming() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPRinging(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callerNumber"    # Ljava/lang/String;

    .prologue
    const-string v1, "setVoIPRinging"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoIPRinging()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    const-string v1, "    setVoIPRinging() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v1, "    setVoIPRinging() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPWaiting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "waitingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const-string v2, "setVoIPWaiting"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoIPWaiting()... : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    const-string v2, "    setVoIPWaiting() :temp != null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setDirection(Z)V

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v1, "    setVoIPWaiting() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startVoIPCheckBC(JLjava/lang/String;)V
    .locals 15
    .param p1, "setTimeInt"    # J
    .param p3, "actionName"    # Ljava/lang/String;

    .prologue
    const-string v2, "startVoIPCheckBC"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startVoIPCheckBC()...  setTimeInt["

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "] actionName["

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->alarms:Landroid/app/AlarmManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->alarms:Landroid/app/AlarmManager;

    :cond_0
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->alarms:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    const/4 v3, 0x1

    .local v3, "alarmType":I
    move-wide/from16 v6, p1

    .local v6, "timeInt":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, "firstTime":J
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, "inent":Landroid/content/Intent;
    const-wide/16 v12, 0x3e8

    cmp-long v2, v6, v12

    if-gez v2, :cond_2

    const-wide/16 v6, 0x3e8

    :cond_2
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-static {v2, v8, v9, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->alarms:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->pIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v3    # "alarmType":I
    .end local v4    # "firstTime":J
    .end local v6    # "timeInt":J
    .end local v9    # "inent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
