.class public Lcom/android/phone/common/mail/AuthenticationFailedException;
.super Lcom/android/phone/common/mail/MessagingException;
.source "AuthenticationFailedException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method
