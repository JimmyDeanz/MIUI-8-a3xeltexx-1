.class public Lcom/sec/epdg/handover/EpdgImsSettings;
.super Ljava/lang/Object;
.source "EpdgImsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;
    }
.end annotation


# static fields
.field private static final DEFAULT_INT_SETTING_VALUE:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "[EpdgImsSettings]"

.field private static mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

.field private mIsLvcEnabled:I

.field private mIsVoWifiProvisioned:I

.field private mIsVolteEnabled:I

.field private mIsVolteProvisioned:I

.field private mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

.field private final mSettingFieldsStr:[Ljava/lang/String;

.field private final mePdgHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/high16 v3, -0x80000000

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 55
    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "content://com.sec.ims.settings/imsswitch/mmtel"

    aput-object v2, v0, v1

    const-string/jumbo v1, "content://com.sec.ims.settings/imsswitch/mmtel-video"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->IMS_SETTING_VOLTE_PROVISIONED:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->IMS_SETTING_VWF_PROVISIONED:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mSettingFieldsStr:[Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mePdgHandler:Landroid/os/Handler;

    .line 66
    invoke-static {p1}, Lcom/sec/epdg/EpdgSettingsWriter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 68
    iput v3, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteEnabled:I

    .line 69
    iput v3, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsLvcEnabled:I

    .line 70
    iput v3, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteProvisioned:I

    .line 71
    iput v3, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVoWifiProvisioned:I

    .line 72
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-direct {v0, p0}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;-><init>(Lcom/sec/epdg/handover/EpdgImsSettings;)V

    iput-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    .line 73
    if-eqz p3, :cond_0

    .line 74
    invoke-direct {p0, p3, v4}, Lcom/sec/epdg/handover/EpdgImsSettings;->update(Landroid/util/SparseArray;Z)V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;)Lcom/sec/epdg/handover/EpdgImsSettings;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/epdg/handover/EpdgImsSettings;"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;)V

    sput-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 92
    :cond_0
    sget-object v0, Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method private getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 434
    const/high16 v0, -0x80000000

    .line 435
    .local v0, "ret":I
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    const/4 v0, 0x1

    .line 441
    :cond_0
    :goto_0
    return v0

    .line 437
    :cond_1
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postImsReadyToEpdgService(Z)V
    .locals 2
    .param p1, "bootup"    # Z

    .prologue
    .line 455
    if-eqz p1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 457
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 458
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 460
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private postToEpdgService(ZII)V
    .locals 2
    .param p1, "bootup"    # Z
    .param p2, "event"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 445
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 448
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 449
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 450
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 452
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private update(Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "bootup"    # Z

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 167
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 172
    invoke-direct {p0, v1, v3, p2}, Lcom/sec/epdg/handover/EpdgImsSettings;->updateInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 174
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private update(Landroid/util/SparseArray;Z)V
    .locals 10
    .param p2, "bootup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v9, 0x84

    const/16 v8, 0x61

    const/16 v5, 0x60

    const/16 v7, 0x5d

    .line 215
    iget-object v4, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 216
    :cond_0
    const-string v4, "[EpdgImsSettings]"

    const-string/jumbo v5, "updateEpdgImsSettings : Invalid params"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 220
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 221
    .local v2, "isVolteEnabled":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VOLTE_ENABLED_BY_USER : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteEnabled:I

    .line 223
    const/16 v4, 0x3f

    invoke-direct {p0, p2, v4, v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->postToEpdgService(ZII)V

    .line 225
    .end local v2    # "isVolteEnabled":I
    :cond_2
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 226
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    .local v0, "isLVCEnabled":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LVC_ENABLED :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsLvcEnabled:I

    .line 230
    .end local v0    # "isLVCEnabled":I
    :cond_3
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 231
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 232
    .local v3, "isVolteProvisioned":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VOLTE_PROVISIONED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput v3, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteProvisioned:I

    .line 234
    const/16 v4, 0x42

    invoke-direct {p0, p2, v4, v3}, Lcom/sec/epdg/handover/EpdgImsSettings;->postToEpdgService(ZII)V

    .line 236
    .end local v3    # "isVolteProvisioned":I
    :cond_4
    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 237
    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 238
    .local v1, "isVoWifiProvisioned":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VOWIFI_PROVISIONED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVoWifiProvisioned:I

    .line 240
    const/16 v4, 0x43

    invoke-direct {p0, p2, v4, v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->postToEpdgService(ZII)V

    .line 242
    .end local v1    # "isVoWifiProvisioned":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings;->updateOmadmSettings(Landroid/util/SparseArray;)V

    .line 243
    invoke-direct {p0, p2}, Lcom/sec/epdg/handover/EpdgImsSettings;->postImsReadyToEpdgService(Z)V

    goto/16 :goto_0
.end method

.method private updateInternal(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "bootup"    # Z

    .prologue
    .line 176
    const-string/jumbo v4, "content://com.sec.ims.settings/imsswitch/mmtel"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    invoke-direct {p0, p2}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 178
    .local v2, "isVolteEnabled":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VOLTE_ENABLED_BY_USER : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget v4, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteEnabled:I

    if-ne v2, v4, :cond_1

    .line 212
    .end local v2    # "isVolteEnabled":I
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v2    # "isVolteEnabled":I
    :cond_1
    iput v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteEnabled:I

    .line 183
    const/16 v4, 0x3f

    invoke-direct {p0, p3, v4, v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->postToEpdgService(ZII)V

    .line 185
    .end local v2    # "isVolteEnabled":I
    :cond_2
    const-string/jumbo v4, "content://com.sec.ims.settings/imsswitch/mmtel-video"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    invoke-direct {p0, p2}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, "isLVCEnabled":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LVC_ENABLED :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget v4, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsLvcEnabled:I

    if-eq v0, v4, :cond_0

    .line 191
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsLvcEnabled:I

    .line 193
    .end local v0    # "isLVCEnabled":I
    :cond_3
    sget-object v4, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->IMS_SETTING_VOLTE_PROVISIONED:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 194
    invoke-direct {p0, p2}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 195
    .local v3, "isVolteProvisioned":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VOLTE_PROVISIONED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget v4, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteProvisioned:I

    if-eq v3, v4, :cond_0

    .line 199
    iput v3, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteProvisioned:I

    .line 200
    const/16 v4, 0x42

    invoke-direct {p0, p3, v4, v3}, Lcom/sec/epdg/handover/EpdgImsSettings;->postToEpdgService(ZII)V

    .line 202
    .end local v3    # "isVolteProvisioned":I
    :cond_4
    sget-object v4, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->IMS_SETTING_VWF_PROVISIONED:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 203
    invoke-direct {p0, p2}, Lcom/sec/epdg/handover/EpdgImsSettings;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 204
    .local v1, "isVoWifiProvisioned":I
    iget v4, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVoWifiProvisioned:I

    if-eq v1, v4, :cond_0

    .line 207
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VOWIFI_PROVISIONED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVoWifiProvisioned:I

    .line 209
    const/16 v4, 0x43

    invoke-direct {p0, p3, v4, v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->postToEpdgService(ZII)V

    .line 211
    .end local v1    # "isVoWifiProvisioned":I
    :cond_5
    invoke-direct {p0, p3}, Lcom/sec/epdg/handover/EpdgImsSettings;->postImsReadyToEpdgService(Z)V

    goto/16 :goto_0
.end method

.method private updateOmadmSettings(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setTepdg1xTimer(Landroid/util/SparseArray;)V

    .line 423
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setTepdgLteTimer(Landroid/util/SparseArray;)V

    .line 424
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setTepdgWifiTimer(Landroid/util/SparseArray;)V

    .line 425
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setCdmaRssi(Landroid/util/SparseArray;)V

    .line 426
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setLteRsrp1(Landroid/util/SparseArray;)V

    .line 427
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setLteRsrp2(Landroid/util/SparseArray;)V

    .line 428
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setLteRsrp3(Landroid/util/SparseArray;)V

    .line 429
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setWifiRssiA(Landroid/util/SparseArray;)V

    .line 430
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setWifiRssiB(Landroid/util/SparseArray;)V

    .line 431
    return-void
.end method


# virtual methods
.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mSettingFieldsStr:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initImsSettings(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "value":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/epdg/handover/EpdgImsSettings;->updateInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 84
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onEpdgSettingChanged(Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;Lcom/sec/epdg/EpdgSettings;)V
    .locals 5
    .param p1, "imsIfForGeneral"    # Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .param p2, "settings"    # Lcom/sec/epdg/EpdgSettings;

    .prologue
    const/16 v4, 0x89

    const/16 v3, 0x85

    .line 115
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 116
    :cond_0
    const-string v1, "[EpdgImsSettings]"

    const-string/jumbo v2, "onEpdgSettingChanged : Invalid params"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 120
    .local v0, "paramMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getCdmaRssi()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 121
    const/16 v1, 0x88

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getLteRsrp1()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 124
    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    :cond_4
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getLteRsrp2()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 127
    const/16 v1, 0x86

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getLteRsrp3()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 130
    const/16 v1, 0x87

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    :cond_6
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getTepdg1xTimer()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 133
    const/16 v1, 0x8d

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    :cond_7
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getTepdgLteTimer()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 136
    const/16 v1, 0x8b

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    :cond_8
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getTepdgWifiTimer()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v2

    if-eq v1, v2, :cond_9

    .line 139
    const/16 v1, 0x8c

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    :cond_9
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 142
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getWifiRssiA()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v2

    if-eq v1, v2, :cond_a

    .line 143
    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getWifiRssiB()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v2

    if-eq v1, v2, :cond_b

    .line 151
    const/16 v1, 0x8a

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-lt v1, v3, :cond_1

    .line 154
    invoke-interface {p1, v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->updateIMSSettingValues(Landroid/util/SparseArray;)Z

    goto/16 :goto_0

    .line 146
    :cond_c
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getWifiRssiA()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v2

    if-eq v1, v2, :cond_a

    .line 147
    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public onEpdgSettingChanged(Lcom/sec/ims/ImsManager;Lcom/sec/epdg/EpdgSettings;)V
    .locals 2
    .param p1, "imsManager"    # Lcom/sec/ims/ImsManager;
    .param p2, "settings"    # Lcom/sec/epdg/EpdgSettings;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 109
    :cond_0
    const-string v0, "[EpdgImsSettings]"

    const-string/jumbo v1, "onEpdgSettingChanged : Invalid params"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    return-void
.end method

.method public readCurrentVideoSettingState()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsLvcEnabled:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    return-object v0
.end method

.method public readCurrentVolteSettingState()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteEnabled:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    return-object v0
.end method

.method public readVolteProvisionedState()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings;->mIsVolteProvisioned:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->update(Landroid/util/SparseArray;Z)V

    .line 163
    return-void
.end method

.method public updateImsSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->updateInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    return-void
.end method
