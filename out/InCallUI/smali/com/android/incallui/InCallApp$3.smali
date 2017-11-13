.class Lcom/android/incallui/InCallApp$3;
.super Landroid/content/BroadcastReceiver;
.source "InCallApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallApp;->registerLockWallpaperReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallApp;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallApp;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/incallui/InCallApp$3;->this$0:Lcom/android/incallui/InCallApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/incallui/InCallApp$3;->this$0:Lcom/android/incallui/InCallApp;

    const/4 v1, 0x1

    # invokes: Lcom/android/incallui/InCallApp;->updateInCallWallpaper(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/InCallApp;->access$000(Lcom/android/incallui/InCallApp;Z)V

    .line 207
    return-void
.end method
