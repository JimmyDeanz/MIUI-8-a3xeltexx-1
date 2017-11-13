.class final Lcom/android/incallui/Log$1;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Lmiui/telephony/PhoneDebug$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebugChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    const-string v0, "InCall"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/incallui/Log;->DEBUG:Z

    .line 48
    const-string v0, "InCall"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/android/incallui/Log;->VERBOSE:Z

    .line 49
    sget-boolean v0, Lcom/android/incallui/Log;->VERBOSE:Z

    if-eqz v0, :cond_3

    const-string v0, "InCall"

    const-string v1, "onDebugChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 47
    goto :goto_0
.end method
