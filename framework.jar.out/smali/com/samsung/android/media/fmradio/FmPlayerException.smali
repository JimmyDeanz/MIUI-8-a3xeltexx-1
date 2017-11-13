.class public Lcom/samsung/android/media/fmradio/FmPlayerException;
.super Ljava/lang/Exception;
.source "FmPlayerException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mThrowable:Ljava/lang/Throwable;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/media/fmradio/FmPlayerException;->msg:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/media/fmradio/FmPlayerException;->mThrowable:Ljava/lang/Throwable;

    .line 29
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmPlayerException;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/FmPlayerException;->mThrowable:Ljava/lang/Throwable;

    return-object v0
.end method
