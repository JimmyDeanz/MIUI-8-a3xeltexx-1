.class public abstract Lcom/android/phone/common/mail/store/imap/ImapElement;
.super Ljava/lang/Object;
.source "ImapElement.java"


# static fields
.field public static final NONE:Lcom/android/phone/common/mail/store/imap/ImapElement;


# instance fields
.field private mDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/phone/common/mail/store/imap/ImapElement$1;

    invoke-direct {v0}, Lcom/android/phone/common/mail/store/imap/ImapElement$1;-><init>()V

    sput-object v0, Lcom/android/phone/common/mail/store/imap/ImapElement;->NONE:Lcom/android/phone/common/mail/store/imap/ImapElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/common/mail/store/imap/ImapElement;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method protected final checkNotDestroyed()V
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/phone/common/mail/store/imap/ImapElement;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/common/mail/store/imap/ImapElement;->mDestroyed:Z

    .line 90
    return-void
.end method

.method protected isDestroyed()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/phone/common/mail/store/imap/ImapElement;->mDestroyed:Z

    return v0
.end method

.method public abstract isList()Z
.end method

.method public abstract isString()Z
.end method
