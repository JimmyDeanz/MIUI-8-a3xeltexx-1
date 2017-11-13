.class Lcom/samsung/cpp/CPPProvider$1$3;
.super Landroid/telephony/PhoneStateListener;
.source "CPPProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/cpp/CPPProvider$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/cpp/CPPProvider$1;


# direct methods
.method constructor <init>(Lcom/samsung/cpp/CPPProvider$1;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/cpp/CPPProvider$1$3;->this$1:Lcom/samsung/cpp/CPPProvider$1;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .local v0, "currentState":I
    const-string v1, "CPProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
