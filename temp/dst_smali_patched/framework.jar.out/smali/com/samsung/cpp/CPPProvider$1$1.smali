.class Lcom/samsung/cpp/CPPProvider$1$1;
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
.method constructor <init>(Lcom/samsung/cpp/CPPProvider$1;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    iput-object p1, p0, Lcom/samsung/cpp/CPPProvider$1$1;->this$1:Lcom/samsung/cpp/CPPProvider$1;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .local v0, "currentState":I
    return-void
.end method
