.class final Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccAPDUArgument"
.end annotation


# instance fields
.field public channel:I

.field public cla:I

.field public command:I

.field public data:Ljava/lang/String;

.field public p1:I

.field public p2:I

.field public p3:I


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    .line 170
    iput p2, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    .line 171
    iput p3, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    .line 172
    iput p4, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    .line 173
    iput p5, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    .line 174
    iput p6, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    .line 175
    iput-object p7, p0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    .line 176
    return-void
.end method
