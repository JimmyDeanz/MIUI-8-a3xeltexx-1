.class public Lcom/samsung/android/emailksproxy/CertificateAKS;
.super Ljava/lang/Object;
.source "CertificateAKS.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/emailksproxy/CertificateAKS;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCertificate:[Ljava/security/cert/Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/samsung/android/emailksproxy/CertificateAKS$1;

    invoke-direct {v0}, Lcom/samsung/android/emailksproxy/CertificateAKS$1;-><init>()V

    sput-object v0, Lcom/samsung/android/emailksproxy/CertificateAKS;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/samsung/android/emailksproxy/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/emailksproxy/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
