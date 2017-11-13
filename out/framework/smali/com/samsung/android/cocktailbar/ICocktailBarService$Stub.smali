.class public abstract Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;
.super Landroid/os/Binder;
.source "ICocktailBarService.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/ICocktailBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/ICocktailBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cocktailbar.ICocktailBarService"

.field static final TRANSACTION_activateCocktailBar:I = 0x2a

.field static final TRANSACTION_bindRemoteViewsService:I = 0x14

.field static final TRANSACTION_closeCocktail:I = 0xc

.field static final TRANSACTION_cocktailBarreboot:I = 0x3b

.field static final TRANSACTION_cocktailBarshutdown:I = 0x3a

.field static final TRANSACTION_deactivateCocktailBar:I = 0x2b

.field static final TRANSACTION_disableCocktail:I = 0xe

.field static final TRANSACTION_getAllCocktailIds:I = 0x6

.field static final TRANSACTION_getCocktaiBarWakeUpState:I = 0x35

.field static final TRANSACTION_getCocktail:I = 0x7

.field static final TRANSACTION_getCocktailBarStateInfo:I = 0x27

.field static final TRANSACTION_getCocktailBarVisibility:I = 0x26

.field static final TRANSACTION_getCocktailId:I = 0xd

.field static final TRANSACTION_getCocktailIds:I = 0xf

.field static final TRANSACTION_getEnabledCocktailIds:I = 0x5

.field static final TRANSACTION_getWindowType:I = 0x29

.field static final TRANSACTION_isAllowTransientBarCocktailBar:I = 0x37

.field static final TRANSACTION_isBoundCocktailPackage:I = 0x10

.field static final TRANSACTION_isEnabledCocktail:I = 0x11

.field static final TRANSACTION_notifyCocktailViewDataChanged:I = 0x12

.field static final TRANSACTION_notifyCocktailVisibiltyChanged:I = 0x1b

.field static final TRANSACTION_notifyKeyguardState:I = 0x1a

.field static final TRANSACTION_partiallyUpdateCocktail:I = 0x9

.field static final TRANSACTION_partiallyUpdateHelpView:I = 0xa

.field static final TRANSACTION_registerClient:I = 0x2c

.field static final TRANSACTION_registerCocktailBarFeedsListenerCallback:I = 0x24

.field static final TRANSACTION_registerCocktailBarStateListenerCallback:I = 0x22

.field static final TRANSACTION_removeCocktailUIService:I = 0x39

.field static final TRANSACTION_requestToDisableCocktail:I = 0x17

.field static final TRANSACTION_requestToDisableCocktailByCategory:I = 0x19

.field static final TRANSACTION_requestToUpdateCocktail:I = 0x16

.field static final TRANSACTION_requestToUpdateCocktailByCategory:I = 0x18

.field static final TRANSACTION_sendDragEvent:I = 0x1c

.field static final TRANSACTION_sendExtraDataToCocktailBar:I = 0x38

.field static final TRANSACTION_setCocktailBarStatus:I = 0x21

.field static final TRANSACTION_setCocktailBarWakeUpState:I = 0x34

.field static final TRANSACTION_setCocktailHostCallbacks:I = 0x1

.field static final TRANSACTION_setDisableTickerView:I = 0x2e

.field static final TRANSACTION_setEnabledCocktailIds:I = 0x4

.field static final TRANSACTION_showAndLockCocktailBar:I = 0x1d

.field static final TRANSACTION_showCocktail:I = 0xb

.field static final TRANSACTION_startListening:I = 0x2

.field static final TRANSACTION_stopListening:I = 0x3

.field static final TRANSACTION_switchDefaultCocktail:I = 0x36

.field static final TRANSACTION_unbindRemoteViewsService:I = 0x15

.field static final TRANSACTION_unlockCocktailBar:I = 0x1e

.field static final TRANSACTION_unregisterClient:I = 0x2d

.field static final TRANSACTION_unregisterCocktailBarFeedsListenerCallback:I = 0x25

.field static final TRANSACTION_unregisterCocktailBarStateListenerCallback:I = 0x23

.field static final TRANSACTION_updateCocktail:I = 0x8

.field static final TRANSACTION_updateCocktailBarPosition:I = 0x20

.field static final TRANSACTION_updateCocktailBarVisibility:I = 0x1f

.field static final TRANSACTION_updateCocktailBarWindowType:I = 0x28

.field static final TRANSACTION_updateFeeds:I = 0x13

.field static final TRANSACTION_updateLongpressGesture:I = 0x31

.field static final TRANSACTION_updateSysfsBarLength:I = 0x33

.field static final TRANSACTION_updateSysfsDeadZone:I = 0x32

.field static final TRANSACTION_updateWakeupArea:I = 0x30

.field static final TRANSACTION_updateWakeupGesture:I = 0x2f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 722
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :sswitch_2
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v0

    .line 65
    .restart local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :sswitch_3
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->stopListening(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 86
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setEnabledCocktailIds([I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":[I
    :sswitch_5
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getEnabledCocktailIds()[I

    move-result-object v5

    .line 94
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 100
    .end local v5    # "_result":[I
    :sswitch_6
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getAllCocktailIds()[I

    move-result-object v5

    .line 102
    .restart local v5    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 108
    .end local v5    # "_result":[I
    :sswitch_7
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v5

    .line 112
    .local v5, "_result":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v5, p3, v7}, Lcom/samsung/android/cocktailbar/Cocktail;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 118
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Lcom/samsung/android/cocktailbar/Cocktail;
    :sswitch_8
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    sget-object v6, Lcom/samsung/android/cocktailbar/CocktailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 135
    .local v1, "_arg1":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 132
    .end local v1    # "_arg1":Lcom/samsung/android/cocktailbar/CocktailInfo;
    .end local v2    # "_arg2":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/cocktailbar/CocktailInfo;
    goto :goto_1

    .line 142
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :sswitch_9
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    sget-object v6, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 153
    .local v1, "_arg1":Landroid/widget/RemoteViews;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 150
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    .end local v2    # "_arg2":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_2

    .line 160
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_a
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 165
    sget-object v6, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 171
    .restart local v1    # "_arg1":Landroid/widget/RemoteViews;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    .end local v2    # "_arg2":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_3

    .line 178
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_b
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->showCocktail(Ljava/lang/String;I)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 189
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_c
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->closeCocktail(Ljava/lang/String;II)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 202
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_d
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 207
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 212
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result v5

    .line 213
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 210
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_result":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_4

    .line 219
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_e
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 224
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 229
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 227
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_5

    .line 235
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_f
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    .line 240
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 245
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I

    move-result-object v5

    .line 246
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 243
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_result":[I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_6

    .line 252
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_10
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isBoundCocktailPackage(Ljava/lang/String;I)Z

    move-result v5

    .line 258
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v5, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v5    # "_result":Z
    :sswitch_11
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    .line 269
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 274
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v5

    .line 275
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v5, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 272
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_result":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_7

    .line 281
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_12
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 287
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 288
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 294
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_13
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .restart local v1    # "_arg1":I
    sget-object v6, Lcom/samsung/android/cocktailbar/FeedsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 301
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateFeeds(Ljava/lang/String;ILjava/util/List;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 307
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    :sswitch_14
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 313
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 314
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 320
    .local v2, "_arg2":Landroid/content/Intent;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 321
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 317
    .end local v2    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/content/Intent;
    goto :goto_8

    .line 327
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/Intent;
    :sswitch_15
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 334
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 339
    .restart local v2    # "_arg2":Landroid/content/Intent;
    :goto_9
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 337
    .end local v2    # "_arg2":Landroid/content/Intent;
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/content/Intent;
    goto :goto_9

    .line 345
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/Intent;
    :sswitch_16
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktail(I)Z

    move-result v5

    .line 349
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v5, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 355
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_17
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 358
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktail(I)Z

    move-result v5

    .line 359
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v5, :cond_d

    move v6, v7

    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 365
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_18
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 368
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktailByCategory(I)Z

    move-result v5

    .line 369
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v5, :cond_e

    move v6, v7

    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 375
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_19
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 378
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktailByCategory(I)Z

    move-result v5

    .line 379
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v5, :cond_f

    move v6, v7

    :cond_f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 385
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_1a
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10

    move v0, v7

    .line 388
    .local v0, "_arg0":Z
    :goto_a
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyKeyguardState(Z)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_10
    move v0, v6

    .line 387
    goto :goto_a

    .line 394
    :sswitch_1b
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 398
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 399
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyCocktailVisibiltyChanged(II)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 405
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_1c
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 409
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 410
    sget-object v6, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DragEvent;

    .line 415
    .local v1, "_arg1":Landroid/view/DragEvent;
    :goto_b
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->sendDragEvent(ILandroid/view/DragEvent;)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 413
    .end local v1    # "_arg1":Landroid/view/DragEvent;
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/view/DragEvent;
    goto :goto_b

    .line 421
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/DragEvent;
    :sswitch_1d
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->showAndLockCocktailBar()V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 428
    :sswitch_1e
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 431
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unlockCocktailBar(I)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 437
    .end local v0    # "_arg0":I
    :sswitch_1f
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 440
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarVisibility(I)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 446
    .end local v0    # "_arg0":I
    :sswitch_20
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 449
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarPosition(I)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 455
    .end local v0    # "_arg0":I
    :sswitch_21
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_12

    move v0, v7

    .line 459
    .local v0, "_arg0":Z
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_13

    move v1, v7

    .line 460
    .local v1, "_arg1":Z
    :goto_d
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailBarStatus(ZZ)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_12
    move v0, v6

    .line 457
    goto :goto_c

    .restart local v0    # "_arg0":Z
    :cond_13
    move v1, v6

    .line 459
    goto :goto_d

    .line 466
    .end local v0    # "_arg0":Z
    :sswitch_22
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 470
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    .line 471
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 476
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 474
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_e

    .line 482
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_23
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 485
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 491
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_24
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 495
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    .line 496
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 501
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->registerCocktailBarFeedsListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 499
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_15
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_f

    .line 507
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_25
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 510
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unregisterCocktailBarFeedsListenerCallback(Landroid/os/IBinder;)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 516
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_26
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailBarVisibility()I

    move-result v5

    .line 518
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 524
    .end local v5    # "_result":I
    :sswitch_27
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v5

    .line 526
    .local v5, "_result":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    if-eqz v5, :cond_16

    .line 528
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    invoke-virtual {v5, p3, v7}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 532
    :cond_16
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 538
    .end local v5    # "_result":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :sswitch_28
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 543
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarWindowType(Ljava/lang/String;I)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 549
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_29
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getWindowType()I

    move-result v5

    .line 551
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 557
    .end local v5    # "_result":I
    :sswitch_2a
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->activateCocktailBar()V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 564
    :sswitch_2b
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->deactivateCocktailBar()V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 571
    :sswitch_2c
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 575
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    .line 576
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 581
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_10
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 579
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_10

    .line 587
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_2d
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 590
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unregisterClient(Landroid/os/IBinder;)V

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 596
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_2e
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 599
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setDisableTickerView(I)V

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 605
    .end local v0    # "_arg0":I
    :sswitch_2f
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 609
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_18

    move v1, v7

    .line 610
    .local v1, "_arg1":Z
    :goto_11
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateWakeupGesture(IZ)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_18
    move v1, v6

    .line 609
    goto :goto_11

    .line 616
    .end local v0    # "_arg0":I
    :sswitch_30
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 619
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateWakeupArea(I)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 625
    .end local v0    # "_arg0":I
    :sswitch_31
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_19

    move v0, v7

    .line 628
    .local v0, "_arg0":Z
    :goto_12
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateLongpressGesture(Z)V

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_19
    move v0, v6

    .line 627
    goto :goto_12

    .line 634
    :sswitch_32
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 637
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateSysfsDeadZone(I)V

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 643
    .end local v0    # "_arg0":I
    :sswitch_33
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 646
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateSysfsBarLength(I)V

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 652
    .end local v0    # "_arg0":I
    :sswitch_34
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1a

    move v0, v7

    .line 655
    .local v0, "_arg0":Z
    :goto_13
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailBarWakeUpState(Z)V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_1a
    move v0, v6

    .line 654
    goto :goto_13

    .line 661
    :sswitch_35
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktaiBarWakeUpState()Z

    move-result v5

    .line 663
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    if-eqz v5, :cond_1b

    move v6, v7

    :cond_1b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 669
    .end local v5    # "_result":Z
    :sswitch_36
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->switchDefaultCocktail()V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 676
    :sswitch_37
    const-string v8, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isAllowTransientBarCocktailBar()Z

    move-result v5

    .line 678
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    if-eqz v5, :cond_1c

    move v6, v7

    :cond_1c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 684
    .end local v5    # "_result":Z
    :sswitch_38
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    .line 687
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 692
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_14
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 690
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_14

    .line 698
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_39
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->removeCocktailUIService()V

    .line 700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 705
    :sswitch_3a
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->cocktailBarshutdown(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 714
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3b
    const-string v6, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 717
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->cocktailBarreboot(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
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
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
