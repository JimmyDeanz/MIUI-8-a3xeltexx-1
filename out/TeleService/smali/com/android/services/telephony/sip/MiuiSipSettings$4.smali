.class Lcom/android/services/telephony/sip/MiuiSipSettings$4;
.super Ljava/lang/Object;
.source "MiuiSipSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/MiuiSipSettings;->retrieveSipLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/MiuiSipSettings;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$4;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipSettings$4;->this$0:Lcom/android/services/telephony/sip/MiuiSipSettings;

    # invokes: Lcom/android/services/telephony/sip/MiuiSipSettings;->updateSipAddAccountTip()V
    invoke-static {v0}, Lcom/android/services/telephony/sip/MiuiSipSettings;->access$900(Lcom/android/services/telephony/sip/MiuiSipSettings;)V

    .line 267
    return-void
.end method
