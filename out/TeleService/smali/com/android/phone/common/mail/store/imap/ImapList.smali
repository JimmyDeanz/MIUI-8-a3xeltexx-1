.class public Lcom/android/phone/common/mail/store/imap/ImapList;
.super Lcom/android/phone/common/mail/store/imap/ImapElement;
.source "ImapList.java"


# static fields
.field public static final EMPTY:Lcom/android/phone/common/mail/store/imap/ImapList;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/common/mail/store/imap/ImapElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/phone/common/mail/store/imap/ImapList$1;

    invoke-direct {v0}, Lcom/android/phone/common/mail/store/imap/ImapList$1;-><init>()V

    sput-object v0, Lcom/android/phone/common/mail/store/imap/ImapList;->EMPTY:Lcom/android/phone/common/mail/store/imap/ImapList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/phone/common/mail/store/imap/ImapElement;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method add(Lcom/android/phone/common/mail/store/imap/ImapElement;)V
    .locals 2
    .param p1, "e"    # Lcom/android/phone/common/mail/store/imap/ImapElement;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t add null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/mail/store/imap/ImapElement;

    .line 174
    .local v0, "e":Lcom/android/phone/common/mail/store/imap/ImapElement;
    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/imap/ImapElement;->destroy()V

    goto :goto_0

    .line 176
    .end local v0    # "e":Lcom/android/phone/common/mail/store/imap/ImapElement;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/common/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    .line 178
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-super {p0}, Lcom/android/phone/common/mail/store/imap/ImapElement;->destroy()V

    .line 179
    return-void
.end method

.method public final getElementOrNone(I)Lcom/android/phone/common/mail/store/imap/ImapElement;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/android/phone/common/mail/store/imap/ImapElement;->NONE:Lcom/android/phone/common/mail/store/imap/ImapElement;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/mail/store/imap/ImapElement;

    goto :goto_0
.end method

.method final getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapElement;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefixMatch"    # Z

    .prologue
    .line 116
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 117
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/phone/common/mail/store/imap/ImapList;->is(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/phone/common/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/mail/store/imap/ImapElement;

    .line 121
    :goto_1
    return-object v1

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 121
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/phone/common/mail/store/imap/ImapList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapList;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyedListOrEmpty(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefixMatch"    # Z

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapElement;

    move-result-object v0

    .line 138
    .local v0, "e":Lcom/android/phone/common/mail/store/imap/ImapElement;
    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/phone/common/mail/store/imap/ImapList;

    .end local v0    # "e":Lcom/android/phone/common/mail/store/imap/ImapElement;
    :goto_0
    return-object v0

    .restart local v0    # "e":Lcom/android/phone/common/mail/store/imap/ImapElement;
    :cond_0
    sget-object v0, Lcom/android/phone/common/mail/store/imap/ImapList;->EMPTY:Lcom/android/phone/common/mail/store/imap/ImapList;

    goto :goto_0
.end method

.method public final getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/phone/common/mail/store/imap/ImapString;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapString;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefixMatch"    # Z

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/common/mail/store/imap/ImapList;->getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/phone/common/mail/store/imap/ImapElement;

    move-result-object v0

    .line 155
    .local v0, "e":Lcom/android/phone/common/mail/store/imap/ImapElement;
    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/phone/common/mail/store/imap/ImapString;

    .end local v0    # "e":Lcom/android/phone/common/mail/store/imap/ImapElement;
    :goto_0
    return-object v0

    .restart local v0    # "e":Lcom/android/phone/common/mail/store/imap/ImapElement;
    :cond_0
    sget-object v0, Lcom/android/phone/common/mail/store/imap/ImapString;->EMPTY:Lcom/android/phone/common/mail/store/imap/ImapString;

    goto :goto_0
.end method

.method public final getListOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapList;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/phone/common/mail/store/imap/ImapElement;

    move-result-object v0

    .line 99
    .local v0, "el":Lcom/android/phone/common/mail/store/imap/ImapElement;
    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/imap/ImapElement;->isList()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/phone/common/mail/store/imap/ImapList;

    .end local v0    # "el":Lcom/android/phone/common/mail/store/imap/ImapElement;
    :goto_0
    return-object v0

    .restart local v0    # "el":Lcom/android/phone/common/mail/store/imap/ImapElement;
    :cond_0
    sget-object v0, Lcom/android/phone/common/mail/store/imap/ImapList;->EMPTY:Lcom/android/phone/common/mail/store/imap/ImapList;

    goto :goto_0
.end method

.method public final getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/phone/common/mail/store/imap/ImapElement;

    move-result-object v0

    .line 108
    .local v0, "el":Lcom/android/phone/common/mail/store/imap/ImapElement;
    invoke-virtual {v0}, Lcom/android/phone/common/mail/store/imap/ImapElement;->isString()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/phone/common/mail/store/imap/ImapString;

    .end local v0    # "el":Lcom/android/phone/common/mail/store/imap/ImapElement;
    :goto_0
    return-object v0

    .restart local v0    # "el":Lcom/android/phone/common/mail/store/imap/ImapElement;
    :cond_0
    sget-object v0, Lcom/android/phone/common/mail/store/imap/ImapString;->EMPTY:Lcom/android/phone/common/mail/store/imap/ImapString;

    goto :goto_0
.end method

.method public final is(ILjava/lang/String;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/phone/common/mail/store/imap/ImapList;->is(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final is(ILjava/lang/String;Z)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "prefixMatch"    # Z

    .prologue
    .line 78
    if-nez p3, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/phone/common/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/phone/common/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/phone/common/mail/store/imap/ImapString;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/phone/common/mail/store/imap/ImapList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isList()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public final isString()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/phone/common/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
