.class Lcom/sec/epdg/handover/EpdgImsListener60$SettingChangeObserver;
.super Landroid/database/ContentObserver;
.source "EpdgImsListener60.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingChangeObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 483
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 484
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 488
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->getInstance()Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;

    move-result-object v2

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->readSettingValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "value":Ljava/lang/String;
    const-string v2, "[EpdgImsListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChange, key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$600()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/epdg/handover/EpdgImsListener60$OnImsSettingsChangeEvent;

    invoke-direct {v3, v0, v1}, Lcom/sec/epdg/handover/EpdgImsListener60$OnImsSettingsChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method
