.class public abstract Lcom/samsung/android/game/IGameManagerService$Stub;
.super Landroid/os/Binder;
.source "IGameManagerService.java"

# interfaces
.implements Lcom/samsung/android/game/IGameManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/IGameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/IGameManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.game.IGameManagerService"

.field static final TRANSACTION_addGame:I = 0xa

.field static final TRANSACTION_getForegroundApp:I = 0x3

.field static final TRANSACTION_getGameList:I = 0x4

.field static final TRANSACTION_getGameMap:I = 0x9

.field static final TRANSACTION_getMode:I = 0x7

.field static final TRANSACTION_getVersion:I = 0xd

.field static final TRANSACTION_identifyForegroundApp:I = 0x2

.field static final TRANSACTION_identifyGamePackage:I = 0x1

.field static final TRANSACTION_initGameManager:I = 0xb

.field static final TRANSACTION_notifyMultiWindowStyleChangedLocked:I = 0xc

.field static final TRANSACTION_registerCallback:I = 0x5

.field static final TRANSACTION_requestWithJson:I = 0xe

.field static final TRANSACTION_setMode:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.android.game.IGameManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/game/IGameManagerService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/game/IGameManagerService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/game/IGameManagerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/game/IGameManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    const-string v5, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->identifyGamePackage(Ljava/lang/String;)I

    move-result v2

    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_2
    const-string v5, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->identifyForegroundApp()I

    move-result v2

    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2    # "_result":I
    :sswitch_3
    const-string v5, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getForegroundApp()Ljava/lang/String;

    move-result-object v2

    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getGameList()Ljava/util/List;

    move-result-object v3

    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v7, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/game/IGameManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerCallback;

    move-result-object v0

    .local v0, "_arg0":Lcom/samsung/android/game/IGameManagerCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v2

    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Lcom/samsung/android/game/IGameManagerCallback;
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v7, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/game/IGameManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerCallback;

    move-result-object v0

    .restart local v0    # "_arg0":Lcom/samsung/android/game/IGameManagerCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v2

    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Lcom/samsung/android/game/IGameManagerCallback;
    .end local v2    # "_result":Z
    :sswitch_7
    const-string v5, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getMode()I

    move-result v2

    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_result":I
    :sswitch_8
    const-string v7, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->setMode(I)Z

    move-result v2

    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_9
    const-string v5, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getGameMap()Ljava/util/Map;

    move-result-object v2

    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .end local v2    # "_result":Ljava/util/Map;
    :sswitch_a
    const-string v7, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v1, v6

    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/IGameManagerService$Stub;->addGame(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_4
    move v1, v5

    goto :goto_1

    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v7, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .local v4, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .local v1, "_arg1":Ljava/util/Map;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/IGameManagerService$Stub;->initGameManager(ILjava/util/Map;)Z

    move-result v2

    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/Map;
    .end local v2    # "_result":Z
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :sswitch_c
    const-string v7, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    move v1, v6

    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/IGameManagerService$Stub;->notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    :cond_7
    move v1, v5

    goto :goto_3

    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d
    const-string v5, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;->getVersion()Ljava/lang/String;

    move-result-object v2

    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string v5, "com.samsung.android.game.IGameManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/IGameManagerService$Stub;->requestWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
