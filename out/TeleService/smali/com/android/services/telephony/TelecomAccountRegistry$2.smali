.class Lcom/android/services/telephony/TelecomAccountRegistry$2;
.super Landroid/telephony/PhoneStateListener;
.source "TelecomAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelecomAccountRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelecomAccountRegistry;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelecomAccountRegistry;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 279
    .local v0, "newState":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # getter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I
    invoke-static {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$600(Lcom/android/services/telephony/TelecomAccountRegistry;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # invokes: Lcom/android/services/telephony/TelecomAccountRegistry;->tearDownAccounts()V
    invoke-static {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$400(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    .line 281
    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # invokes: Lcom/android/services/telephony/TelecomAccountRegistry;->setupAccounts()V
    invoke-static {v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$500(Lcom/android/services/telephony/TelecomAccountRegistry;)V

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/TelecomAccountRegistry$2;->this$0:Lcom/android/services/telephony/TelecomAccountRegistry;

    # setter for: Lcom/android/services/telephony/TelecomAccountRegistry;->mServiceState:I
    invoke-static {v1, v0}, Lcom/android/services/telephony/TelecomAccountRegistry;->access$602(Lcom/android/services/telephony/TelecomAccountRegistry;I)I

    .line 284
    return-void
.end method
