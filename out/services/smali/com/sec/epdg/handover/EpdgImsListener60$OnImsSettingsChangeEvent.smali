.class Lcom/sec/epdg/handover/EpdgImsListener60$OnImsSettingsChangeEvent;
.super Ljava/lang/Object;
.source "EpdgImsListener60.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnImsSettingsChangeEvent"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener60$OnImsSettingsChangeEvent;->mKey:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Lcom/sec/epdg/handover/EpdgImsListener60$OnImsSettingsChangeEvent;->mValue:Ljava/lang/String;

    .line 403
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 406
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onImsSettingsChangeEvent: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$700()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener60$OnImsSettingsChangeEvent;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsListener60$OnImsSettingsChangeEvent;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->updateImsSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method
