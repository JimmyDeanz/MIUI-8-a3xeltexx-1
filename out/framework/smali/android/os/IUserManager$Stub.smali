.class public abstract Landroid/os/IUserManager$Stub;
.super Landroid/os/Binder;
.source "IUserManager.java"

# interfaces
.implements Landroid/os/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IUserManager"

.field static final TRANSACTION_canAddMoreDualProfiles:I = 0xd

.field static final TRANSACTION_canAddMoreManagedProfiles:I = 0xc

.field static final TRANSACTION_createProfileForUser:I = 0x3

.field static final TRANSACTION_createUser:I = 0x2

.field static final TRANSACTION_getApplicationRestrictions:I = 0x1a

.field static final TRANSACTION_getApplicationRestrictionsForUser:I = 0x1b

.field static final TRANSACTION_getCredentialOwnerProfile:I = 0x1

.field static final TRANSACTION_getDefaultGuestRestrictions:I = 0x1e

.field static final TRANSACTION_getProfileParent:I = 0xe

.field static final TRANSACTION_getProfiles:I = 0xb

.field static final TRANSACTION_getUserCreationTime:I = 0x10

.field static final TRANSACTION_getUserHandle:I = 0x13

.field static final TRANSACTION_getUserIcon:I = 0x8

.field static final TRANSACTION_getUserIconForBitmap:I = 0x9

.field static final TRANSACTION_getUserInfo:I = 0xf

.field static final TRANSACTION_getUserRestrictions:I = 0x14

.field static final TRANSACTION_getUserSerialNumber:I = 0x12

.field static final TRANSACTION_getUsers:I = 0xa

.field static final TRANSACTION_hasUserRestriction:I = 0x15

.field static final TRANSACTION_isRestricted:I = 0x11

.field static final TRANSACTION_markGuestForDeletion:I = 0x1f

.field static final TRANSACTION_removeRestrictions:I = 0x1c

.field static final TRANSACTION_removeUser:I = 0x5

.field static final TRANSACTION_setApplicationRestrictions:I = 0x19

.field static final TRANSACTION_setDefaultGuestRestrictions:I = 0x1d

.field static final TRANSACTION_setKnoxRestrictions:I = 0x20

.field static final TRANSACTION_setSystemControlledUserRestriction:I = 0x18

.field static final TRANSACTION_setUserEnabled:I = 0x4

.field static final TRANSACTION_setUserIcon:I = 0x7

.field static final TRANSACTION_setUserName:I = 0x6

.field static final TRANSACTION_setUserRestriction:I = 0x17

.field static final TRANSACTION_setUserRestrictions:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.IUserManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IUserManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.os.IUserManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IUserManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/IUserManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/os/IUserManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IUserManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 466
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 45
    :sswitch_0
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->getCredentialOwnerProfile(I)I

    move-result v4

    .line 54
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_2
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/IUserManager$Stub;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 66
    .local v4, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {v4, p3, v7}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_3
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 85
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IUserManager$Stub;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 86
    .restart local v4    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v4, p3, v7}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_4
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->setUserEnabled(I)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->removeUser(I)Z

    move-result v4

    .line 111
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_6
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IUserManager$Stub;->setUserName(ILjava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 128
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_7
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 133
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 138
    .local v1, "_arg1":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/os/IUserManager$Stub;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    .end local v1    # "_arg1":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 144
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_8
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 148
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v4, :cond_4

    .line 150
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v4, p3, v7}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 154
    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_9
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->getUserIconForBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 164
    .local v4, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v4, :cond_5

    .line 166
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {v4, p3, v7}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 170
    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 176
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/graphics/Bitmap;
    :sswitch_a
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v0, v7

    .line 179
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 180
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    move v0, v6

    .line 178
    goto :goto_2

    .line 186
    :sswitch_b
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 190
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7

    move v1, v7

    .line 191
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/os/IUserManager$Stub;->getProfiles(IZ)Ljava/util/List;

    move-result-object v3

    .line 192
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    move v1, v6

    .line 190
    goto :goto_3

    .line 198
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->canAddMoreManagedProfiles()Z

    move-result v4

    .line 200
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v4, :cond_8

    move v6, v7

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v4    # "_result":Z
    :sswitch_d
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->canAddMoreDualProfiles()Z

    move-result v4

    .line 208
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v4, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v4    # "_result":Z
    :sswitch_e
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 218
    .local v4, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v4, :cond_a

    .line 220
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    invoke-virtual {v4, p3, v7}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 224
    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 230
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_f
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 233
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 234
    .restart local v4    # "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v4, :cond_b

    .line 236
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    invoke-virtual {v4, p3, v7}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 240
    :cond_b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 246
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/content/pm/UserInfo;
    :sswitch_10
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->getUserCreationTime(I)J

    move-result-wide v4

    .line 250
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":I
    .end local v4    # "_result":J
    :sswitch_11
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->isRestricted()Z

    move-result v4

    .line 258
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v4, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    .end local v4    # "_result":Z
    :sswitch_12
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 267
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->getUserSerialNumber(I)I

    move-result v4

    .line 268
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 274
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_13
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->getUserHandle(I)I

    move-result v4

    .line 278
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 284
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_14
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 287
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    .line 288
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v4, :cond_d

    .line 290
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    invoke-virtual {v4, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 294
    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 300
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_15
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 305
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/IUserManager$Stub;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v4

    .line 306
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    if-eqz v4, :cond_e

    move v6, v7

    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 312
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_16
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    .line 315
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 321
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 322
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/IUserManager$Stub;->setUserRestrictions(Landroid/os/Bundle;I)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 318
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_4

    .line 328
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_17
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10

    move v1, v7

    .line 334
    .local v1, "_arg1":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IUserManager$Stub;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :cond_10
    move v1, v6

    .line 332
    goto :goto_5

    .line 341
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 345
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11

    move v1, v7

    .line 347
    .restart local v1    # "_arg1":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IUserManager$Stub;->setSystemControlledUserRestriction(Ljava/lang/String;ZI)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :cond_11
    move v1, v6

    .line 345
    goto :goto_6

    .line 354
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 358
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 359
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 365
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 366
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IUserManager$Stub;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 362
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_7

    .line 372
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_1a
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 376
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v4, :cond_13

    .line 378
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    invoke-virtual {v4, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 382
    :cond_13
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 388
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_1b
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 393
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/IUserManager$Stub;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    .line 394
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v4, :cond_14

    .line 396
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    invoke-virtual {v4, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 400
    :cond_14
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 406
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_1c
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->removeRestrictions()V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 413
    :sswitch_1d
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    .line 416
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 421
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 419
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_15
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_8

    .line 427
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_1e
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v4

    .line 429
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    if-eqz v4, :cond_16

    .line 431
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    invoke-virtual {v4, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 435
    :cond_16
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 441
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_1f
    const-string v8, "android.os.IUserManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 444
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IUserManager$Stub;->markGuestForDeletion(I)Z

    move-result v4

    .line 445
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v4, :cond_17

    move v6, v7

    :cond_17
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 451
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_20
    const-string v6, "android.os.IUserManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    .line 454
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 460
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 461
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/IUserManager$Stub;->setKnoxRestrictions(Landroid/os/Bundle;I)V

    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 457
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    :cond_18
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
