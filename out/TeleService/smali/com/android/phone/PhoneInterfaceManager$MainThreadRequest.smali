.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadRequest"
.end annotation


# instance fields
.field public argument:Ljava/lang/Object;

.field public result:Ljava/lang/Object;

.field public subId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "argument"    # Ljava/lang/Object;
    .param p2, "subId"    # Ljava/lang/Integer;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    .line 197
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    .line 198
    return-void
.end method
