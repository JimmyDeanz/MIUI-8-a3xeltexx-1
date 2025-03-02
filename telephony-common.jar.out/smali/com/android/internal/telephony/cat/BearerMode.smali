.class Lcom/android/internal/telephony/cat/BearerMode;
.super Ljava/lang/Object;
.source "BearerDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/BearerMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isAutoReconnect:Z

.field public isBackgroundMode:Z

.field public isOnDemand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/android/internal/telephony/cat/BearerMode$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerMode$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    .line 85
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    .line 89
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 91
    .local v0, "tempBooleanArray":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 92
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 96
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 99
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerMode$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/telephony/cat/BearerMode$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerMode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 108
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 110
    .local v0, "tempBooleanArray":[Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    aput-boolean v1, v0, v2

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 113
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    aput-boolean v1, v0, v2

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 116
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    aput-boolean v1, v0, v2

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 118
    return-void
.end method
