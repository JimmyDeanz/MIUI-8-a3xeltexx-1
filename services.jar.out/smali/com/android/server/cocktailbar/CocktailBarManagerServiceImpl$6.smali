.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/samsung/android/cocktailbar/Cocktail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1819
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v0

    .line 1821
    .local v0, "cb":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDestroy(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1827
    :goto_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$6;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1828
    return-void

    .line 1822
    :catch_0
    move-exception v1

    .line 1823
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1824
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1825
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1833
    return-void
.end method
