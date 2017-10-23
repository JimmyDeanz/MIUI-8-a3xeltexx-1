.class public abstract Lcom/samsung/android/thememanager/IThemeManager$Stub;
.super Landroid/os/Binder;
.source "IThemeManager.java"

# interfaces
.implements Lcom/samsung/android/thememanager/IThemeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/thememanager/IThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.thememanager.IThemeManager"

.field static final TRANSACTION_applyEventTheme:I = 0x1d

.field static final TRANSACTION_applyThemePackage:I = 0x14

.field static final TRANSACTION_changeThemeState:I = 0x8

.field static final TRANSACTION_deleteThemePackage:I = 0x15

.field static final TRANSACTION_getActiveComponents:I = 0x9

.field static final TRANSACTION_getActiveFestivalPackage:I = 0x1c

.field static final TRANSACTION_getActiveMyEvents:I = 0xb

.field static final TRANSACTION_getCategoryList:I = 0xc

.field static final TRANSACTION_getChineseFestivalList:I = 0x3

.field static final TRANSACTION_getComponentPackageMap:I = 0x2

.field static final TRANSACTION_getCoverAttachStatus:I = 0x19

.field static final TRANSACTION_getCurrentThemePackage:I = 0xa

.field static final TRANSACTION_getCustomData:I = 0x20

.field static final TRANSACTION_getListByCategory:I = 0xf

.field static final TRANSACTION_getPreviousToCoverPackage:I = 0x1a

.field static final TRANSACTION_getSpecialEditionThemePackage:I = 0x1e

.field static final TRANSACTION_getStateThemePackage:I = 0x11

.field static final TRANSACTION_getThemeDetailsList:I = 0x1

.field static final TRANSACTION_getThemeVersionForMasterPackage:I = 0x21

.field static final TRANSACTION_getThemesForComponent:I = 0x12

.field static final TRANSACTION_getVersionForThemeFramework:I = 0x5

.field static final TRANSACTION_installThemePackage:I = 0x4

.field static final TRANSACTION_isOnTrialMode:I = 0x6

.field static final TRANSACTION_isSupportThemePackage:I = 0x23

.field static final TRANSACTION_isSupportThemeVersion:I = 0x22

.field static final TRANSACTION_isThemePackageExist:I = 0x18

.field static final TRANSACTION_registerStatusListener:I = 0x16

.field static final TRANSACTION_removeThemePackage:I = 0x7

.field static final TRANSACTION_setCustomData:I = 0x1f

.field static final TRANSACTION_setDeleteMyEvents:I = 0xe

.field static final TRANSACTION_setFestivalPackage:I = 0x1b

.field static final TRANSACTION_setStateThemePackage:I = 0x10

.field static final TRANSACTION_setTimeForMyEvent:I = 0xd

.field static final TRANSACTION_stopTrialThemePackage:I = 0x13

.field static final TRANSACTION_unregisterStatusListener:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/thememanager/IThemeManager;
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
    const-string v1, "com.samsung.android.thememanager.IThemeManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/thememanager/IThemeManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/thememanager/IThemeManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 407
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getThemeDetailsList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 52
    .local v5, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/Map;
    :sswitch_2
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getComponentPackageMap()Ljava/util/Map;

    move-result-object v5

    .line 60
    .restart local v5    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .line 66
    .end local v5    # "_result":Ljava/util/Map;
    :sswitch_3
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getChineseFestivalList()Ljava/util/List;

    move-result-object v5

    .line 68
    .local v5, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 74
    .end local v5    # "_result":Ljava/util/List;
    :sswitch_4
    const-string v9, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    .line 77
    sget-object v9, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 83
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v2, v7

    .line 84
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->installThemePackage(Landroid/net/Uri;Z)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_1

    :cond_1
    move v2, v8

    .line 83
    goto :goto_2

    .line 90
    .end local v0    # "_arg0":Landroid/net/Uri;
    :sswitch_5
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getVersionForThemeFramework()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v9, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->isOnTrialMode(Ljava/lang/String;)Z

    move-result v5

    .line 102
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v5, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 108
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Z
    :sswitch_7
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->removeThemePackage(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v9, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    move v3, v7

    .line 124
    .local v3, "_arg2":Z
    :goto_3
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->changeThemeState(Ljava/lang/String;IZ)Z

    move-result v5

    .line 125
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v5, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_arg2":Z
    .end local v5    # "_result":Z
    :cond_4
    move v3, v8

    .line 123
    goto :goto_3

    .line 131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_9
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getActiveComponents()[Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    .end local v5    # "_result":[Ljava/lang/String;
    :sswitch_a
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getCurrentThemePackage()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getActiveMyEvents()Ljava/util/List;

    move-result-object v6

    .line 149
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 155
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_c
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getCategoryList()Ljava/util/List;

    move-result-object v5

    .line 157
    .local v5, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 163
    .end local v5    # "_result":Ljava/util/List;
    :sswitch_d
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setTimeForMyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 178
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_e
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 182
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setDeleteMyEvents(Ljava/util/List;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 189
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getListByCategory(I)Ljava/util/List;

    move-result-object v5

    .line 193
    .restart local v5    # "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Ljava/util/List;
    :sswitch_10
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setStateThemePackage(Ljava/lang/String;I)I

    move-result v5

    .line 205
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 211
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_11
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getStateThemePackage(Ljava/lang/String;)I

    move-result v5

    .line 215
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_12
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getThemesForComponent(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 227
    .restart local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 233
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_13
    const-string v9, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->stopTrialThemePackage()Z

    move-result v5

    .line 235
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v5, :cond_5

    move v8, v7

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v5    # "_result":Z
    :sswitch_14
    const-string v9, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    move v2, v7

    .line 246
    .local v2, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->applyThemePackage(Ljava/lang/String;Z)Z

    move-result v5

    .line 247
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v5, :cond_6

    move v8, v7

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v5    # "_result":Z
    :cond_7
    move v2, v8

    .line 245
    goto :goto_4

    .line 253
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->deleteThemePackage(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 262
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/thememanager/IStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/thememanager/IStatusListener;

    move-result-object v0

    .line 265
    .local v0, "_arg0":Lcom/samsung/android/thememanager/IStatusListener;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->registerStatusListener(Lcom/samsung/android/thememanager/IStatusListener;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 271
    .end local v0    # "_arg0":Lcom/samsung/android/thememanager/IStatusListener;
    :sswitch_17
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/thememanager/IStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/thememanager/IStatusListener;

    move-result-object v0

    .line 274
    .restart local v0    # "_arg0":Lcom/samsung/android/thememanager/IStatusListener;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->unregisterStatusListener(Lcom/samsung/android/thememanager/IStatusListener;)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 280
    .end local v0    # "_arg0":Lcom/samsung/android/thememanager/IStatusListener;
    :sswitch_18
    const-string v9, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->isThemePackageExist(Ljava/lang/String;)Z

    move-result v5

    .line 284
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    if-eqz v5, :cond_8

    move v8, v7

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 290
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Z
    :sswitch_19
    const-string v9, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getCoverAttachStatus(Ljava/lang/String;)Z

    move-result v5

    .line 294
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v5, :cond_9

    move v8, v7

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 300
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Z
    :sswitch_1a
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getPreviousToCoverPackage()Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setFestivalPackage(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 317
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1c
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getActiveFestivalPackage()Ljava/lang/String;

    move-result-object v5

    .line 319
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 332
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->applyEventTheme(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 338
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_1e
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getSpecialEditionThemePackage()Ljava/lang/String;

    move-result-object v5

    .line 340
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    .line 351
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 356
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setCustomData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 354
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .line 362
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_20
    const-string v9, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getCustomData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 366
    .local v5, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-eqz v5, :cond_b

    .line 368
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    invoke-virtual {v5, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 372
    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 378
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/Bundle;
    :sswitch_21
    const-string v8, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 381
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getThemeVersionForMasterPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 388
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string v9, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 391
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->isSupportThemeVersion(I)Z

    move-result v5

    .line 392
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    if-eqz v5, :cond_c

    move v8, v7

    :cond_c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 398
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_23
    const-string v9, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->isSupportThemePackage(Ljava/lang/String;)Z

    move-result v5

    .line 402
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v5, :cond_d

    move v8, v7

    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
