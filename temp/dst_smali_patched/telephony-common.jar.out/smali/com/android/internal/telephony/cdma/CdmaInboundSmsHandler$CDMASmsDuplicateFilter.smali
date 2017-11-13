.class Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;
.super Ljava/lang/Object;
.source "CdmaInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CDMASmsDuplicateFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;
    }
.end annotation


# instance fields
.field private final FILTER_SIZE:I

.field mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->FILTER_SIZE:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 8
    .param p1, "msg"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTeleserviceId()I

    move-result v0

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;IJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SmsCml"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    # invokes: Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->storeLatestSmsInfo(Ljava/lang/String;JZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$000(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method public isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 12
    .param p1, "src"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_9

    const/4 v0, 0x0

    .local v0, "addrMatched":Z
    const/4 v1, 0x0

    .local v1, "bodyMatched":Z
    const/4 v5, 0x0

    .local v5, "timeMatched":Z
    const/4 v4, 0x0

    .local v4, "msgIdMatched":Z
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;

    .local v3, "msg":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;
    # getter for: Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->originAddress:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->access$100(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    move v0, v6

    :goto_1
    # getter for: Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->timeStamp:J
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->access$200(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    move v5, v6

    :goto_2
    # getter for: Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->msgId:I
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->access$300(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)I

    move-result v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v9

    if-ne v8, v9, :cond_4

    move v4, v6

    :goto_3
    # getter for: Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->msgBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->access$400(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    move v1, v6

    :goto_4
    const-string v8, "CdmaInboundSmsHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " isDuplicated()->addrMatched value:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " timeMatched value:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " msgIdMatched value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  bodyMatched value:   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_Sms3gpp2LgtNetwork"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    .end local v0    # "addrMatched":Z
    .end local v1    # "bodyMatched":Z
    .end local v3    # "msg":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;
    .end local v4    # "msgIdMatched":Z
    .end local v5    # "timeMatched":Z
    :cond_0
    :goto_5
    return v6

    .restart local v0    # "addrMatched":Z
    .restart local v1    # "bodyMatched":Z
    .restart local v3    # "msg":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;
    .restart local v4    # "msgIdMatched":Z
    .restart local v5    # "timeMatched":Z
    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    # getter for: Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->originAddress:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->access$100(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    move v4, v7

    goto :goto_3

    :cond_5
    move v1, v7

    goto :goto_4

    :cond_6
    # getter for: Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->msgBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;->access$400(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-nez v5, :cond_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v0    # "addrMatched":Z
    .end local v1    # "bodyMatched":Z
    .end local v3    # "msg":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter$SmsFilterRecord;
    .end local v4    # "msgIdMatched":Z
    .end local v5    # "timeMatched":Z
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_SmsCml"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_a
    move v6, v7

    goto :goto_5

    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v10

    # invokes: Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isDuplicatedLatestSms(Ljava/lang/String;JZ)Z
    invoke-static {v8, v9, v10, v11, v6}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->access$500(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;JZ)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_5
.end method
