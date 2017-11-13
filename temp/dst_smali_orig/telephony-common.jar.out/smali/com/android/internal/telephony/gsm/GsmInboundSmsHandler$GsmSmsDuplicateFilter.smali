.class Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;
.super Ljava/lang/Object;
.source "GsmInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GsmSmsDuplicateFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;
    }
.end annotation


# instance fields
.field private final FILTER_SIZE:I

.field mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->FILTER_SIZE:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;Lcom/android/internal/telephony/SmsMessageBase;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;
    .param p1, "x1"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B

    move-result-object v0

    return-object v0
.end method

.method private getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B
    .locals 6
    .param p1, "msg"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v5, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    .local v0, "hdr":[B
    array-length v3, v0

    invoke-virtual {v1, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local v0    # "hdr":[B
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 5
    .param p1, "msg"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;-><init>(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;Lcom/android/internal/telephony/SmsMessageBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SmsCml"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    # invokes: Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->storeLatestSmsInfo(Ljava/lang/String;JZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->access$100(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method public isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 14
    .param p1, "src"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .local v5, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_b

    const/4 v0, 0x0

    .local v0, "addrMatched":Z
    const/4 v1, 0x0

    .local v1, "bodyMatched":Z
    const/4 v6, 0x0

    .local v6, "timeMatched":Z
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;

    .local v4, "rec":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;
    iget-object v3, v4, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;->mSms:Lcom/android/internal/telephony/SmsMessageBase;

    .local v3, "msg":Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_6

    move v6, v7

    :goto_2
    if-eqz v5, :cond_7

    iget-object v9, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v9, :cond_1

    iget-object v9, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v9, :cond_7

    :cond_1
    iget-object v9, v4, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;->mFingerprint:[B

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->getSmsFingerprint(Lcom/android/internal/telephony/SmsMessageBase;)[B

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :goto_3
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    if-eqz v6, :cond_a

    move v8, v7

    .end local v0    # "addrMatched":Z
    .end local v1    # "bodyMatched":Z
    .end local v2    # "i":I
    .end local v3    # "msg":Lcom/android/internal/telephony/SmsMessageBase;
    .end local v4    # "rec":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;
    .end local v6    # "timeMatched":Z
    :cond_2
    :goto_4
    return v8

    :cond_3
    if-eqz v5, :cond_0

    iget-object v9, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v9, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    const-string v9, "isDuplicated: This is concatenated SMS, So, It passed to check duplication!!"

    # invokes: Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V
    invoke-static {v7, v9}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->access$200(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Ljava/lang/String;)V

    goto :goto_4

    .restart local v0    # "addrMatched":Z
    .restart local v1    # "bodyMatched":Z
    .restart local v2    # "i":I
    .restart local v3    # "msg":Lcom/android/internal/telephony/SmsMessageBase;
    .restart local v4    # "rec":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;
    .restart local v6    # "timeMatched":Z
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    move v0, v7

    :goto_5
    goto :goto_1

    :cond_5
    move v0, v8

    goto :goto_5

    :cond_6
    move v6, v8

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    move v1, v7

    :goto_6
    goto :goto_3

    :cond_9
    move v1, v8

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v0    # "addrMatched":Z
    .end local v1    # "bodyMatched":Z
    .end local v3    # "msg":Lcom/android/internal/telephony/SmsMessageBase;
    .end local v4    # "rec":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter$SmsFilterRecord;
    .end local v6    # "timeMatched":Z
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SmsCml"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler$GsmSmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v12

    # invokes: Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->isDuplicatedLatestSms(Ljava/lang/String;JZ)Z
    invoke-static {v9, v10, v12, v13, v8}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->access$300(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Ljava/lang/String;JZ)Z

    move-result v9

    if-eqz v9, :cond_2

    move v8, v7

    goto :goto_4
.end method
