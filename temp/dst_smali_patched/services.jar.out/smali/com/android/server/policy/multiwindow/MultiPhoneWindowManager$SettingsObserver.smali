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
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->updateSettings()V

    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->updateSettings()V

    return-void
.end method
