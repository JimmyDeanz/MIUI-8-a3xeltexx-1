.class Landroid/app/epm/PluginManager$2;
.super Landroid/app/epm/IPluginManagerCallback$Stub;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/epm/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/epm/PluginManager;


# direct methods
.method constructor <init>(Landroid/app/epm/PluginManager;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Landroid/app/epm/PluginManager$2;->this$0:Landroid/app/epm/PluginManager;

    invoke-direct {p0}, Landroid/app/epm/IPluginManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallCompleted(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 689
    iget-object v2, p0, Landroid/app/epm/PluginManager$2;->this$0:Landroid/app/epm/PluginManager;

    invoke-virtual {v2}, Landroid/app/epm/PluginManager;->getComponentPackageMap()V

    .line 690
    iget-object v2, p0, Landroid/app/epm/PluginManager$2;->this$0:Landroid/app/epm/PluginManager;

    # getter for: Landroid/app/epm/PluginManager;->mClientCallback:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/app/epm/PluginManager;->access$100(Landroid/app/epm/PluginManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/epm/PluginManager$IStatusListener;

    .line 691
    .local v1, "isl":Landroid/app/epm/PluginManager$IStatusListener;
    # getter for: Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/epm/PluginManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginManager onInstallCompleted --- mClientCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    if-eqz v1, :cond_0

    .line 693
    invoke-interface {v1, p1, p2}, Landroid/app/epm/PluginManager$IStatusListener;->onInstallCompleted(Ljava/lang/String;I)V

    goto :goto_0

    .line 696
    .end local v1    # "isl":Landroid/app/epm/PluginManager$IStatusListener;
    :cond_1
    return-void
.end method

.method public onInstallProgress(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 677
    iget-object v2, p0, Landroid/app/epm/PluginManager$2;->this$0:Landroid/app/epm/PluginManager;

    # getter for: Landroid/app/epm/PluginManager;->mClientCallback:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/app/epm/PluginManager;->access$100(Landroid/app/epm/PluginManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/epm/PluginManager$IStatusListener;

    .line 678
    .local v1, "isl":Landroid/app/epm/PluginManager$IStatusListener;
    # getter for: Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/epm/PluginManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginManager onInstallProgress --- mClientCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-eqz v1, :cond_0

    .line 680
    invoke-interface {v1, p1, p2}, Landroid/app/epm/PluginManager$IStatusListener;->onInstallProgress(Ljava/lang/String;I)V

    goto :goto_0

    .line 683
    .end local v1    # "isl":Landroid/app/epm/PluginManager$IStatusListener;
    :cond_1
    return-void
.end method

.method public onStateChangeCompleted(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 739
    iget-object v2, p0, Landroid/app/epm/PluginManager$2;->this$0:Landroid/app/epm/PluginManager;

    # getter for: Landroid/app/epm/PluginManager;->mClientCallback:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/app/epm/PluginManager;->access$100(Landroid/app/epm/PluginManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/epm/PluginManager$IStatusListener;

    .line 740
    .local v1, "isl":Landroid/app/epm/PluginManager$IStatusListener;
    # getter for: Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/epm/PluginManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginManager onStateChangeCompleted --- mClientCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    if-eqz v1, :cond_0

    .line 742
    invoke-interface {v1, p1, p2, p3}, Landroid/app/epm/PluginManager$IStatusListener;->onStateChangeCompleted(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 745
    .end local v1    # "isl":Landroid/app/epm/PluginManager$IStatusListener;
    :cond_1
    return-void
.end method

.method public onStateChangeProgress(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 727
    iget-object v2, p0, Landroid/app/epm/PluginManager$2;->this$0:Landroid/app/epm/PluginManager;

    # getter for: Landroid/app/epm/PluginManager;->mClientCallback:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/app/epm/PluginManager;->access$100(Landroid/app/epm/PluginManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/epm/PluginManager$IStatusListener;

    .line 728
    .local v1, "isl":Landroid/app/epm/PluginManager$IStatusListener;
    # getter for: Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/epm/PluginManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginManager onStateChangeProgress --- mClientCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    if-eqz v1, :cond_0

    .line 730
    invoke-interface {v1, p1, p2}, Landroid/app/epm/PluginManager$IStatusListener;->onStateChangeProgress(Ljava/lang/String;I)V

    goto :goto_0

    .line 733
    .end local v1    # "isl":Landroid/app/epm/PluginManager$IStatusListener;
    :cond_1
    return-void
.end method

.method public onUninstallCompleted(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 714
    iget-object v2, p0, Landroid/app/epm/PluginManager$2;->this$0:Landroid/app/epm/PluginManager;

    invoke-virtual {v2}, Landroid/app/epm/PluginManager;->getComponentPackageMap()V

    .line 715
    iget-object v2, p0, Landroid/app/epm/PluginManager$2;->this$0:Landroid/app/epm/PluginManager;

    # getter for: Landroid/app/epm/PluginManager;->mClientCallback:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/app/epm/PluginManager;->access$100(Landroid/app/epm/PluginManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/epm/PluginManager$IStatusListener;

    .line 716
    .local v1, "isl":Landroid/app/epm/PluginManager$IStatusListener;
    # getter for: Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/epm/PluginManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginManager onUninstallCompleted --- mClientCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    if-eqz v1, :cond_0

    .line 718
    invoke-interface {v1, p1, p2}, Landroid/app/epm/PluginManager$IStatusListener;->onUninstallCompleted(Ljava/lang/String;I)V

    goto :goto_0

    .line 721
    .end local v1    # "isl":Landroid/app/epm/PluginManager$IStatusListener;
    :cond_1
    return-void
.end method

.method public onUninstallProgress(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 702
    iget-object v2, p0, Landroid/app/epm/PluginManager$2;->this$0:Landroid/app/epm/PluginManager;

    # getter for: Landroid/app/epm/PluginManager;->mClientCallback:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/app/epm/PluginManager;->access$100(Landroid/app/epm/PluginManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/epm/PluginManager$IStatusListener;

    .line 703
    .local v1, "isl":Landroid/app/epm/PluginManager$IStatusListener;
    # getter for: Landroid/app/epm/PluginManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/epm/PluginManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PluginManager onUninstallProgress --- mClientCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    if-eqz v1, :cond_0

    .line 705
    invoke-interface {v1, p1, p2}, Landroid/app/epm/PluginManager$IStatusListener;->onUninstallProgress(Ljava/lang/String;I)V

    goto :goto_0

    .line 708
    .end local v1    # "isl":Landroid/app/epm/PluginManager$IStatusListener;
    :cond_1
    return-void
.end method
