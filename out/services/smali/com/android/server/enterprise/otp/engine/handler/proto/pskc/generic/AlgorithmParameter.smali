.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;
.super Ljava/lang/Object;
.source "AlgorithmParameter.java"


# instance fields
.field private mChallengeFormat:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;

.field private mResponseFormat:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

.field private mSuite:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChallengeFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->mChallengeFormat:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;

    return-object v0
.end method

.method public getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->mResponseFormat:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    return-object v0
.end method

.method public getSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->mSuite:Ljava/lang/String;

    return-object v0
.end method

.method public setChallengeFormat(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;)V
    .locals 0
    .param p1, "challengeFormat"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->mChallengeFormat:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ChallengeFormat;

    .line 21
    return-void
.end method

.method public setResponseFormat(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;)V
    .locals 0
    .param p1, "responseFormat"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->mResponseFormat:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    .line 29
    return-void
.end method

.method public setSuite(Ljava/lang/String;)V
    .locals 0
    .param p1, "suite"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->mSuite:Ljava/lang/String;

    .line 37
    return-void
.end method
