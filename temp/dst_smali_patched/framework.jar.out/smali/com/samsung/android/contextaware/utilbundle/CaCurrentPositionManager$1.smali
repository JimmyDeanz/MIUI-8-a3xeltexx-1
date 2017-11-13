.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CaCurrentPositionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->initializeManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    const-string v3, "com.samsung.android.contextaware.SLOCATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v3, "currentlocation"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "currentlocation"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .local v1, "loc":Landroid/location/Location;
    if-eqz v1, :cond_1

    const-string v3, "RSL is OK."

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    new-instance v4, Landroid/location/Location;

    invoke-direct {v4, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->CurrentLocUpdate(Landroid/location/Location;)V

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "loc":Landroid/location/Location;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "loc":Landroid/location/Location;
    :cond_1
    const-string v3, "Loc is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
