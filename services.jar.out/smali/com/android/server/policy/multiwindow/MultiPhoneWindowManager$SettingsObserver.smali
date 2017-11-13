.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .line 351
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 352
    return-void
.end method


# virtual methods
.method observe()V
    .locals 2

    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 386
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->updateSettings()V

    .line 387
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->updateSettings()V

    .line 391
    return-void
.end method
