.class public Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;
.super Ljava/lang/Object;
.source "VoicemailPayload.java"


# instance fields
.field private final mBytes:[B

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;->mMimeType:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;->mBytes:[B

    .line 29
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;->mBytes:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/imap/VoicemailPayload;->mMimeType:Ljava/lang/String;

    return-object v0
.end method
