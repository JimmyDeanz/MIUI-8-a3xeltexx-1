.class Lcom/android/server/wifi/WifiController$2;
.super Landroid/database/ContentObserver;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiController;->registerForStayAwakeModeChange(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$2;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$2;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->readStayAwakeConditions()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$700(Lcom/android/server/wifi/WifiController;)V

    .line 361
    return-void
.end method
