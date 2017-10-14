.class Lcom/android/internal/telephony/SubscriptionMonitor$1;
.super Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;
.source "SubscriptionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionMonitor;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-direct {p0}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 8

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get3(Lcom/android/internal/telephony/SubscriptionMonitor;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    const/4 v0, -0x1

    .local v0, "newDefaultDataPhoneId":I
    const/4 v3, 0x0

    .local v3, "phoneId":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get4(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get5(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .local v1, "newSubId":I
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get4(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v4

    aget v2, v4, v3

    .local v2, "oldSubId":I
    if-eq v2, v1, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Phone["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] subId changed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get6(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " registrants"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap1(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get4(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v4

    aput v1, v4, v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get6(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v4

    if-eq v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v4

    if-ne v2, v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDefaultDataSubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " registrants"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap1(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v4

    if-ne v1, v4, :cond_0

    move v0, v3

    goto :goto_1

    .end local v1    # "newSubId":I
    .end local v2    # "oldSubId":I
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionMonitor$1;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v4, v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->-set0(Lcom/android/internal/telephony/SubscriptionMonitor;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
