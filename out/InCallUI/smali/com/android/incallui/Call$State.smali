.class public Lcom/android/incallui/Call$State;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# direct methods
.method public static isDialing(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 84
    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 88
    packed-switch p0, :pswitch_data_0

    .line 118
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 90
    :pswitch_0
    const-string v0, "INVALID"

    goto :goto_0

    .line 92
    :pswitch_1
    const-string v0, "NEW"

    goto :goto_0

    .line 94
    :pswitch_2
    const-string v0, "IDLE"

    goto :goto_0

    .line 96
    :pswitch_3
    const-string v0, "ACTIVE"

    goto :goto_0

    .line 98
    :pswitch_4
    const-string v0, "INCOMING"

    goto :goto_0

    .line 100
    :pswitch_5
    const-string v0, "CALL_WAITING"

    goto :goto_0

    .line 102
    :pswitch_6
    const-string v0, "DIALING"

    goto :goto_0

    .line 104
    :pswitch_7
    const-string v0, "REDIALING"

    goto :goto_0

    .line 106
    :pswitch_8
    const-string v0, "ONHOLD"

    goto :goto_0

    .line 108
    :pswitch_9
    const-string v0, "DISCONNECTING"

    goto :goto_0

    .line 110
    :pswitch_a
    const-string v0, "DISCONNECTED"

    goto :goto_0

    .line 112
    :pswitch_b
    const-string v0, "CONFERENCED"

    goto :goto_0

    .line 114
    :pswitch_c
    const-string v0, "PRE_DIAL_WAIT"

    goto :goto_0

    .line 116
    :pswitch_d
    const-string v0, "CONNECTING"

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
