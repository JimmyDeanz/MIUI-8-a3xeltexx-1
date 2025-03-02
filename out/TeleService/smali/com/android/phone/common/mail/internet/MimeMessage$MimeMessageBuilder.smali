.class Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;
.super Ljava/lang/Object;
.source "MimeMessage.java"

# interfaces
.implements Lorg/apache/james/mime4j/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/mail/internet/MimeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MimeMessageBuilder"
.end annotation


# instance fields
.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/common/mail/internet/MimeMessage;


# direct methods
.method public constructor <init>(Lcom/android/phone/common/mail/internet/MimeMessage;)V
    .locals 1

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/phone/common/mail/internet/MimeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    .line 542
    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "bd"    # Lorg/apache/james/mime4j/BodyDescriptor;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    const-class v2, Lcom/android/phone/common/mail/Part;

    invoke-direct {p0, v2}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 611
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/phone/common/mail/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/phone/common/mail/Body;

    move-result-object v0

    .line 613
    .local v0, "body":Lcom/android/phone/common/mail/Body;
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/common/mail/Part;

    invoke-interface {v2, v0}, Lcom/android/phone/common/mail/Part;->setBody(Lcom/android/phone/common/mail/Body;)V
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    return-void

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, "me":Lcom/android/phone/common/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public endBodyPart()V
    .locals 1

    .prologue
    .line 639
    const-class v0, Lcom/android/phone/common/mail/BodyPart;

    invoke-direct {p0, v0}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 640
    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 641
    return-void
.end method

.method public endHeader()V
    .locals 1

    .prologue
    .line 591
    const-class v0, Lcom/android/phone/common/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 592
    return-void
.end method

.method public endMessage()V
    .locals 1

    .prologue
    .line 569
    const-class v0, Lcom/android/phone/common/mail/internet/MimeMessage;

    invoke-direct {p0, v0}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 570
    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 571
    return-void
.end method

.method public endMultipart()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 622
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    const-class v2, Lcom/android/phone/common/mail/internet/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 649
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 653
    :cond_0
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 5
    .param p1, "fieldData"    # Ljava/lang/String;

    .prologue
    .line 580
    const-class v2, Lcom/android/phone/common/mail/Part;

    invoke-direct {p0, v2}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 582
    :try_start_0
    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "tokens":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/common/mail/Part;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/phone/common/mail/Part;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    return-void

    .line 584
    .end local v1    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 585
    .local v0, "me":Lcom/android/phone/common/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    const-class v3, Lcom/android/phone/common/mail/internet/MimeMultipart;

    invoke-direct {p0, v3}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 661
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 664
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/common/mail/internet/MimeMultipart;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/common/mail/internet/MimeMultipart;->setPreamble(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    return-void

    .line 665
    :catch_0
    move-exception v1

    .line 666
    .local v1, "me":Lcom/android/phone/common/mail/MessagingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 3

    .prologue
    .line 626
    const-class v2, Lcom/android/phone/common/mail/internet/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 629
    :try_start_0
    new-instance v0, Lcom/android/phone/common/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Lcom/android/phone/common/mail/internet/MimeBodyPart;-><init>()V

    .line 630
    .local v0, "bodyPart":Lcom/android/phone/common/mail/internet/MimeBodyPart;
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/common/mail/internet/MimeMultipart;

    invoke-virtual {v2, v0}, Lcom/android/phone/common/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/phone/common/mail/BodyPart;)V

    .line 631
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    return-void

    .line 632
    .end local v0    # "bodyPart":Lcom/android/phone/common/mail/internet/MimeBodyPart;
    :catch_0
    move-exception v1

    .line 633
    .local v1, "me":Lcom/android/phone/common/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startHeader()V
    .locals 1

    .prologue
    .line 575
    const-class v0, Lcom/android/phone/common/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 576
    return-void
.end method

.method public startMessage()V
    .locals 4

    .prologue
    .line 553
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/phone/common/mail/internet/MimeMessage;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :goto_0
    return-void

    .line 556
    :cond_0
    const-class v2, Lcom/android/phone/common/mail/Part;

    invoke-direct {p0, v2}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 558
    :try_start_0
    new-instance v0, Lcom/android/phone/common/mail/internet/MimeMessage;

    invoke-direct {v0}, Lcom/android/phone/common/mail/internet/MimeMessage;-><init>()V

    .line 559
    .local v0, "m":Lcom/android/phone/common/mail/internet/MimeMessage;
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/common/mail/Part;

    invoke-interface {v2, v0}, Lcom/android/phone/common/mail/Part;->setBody(Lcom/android/phone/common/mail/Body;)V

    .line 560
    iget-object v2, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    .end local v0    # "m":Lcom/android/phone/common/mail/internet/MimeMessage;
    :catch_0
    move-exception v1

    .line 562
    .local v1, "me":Lcom/android/phone/common/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 4
    .param p1, "bd"    # Lorg/apache/james/mime4j/BodyDescriptor;

    .prologue
    .line 596
    const-class v3, Lcom/android/phone/common/mail/Part;

    invoke-direct {p0, v3}, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 598
    iget-object v3, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/mail/Part;

    .line 600
    .local v0, "e":Lcom/android/phone/common/mail/Part;
    :try_start_0
    new-instance v2, Lcom/android/phone/common/mail/internet/MimeMultipart;

    invoke-interface {v0}, Lcom/android/phone/common/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/phone/common/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 601
    .local v2, "multiPart":Lcom/android/phone/common/mail/internet/MimeMultipart;
    invoke-interface {v0, v2}, Lcom/android/phone/common/mail/Part;->setBody(Lcom/android/phone/common/mail/Body;)V

    .line 602
    iget-object v3, p0, Lcom/android/phone/common/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/phone/common/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    return-void

    .line 603
    .end local v2    # "multiPart":Lcom/android/phone/common/mail/internet/MimeMultipart;
    :catch_0
    move-exception v1

    .line 604
    .local v1, "me":Lcom/android/phone/common/mail/MessagingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
