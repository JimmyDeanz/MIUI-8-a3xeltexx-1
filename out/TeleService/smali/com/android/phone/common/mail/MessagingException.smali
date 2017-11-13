.class public Lcom/android/phone/common/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# instance fields
.field protected mExceptionData:Ljava/lang/Object;

.field protected mExceptionType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    iput p1, p0, Lcom/android/phone/common/mail/MessagingException;->mExceptionType:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/mail/MessagingException;->mExceptionData:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method
