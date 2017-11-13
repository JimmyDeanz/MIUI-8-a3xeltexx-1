.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final TRANSACTION_checkAppLockBackupPin:I = 0x42

.field static final TRANSACTION_checkAppLockFingerprintPassword:I = 0x43

.field static final TRANSACTION_checkAppLockPassword:I = 0x40

.field static final TRANSACTION_checkAppLockPattern:I = 0x41

.field static final TRANSACTION_checkAppLockPin:I = 0x3f

.field static final TRANSACTION_checkBackupPassword:I = 0x4a

.field static final TRANSACTION_checkBackupPin:I = 0x15

.field static final TRANSACTION_checkCarrierPassword:I = 0x1f

.field static final TRANSACTION_checkFMMPassword:I = 0x19

.field static final TRANSACTION_checkParentControlPassword:I = 0x22

.field static final TRANSACTION_checkPassword:I = 0xb

.field static final TRANSACTION_checkPattern:I = 0x8

.field static final TRANSACTION_checkPersonalModeBackupPin:I = 0x33

.field static final TRANSACTION_checkPersonalModeFingerprintPassword:I = 0x34

.field static final TRANSACTION_checkPersonalModePassword:I = 0x31

.field static final TRANSACTION_checkPersonalModePattern:I = 0x32

.field static final TRANSACTION_checkPersonalModePin:I = 0x30

.field static final TRANSACTION_checkSignatureBackupPin:I = 0x28

.field static final TRANSACTION_checkVoldPassword:I = 0xd

.field static final TRANSACTION_getBoolean:I = 0x4

.field static final TRANSACTION_getCarrierLockPlusMode:I = 0x1b

.field static final TRANSACTION_getLong:I = 0x5

.field static final TRANSACTION_getParentControlPasswordHashSize:I = 0x24

.field static final TRANSACTION_getSignatureInfo:I = 0x26

.field static final TRANSACTION_getString:I = 0x6

.field static final TRANSACTION_haveAppLockBackupPin:I = 0x47

.field static final TRANSACTION_haveAppLockFingerprintPassword:I = 0x48

.field static final TRANSACTION_haveAppLockPassword:I = 0x45

.field static final TRANSACTION_haveAppLockPattern:I = 0x46

.field static final TRANSACTION_haveAppLockPin:I = 0x44

.field static final TRANSACTION_haveBackupPassword:I = 0x4c

.field static final TRANSACTION_haveBackupPin:I = 0x17

.field static final TRANSACTION_haveCarrierPassword:I = 0x20

.field static final TRANSACTION_haveFMMPassword:I = 0x1a

.field static final TRANSACTION_haveParentControlPassword:I = 0x23

.field static final TRANSACTION_havePassword:I = 0xf

.field static final TRANSACTION_havePattern:I = 0xe

.field static final TRANSACTION_havePersonalModeBackupPin:I = 0x38

.field static final TRANSACTION_havePersonalModeFingerprintPassword:I = 0x39

.field static final TRANSACTION_havePersonalModePassword:I = 0x36

.field static final TRANSACTION_havePersonalModePattern:I = 0x37

.field static final TRANSACTION_havePersonalModePin:I = 0x35

.field static final TRANSACTION_haveSignature:I = 0x29

.field static final TRANSACTION_haveSignatureBackupPin:I = 0x2a

.field static final TRANSACTION_registerStrongAuthTracker:I = 0x10

.field static final TRANSACTION_requireStrongAuth:I = 0x12

.field static final TRANSACTION_sanitizePassword:I = 0x13

.field static final TRANSACTION_setAppLockBackupPin:I = 0x3d

.field static final TRANSACTION_setAppLockFingerprintPassword:I = 0x3e

.field static final TRANSACTION_setAppLockPassword:I = 0x3b

.field static final TRANSACTION_setAppLockPattern:I = 0x3c

.field static final TRANSACTION_setAppLockPin:I = 0x3a

.field static final TRANSACTION_setBoolean:I = 0x1

.field static final TRANSACTION_setCarrierLockPlusEnabled:I = 0x1c

.field static final TRANSACTION_setLockBackupPassword:I = 0x49

.field static final TRANSACTION_setLockBackupPin:I = 0x14

.field static final TRANSACTION_setLockCarrierPassword:I = 0x1d

.field static final TRANSACTION_setLockFMMPassword:I = 0x18

.field static final TRANSACTION_setLockParentControlPassword:I = 0x21

.field static final TRANSACTION_setLockPassword:I = 0xa

.field static final TRANSACTION_setLockPattern:I = 0x7

.field static final TRANSACTION_setLong:I = 0x2

.field static final TRANSACTION_setPersonalModeFingerprintPassword:I = 0x2f

.field static final TRANSACTION_setPersonalModeLockBackupPin:I = 0x2e

.field static final TRANSACTION_setPersonalModeLockPassword:I = 0x2c

.field static final TRANSACTION_setPersonalModeLockPattern:I = 0x2d

.field static final TRANSACTION_setPersonalModeLockPin:I = 0x2b

.field static final TRANSACTION_setSignatureBackupPin:I = 0x27

.field static final TRANSACTION_setSignatureInfo:I = 0x25

.field static final TRANSACTION_setString:I = 0x3

.field static final TRANSACTION_unregisterStrongAuthTracker:I = 0x11

.field static final TRANSACTION_updateCarrierLockPlusMode:I = 0x1e

.field static final TRANSACTION_verifyBackupPassword:I = 0x4b

.field static final TRANSACTION_verifyBackupPin:I = 0x16

.field static final TRANSACTION_verifyPassword:I = 0xc

.field static final TRANSACTION_verifyPattern:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.internal.widget.ILockSettings"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/widget/ILockSettings;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    :sswitch_0
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v8

    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2    # "_arg1":Z
    .end local v4    # "_arg2":I
    :cond_0
    move v2, v9

    goto :goto_1

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :sswitch_3
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :sswitch_4
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v2, v8

    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1

    move v9, v8

    :cond_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Z
    :cond_2
    move v2, v9

    goto :goto_2

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v6    # "_result":J
    :sswitch_6
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :sswitch_8
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .local v6, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_3

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_9
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_4

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_a
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :sswitch_b
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_5

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_c
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_6

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_d
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkVoldPassword(I)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_7

    move v9, v8

    :cond_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_e
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->havePattern(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_8

    move v9, v8

    :cond_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_f
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->havePassword(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_9

    move v9, v8

    :cond_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_10
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v1

    .local v1, "_arg0":Landroid/app/trust/IStrongAuthTracker;
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :sswitch_11
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v1

    .restart local v1    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :sswitch_12
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->requireStrongAuth(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_13
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->sanitizePassword()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :sswitch_15
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkBackupPin(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .local v6, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_a

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_16
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyBackupPin(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_b

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_17
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->haveBackupPin(I)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_c

    move v9, v8

    :cond_c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_18
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockFMMPassword(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_19
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkFMMPassword(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_d

    move v9, v8

    :cond_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_1a
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->haveFMMPassword(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_e

    move v9, v8

    :cond_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_1b
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getCarrierLockPlusMode(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_f

    move v9, v8

    :cond_f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_1c
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setCarrierLockPlusEnabled(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    :sswitch_1d
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCarrierPassword(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_1e
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->updateCarrierLockPlusMode(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_10

    move v9, v8

    :cond_10
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_1f
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCarrierPassword(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_11

    move v9, v8

    :cond_11
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_20
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->haveCarrierPassword(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_12

    move v9, v8

    :cond_12
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_21
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockParentControlPassword([BI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :sswitch_22
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkParentControlPassword([BI)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_13

    move v9, v8

    :cond_13
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_23
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->haveParentControlPassword(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_14

    move v9, v8

    :cond_14
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_24
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getParentControlPasswordHashSize(I)I

    move-result v6

    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_25
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setSignatureInfo([BI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :sswitch_26
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getSignatureInfo(I)[B

    move-result-object v6

    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":[B
    :sswitch_27
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setSignatureBackupPin([BI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :sswitch_28
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkSignatureBackupPin([BI)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_15

    move v9, v8

    :cond_15
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_29
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->haveSignature(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_16

    move v9, v8

    :cond_16
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_2a
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->haveSignatureBackupPin(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_17

    move v9, v8

    :cond_17
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_2b
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setPersonalModeLockPin(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_2c
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setPersonalModeLockPassword(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_2d
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setPersonalModeLockPattern(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_2e
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_2f
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setPersonalModeFingerprintPassword(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_30
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPersonalModePin(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_18

    move v9, v8

    :cond_18
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_31
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPersonalModePassword(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_19

    move v9, v8

    :cond_19
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_32
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPersonalModePattern(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1a

    move v9, v8

    :cond_1a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_33
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1b

    move v9, v8

    :cond_1b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_34
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1c

    move v9, v8

    :cond_1c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_35
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->havePersonalModePin(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1d

    move v9, v8

    :cond_1d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_36
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->havePersonalModePassword(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1e

    move v9, v8

    :cond_1e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_37
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->havePersonalModePattern(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1f

    move v9, v8

    :cond_1f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_38
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->havePersonalModeBackupPin(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_20

    move v9, v8

    :cond_20
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_39
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->havePersonalModeFingerprintPassword(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_21

    move v9, v8

    :cond_21
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_3a
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockPin(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_3b
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockPassword(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_3c
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockPattern(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_3d
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockBackupPin(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_3e
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockFingerprintPassword(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_3f
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_22

    move v9, v8

    :cond_22
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_40
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_23

    move v9, v8

    :cond_23
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_41
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockPattern(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_24

    move v9, v8

    :cond_24
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_42
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockBackupPin(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_25

    move v9, v8

    :cond_25
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_43
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockFingerprintPassword(Ljava/lang/String;I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_26

    move v9, v8

    :cond_26
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_44
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockPin(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_27

    move v9, v8

    :cond_27
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_45
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockPassword(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_28

    move v9, v8

    :cond_28
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_46
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockPattern(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_29

    move v9, v8

    :cond_29
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_47
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockBackupPin(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2a

    move v9, v8

    :cond_2a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_48
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockFingerprintPassword(I)Z

    move-result v6

    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2b

    move v9, v8

    :cond_2b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_49
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    move v5, v8

    .local v5, "_arg3":Z
    :goto_3
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v5    # "_arg3":Z
    :cond_2c
    move v5, v9

    goto :goto_3

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :sswitch_4a
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    move v4, v8

    .local v4, "_arg2":Z
    :goto_4
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .local v6, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2e

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v4    # "_arg2":Z
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2d
    move v4, v9

    goto :goto_4

    .restart local v4    # "_arg2":Z
    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_4b
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    move v5, v8

    .restart local v5    # "_arg3":Z
    :goto_5
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyBackupPassword(Ljava/lang/String;JIZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_30

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2f
    move v5, v9

    goto :goto_5

    .restart local v5    # "_arg3":Z
    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_30
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_4c
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->haveBackupPassword(I)Z

    move-result v6

    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_31

    move v9, v8

    :cond_31
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

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
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
