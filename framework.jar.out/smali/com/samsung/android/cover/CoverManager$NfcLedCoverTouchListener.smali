.class public Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
.super Ljava/lang/Object;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NfcLedCoverTouchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverTouchAccept()V
    .locals 0

    .prologue
    .line 932
    return-void
.end method

.method public onCoverTouchReject()V
    .locals 0

    .prologue
    .line 940
    return-void
.end method

.method public onSystemCoverEvent(I[I)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "args"    # [I

    .prologue
    .line 952
    return-void
.end method
