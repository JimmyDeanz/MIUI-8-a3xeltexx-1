.class public abstract Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub;
.super Landroid/os/Binder;
.source "IEmailKeystoreService.java"

# interfaces
.implements Lcom/samsung/android/emailksproxy/IEmailKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/emailksproxy/IEmailKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.emailksproxy.IEmailKeystoreService"

.field static final TRANSACTION_getKeystoreStatus:I = 0x5

.field static final TRANSACTION_grantAccessForAKS:I = 0x3

.field static final TRANSACTION_installCACert:I = 0x4

.field static final TRANSACTION_installCertificateInAndroidKeyStore:I = 0x2

.field static final TRANSACTION_isAliasExists:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.emailksproxy.IEmailKeystoreService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emailksproxy/IEmailKeystoreService;
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
    const-string v1, "com.samsung.android.emailksproxy.IEmailKeystoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/emailksproxy/IEmailKeystoreService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/emailksproxy/IEmailKeystoreService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v0, "com.samsung.android.emailksproxy.IEmailKeystoreService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v8, "com.samsung.android.emailksproxy.IEmailKeystoreService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v2, v7

    .line 56
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub;->isAliasExists(Ljava/lang/String;Z)I

    move-result v6

    .line 57
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":I
    :cond_0
    move v2, v0

    .line 55
    goto :goto_1

    .line 63
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v8, "com.samsung.android.emailksproxy.IEmailKeystoreService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 66
    sget-object v8, Lcom/samsung/android/emailksproxy/CertByte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/emailksproxy/CertByte;

    .line 72
    .local v1, "_arg0":Lcom/samsung/android/emailksproxy/CertByte;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v3

    .line 76
    .local v3, "_arg2":[C
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v4, v7

    .line 78
    .local v4, "_arg3":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub;->installCertificateInAndroidKeyStore(Lcom/samsung/android/emailksproxy/CertByte;Ljava/lang/String;[CZI)I

    move-result v6

    .line 80
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v1    # "_arg0":Lcom/samsung/android/emailksproxy/CertByte;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[C
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/samsung/android/emailksproxy/CertByte;
    goto :goto_2

    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":[C
    :cond_2
    move v4, v0

    .line 76
    goto :goto_3

    .line 86
    .end local v1    # "_arg0":Lcom/samsung/android/emailksproxy/CertByte;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[C
    :sswitch_3
    const-string v0, "com.samsung.android.emailksproxy.IEmailKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub;->grantAccessForAKS(ILjava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v0, "com.samsung.android.emailksproxy.IEmailKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    sget-object v0, Lcom/samsung/android/emailksproxy/CertificateAKS;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/emailksproxy/CertificateAKS;

    .line 105
    .local v1, "_arg0":Lcom/samsung/android/emailksproxy/CertificateAKS;
    :goto_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub;->installCACert(Lcom/samsung/android/emailksproxy/CertificateAKS;)I

    move-result v6

    .line 106
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 103
    .end local v1    # "_arg0":Lcom/samsung/android/emailksproxy/CertificateAKS;
    .end local v6    # "_result":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/samsung/android/emailksproxy/CertificateAKS;
    goto :goto_4

    .line 112
    .end local v1    # "_arg0":Lcom/samsung/android/emailksproxy/CertificateAKS;
    :sswitch_5
    const-string v0, "com.samsung.android.emailksproxy.IEmailKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/emailksproxy/IEmailKeystoreService$Stub;->getKeystoreStatus()I

    move-result v6

    .line 114
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
