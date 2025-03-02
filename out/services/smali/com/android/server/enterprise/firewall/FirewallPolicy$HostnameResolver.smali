.class Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;
.super Landroid/os/AsyncTask;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostnameResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFinishResolving:Z

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .locals 1

    .prologue
    .line 2119
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    .line 2121
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2117
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2124
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 2125
    .local v1, "hostname":Ljava/lang/String;
    # setter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->allIpsInfo:[Ljava/net/InetAddress;
    invoke-static {v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$702([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    .line 2127
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    # setter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->allIpsInfo:[Ljava/net/InetAddress;
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$702([Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2131
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    .line 2133
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLocker:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$800(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2134
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # getter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLocker:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$800(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 2135
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2136
    return-object v4

    .line 2128
    :catch_0
    move-exception v0

    .line 2129
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_2
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2131
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    goto :goto_0

    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    throw v2

    .line 2135
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected isFinished()Z
    .locals 1

    .prologue
    .line 2139
    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy$HostnameResolver;->mFinishResolving:Z

    return v0
.end method
