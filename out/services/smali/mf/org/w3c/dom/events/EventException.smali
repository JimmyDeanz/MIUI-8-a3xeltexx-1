.class public Lmf/org/w3c/dom/events/EventException;
.super Ljava/lang/RuntimeException;
.source "EventException.java"


# static fields
.field public static final UNSPECIFIED_EVENT_TYPE_ERR:S


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "code"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    iput-short p1, p0, Lmf/org/w3c/dom/events/EventException;->code:S

    .line 25
    return-void
.end method
