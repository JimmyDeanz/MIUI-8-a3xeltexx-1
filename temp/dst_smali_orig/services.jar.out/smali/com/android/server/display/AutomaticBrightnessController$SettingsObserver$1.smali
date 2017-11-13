.class Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v1

    .local v1, "oldScreenBrightnessModeSetting":I
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const-string v4, "screen_brightness_mode"

    const/4 v5, -0x2

    invoke-static {v2, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I
    invoke-static {v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$102(Lcom/android/server/display/AutomaticBrightnessController;I)I

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessModeSetting:I
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    .local v0, "modeChanged":Z
    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mIsSupportedSensorHubAutoBrightness:Z
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$200(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLuxAndCandelaFromSensorHub()V
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)V

    :cond_1
    return-void
.end method
