.class final Lcom/android/phone/MiuiLog$1;
.super Ljava/lang/Object;
.source "MiuiLog.java"

# interfaces
.implements Lmiui/telephony/PhoneDebug$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiLog;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebugChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/services/telephony/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/services/telephony/Log;->DEBUG:Z

    .line 31
    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/services/telephony/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/android/services/telephony/Log;->VERBOSE:Z

    .line 33
    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "PhoneApp"

    const-string v1, "onDebugChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 29
    goto :goto_0
.end method
