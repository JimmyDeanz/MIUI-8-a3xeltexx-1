.class final Landroid/content/pm/PersonaState$1;
.super Ljava/lang/Object;
.source "PersonaState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PersonaState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/content/pm/PersonaState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PersonaState;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PersonaState;->valueOf(Ljava/lang/String;)Landroid/content/pm/PersonaState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/content/pm/PersonaState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PersonaState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/PersonaState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 68
    new-array v0, p1, [Landroid/content/pm/PersonaState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/content/pm/PersonaState$1;->newArray(I)[Landroid/content/pm/PersonaState;

    move-result-object v0

    return-object v0
.end method
