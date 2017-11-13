.class public abstract Landroid/media/session/ISessionController$Stub;
.super Landroid/os/Binder;
.source "ISessionController.java"

# interfaces
.implements Landroid/media/session/ISessionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionController"

.field static final TRANSACTION_adjustVolume:I = 0xd

.field static final TRANSACTION_fastForward:I = 0x18

.field static final TRANSACTION_getExtras:I = 0x21

.field static final TRANSACTION_getFlags:I = 0xb

.field static final TRANSACTION_getLaunchPendingIntent:I = 0xa

.field static final TRANSACTION_getMetadata:I = 0x1d

.field static final TRANSACTION_getPackageName:I = 0x8

.field static final TRANSACTION_getPlaybackState:I = 0x1e

.field static final TRANSACTION_getQueue:I = 0x1f

.field static final TRANSACTION_getQueueTitle:I = 0x20

.field static final TRANSACTION_getRatingType:I = 0x22

.field static final TRANSACTION_getTag:I = 0x9

.field static final TRANSACTION_getVolumeAttributes:I = 0xc

.field static final TRANSACTION_isTransportControlEnabled:I = 0x7

.field static final TRANSACTION_next:I = 0x16

.field static final TRANSACTION_pause:I = 0x14

.field static final TRANSACTION_play:I = 0xf

.field static final TRANSACTION_playFromMediaId:I = 0x10

.field static final TRANSACTION_playFromSearch:I = 0x11

.field static final TRANSACTION_playFromUri:I = 0x12

.field static final TRANSACTION_previous:I = 0x17

.field static final TRANSACTION_rate:I = 0x1b

.field static final TRANSACTION_registerCallbackListener:I = 0x3

.field static final TRANSACTION_releaseLock:I = 0x6

.field static final TRANSACTION_requestLock:I = 0x5

.field static final TRANSACTION_rewind:I = 0x19

.field static final TRANSACTION_seekTo:I = 0x1a

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendCustomAction:I = 0x1c

.field static final TRANSACTION_sendMediaButton:I = 0x2

.field static final TRANSACTION_setVolumeTo:I = 0xe

.field static final TRANSACTION_skipToQueueItem:I = 0x13

.field static final TRANSACTION_stop:I = 0x15

.field static final TRANSACTION_unregisterCallbackListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.media.session.ISessionController"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.media.session.ISessionController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/session/ISessionController;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/media/session/ISessionController;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/media/session/ISessionController$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/session/ISessionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 434
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 56
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 62
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    sget-object v6, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 68
    .local v3, "_arg2":Landroid/os/ResultReceiver;
    :goto_2
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/session/ISessionController$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 66
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_2

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_2
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    .line 77
    sget-object v8, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 82
    .local v0, "_arg0":Landroid/view/KeyEvent;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionController$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 83
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    .end local v4    # "_result":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_3

    .line 89
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_3
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v0

    .line 92
    .local v0, "_arg0":Landroid/media/session/ISessionControllerCallback;
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionController$Stub;->registerCallbackListener(Landroid/media/session/ISessionControllerCallback;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Landroid/media/session/ISessionControllerCallback;
    :sswitch_4
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Landroid/media/session/ISessionControllerCallback;
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionController$Stub;->unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 107
    .end local v0    # "_arg0":Landroid/media/session/ISessionControllerCallback;
    :sswitch_5
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->requestLock()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 114
    :sswitch_6
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->releaseLock()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    :sswitch_7
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->isTransportControlEnabled()Z

    move-result v4

    .line 123
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v4, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 139
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 147
    .local v4, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v4, :cond_5

    .line 149
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {v4, p3, v7}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 153
    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 159
    .end local v4    # "_result":Landroid/app/PendingIntent;
    :sswitch_b
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getFlags()J

    move-result-wide v4

    .line 161
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 167
    .end local v4    # "_result":J
    :sswitch_c
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    move-result-object v4

    .line 169
    .local v4, "_result":Landroid/media/session/ParcelableVolumeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v4, :cond_6

    .line 171
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v4, p3, v7}, Landroid/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 175
    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v4    # "_result":Landroid/media/session/ParcelableVolumeInfo;
    :sswitch_d
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 185
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/session/ISessionController$Stub;->adjustVolume(IILjava/lang/String;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 194
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_e
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 201
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/session/ISessionController$Stub;->setVolumeTo(IILjava/lang/String;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_f
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->play()V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 214
    :sswitch_10
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 219
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 224
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionController$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 222
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_4

    .line 230
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_11
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 235
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 240
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionController$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 238
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .line 246
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_12
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 249
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 255
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 256
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 261
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionController$Stub;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 252
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_6

    .line 259
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_7

    .line 267
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_13
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 270
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/media/session/ISessionController$Stub;->skipToQueueItem(J)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 276
    .end local v0    # "_arg0":J
    :sswitch_14
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->pause()V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 283
    :sswitch_15
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->stop()V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 290
    :sswitch_16
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->next()V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 297
    :sswitch_17
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->previous()V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 304
    :sswitch_18
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->fastForward()V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 311
    :sswitch_19
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->rewind()V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 318
    :sswitch_1a
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 321
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/media/session/ISessionController$Stub;->seekTo(J)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 327
    .end local v0    # "_arg0":J
    :sswitch_1b
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 330
    sget-object v6, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Rating;

    .line 335
    .local v0, "_arg0":Landroid/media/Rating;
    :goto_8
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionController$Stub;->rate(Landroid/media/Rating;)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 333
    .end local v0    # "_arg0":Landroid/media/Rating;
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/Rating;
    goto :goto_8

    .line 341
    .end local v0    # "_arg0":Landroid/media/Rating;
    :sswitch_1c
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 346
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 351
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionController$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 349
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_9

    .line 357
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_1d
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v4

    .line 359
    .local v4, "_result":Landroid/media/MediaMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v4, :cond_d

    .line 361
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    invoke-virtual {v4, p3, v7}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 365
    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 371
    .end local v4    # "_result":Landroid/media/MediaMetadata;
    :sswitch_1e
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    .line 373
    .local v4, "_result":Landroid/media/session/PlaybackState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v4, :cond_e

    .line 375
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    invoke-virtual {v4, p3, v7}, Landroid/media/session/PlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 379
    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 385
    .end local v4    # "_result":Landroid/media/session/PlaybackState;
    :sswitch_1f
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getQueue()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 387
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v4, :cond_f

    .line 389
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    invoke-virtual {v4, p3, v7}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 393
    :cond_f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 399
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_20
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 401
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    if-eqz v4, :cond_10

    .line 403
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    invoke-static {v4, p3, v7}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 407
    :cond_10
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 413
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :sswitch_21
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 415
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    if-eqz v4, :cond_11

    .line 417
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    invoke-virtual {v4, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 421
    :cond_11
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 427
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_22
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getRatingType()I

    move-result v4

    .line 429
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
