.class Lcom/android/server/VibratorService$SecSettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecSettingsObserver"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;I)V
    .locals 4
    .param p2, "type"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2400()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iput p2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v6, -0x2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    # getter for: Lcom/android/server/VibratorService;->mIsEnableIntensity:Z
    invoke-static {}, Lcom/android/server/VibratorService;->access$2600()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VibratorService"

    const-string v4, "mIsEnableIntensity is false (onChange)"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2700()[I

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "magnitudeMaxLevel":I
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2800()[I

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "touchMagnitudeMaxLevel":I
    if-lt v1, v4, :cond_1

    if-ge v2, v4, :cond_2

    :cond_1
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "magnitudeMaxLevel(onChange) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", touchMagnitudeMaxLevel(onChange) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v3

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2400()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "magnitudeLevel":I
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v2, :cond_3

    .end local v0    # "magnitudeLevel":I
    :goto_1
    # setter for: Lcom/android/server/VibratorService;->mTouchMagnitude:I
    invoke-static {v3, v0}, Lcom/android/server/VibratorService;->access$2902(Lcom/android/server/VibratorService;I)I

    const-string v3, "VibratorService"

    const-string v4, "Feedback magnitude has changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v0    # "magnitudeLevel":I
    :cond_3
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_TOUCH_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2800()[I

    move-result-object v4

    aget v0, v4, v0

    goto :goto_1

    .end local v0    # "magnitudeLevel":I
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v3

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2400()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v4, v4, v5

    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .restart local v0    # "magnitudeLevel":I
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v1, :cond_4

    .end local v0    # "magnitudeLevel":I
    :goto_2
    # setter for: Lcom/android/server/VibratorService;->mCallMagnitude:I
    invoke-static {v3, v0}, Lcom/android/server/VibratorService;->access$3002(Lcom/android/server/VibratorService;I)I

    const-string v3, "VibratorService"

    const-string v4, "Call magnitude has changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v0    # "magnitudeLevel":I
    :cond_4
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2700()[I

    move-result-object v4

    aget v0, v4, v0

    goto :goto_2

    .end local v0    # "magnitudeLevel":I
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v3

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2400()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v4, v4, v5

    invoke-static {v3, v4, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .restart local v0    # "magnitudeLevel":I
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v1, :cond_6

    .end local v0    # "magnitudeLevel":I
    :goto_3
    # setter for: Lcom/android/server/VibratorService;->mNotiMagnitude:I
    invoke-static {v3, v0}, Lcom/android/server/VibratorService;->access$3102(Lcom/android/server/VibratorService;I)I

    # getter for: Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z
    invoke-static {}, Lcom/android/server/VibratorService;->access$3200()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mNotiMagnitude:I
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$3100(Lcom/android/server/VibratorService;)I

    move-result v4

    # setter for: Lcom/android/server/VibratorService;->mDefaultMagnitude:I
    invoke-static {v3, v4}, Lcom/android/server/VibratorService;->access$1902(Lcom/android/server/VibratorService;I)I

    :cond_5
    const-string v3, "VibratorService"

    const-string v4, "Notification magnitude has changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v0    # "magnitudeLevel":I
    :cond_6
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2700()[I

    move-result-object v4

    aget v0, v4, v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method reload()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2400()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
