.class public Lmf/org/apache/xerces/xni/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public localpart:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public rawname:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "localpart"    # Ljava/lang/String;
    .param p3, "rawname"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/QName;)V
    .locals 0
    .param p1, "qname"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 82
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/xni/QName;-><init>(Lmf/org/apache/xerces/xni/QName;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    instance-of v3, p1, Lmf/org/apache/xerces/xni/QName;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 149
    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    .line 150
    .local v0, "qname":Lmf/org/apache/xerces/xni/QName;
    iget-object v3, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 151
    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    .line 158
    .end local v0    # "qname":Lmf/org/apache/xerces/xni/QName;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "qname":Lmf/org/apache/xerces/xni/QName;
    :cond_1
    move v1, v2

    .line 151
    goto :goto_0

    .line 153
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 154
    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "qname":Lmf/org/apache/xerces/xni/QName;
    :cond_3
    move v1, v2

    .line 158
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 141
    iget-object v2, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 140
    :cond_0
    add-int/2addr v0, v1

    .line 143
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "localpart"    # Ljava/lang/String;
    .param p3, "rawname"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/xni/QName;)V
    .locals 1
    .param p1, "qname"    # Lmf/org/apache/xerces/xni/QName;

    .prologue
    .line 94
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x2c

    const/16 v4, 0x22

    .line 164
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v1, "str":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 166
    .local v0, "comma":Z
    iget-object v2, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 167
    const-string v2, "prefix=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    const/4 v0, 0x1

    .line 170
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 171
    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    :cond_1
    const-string v2, "localpart=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    const/4 v0, 0x1

    .line 177
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 178
    if-eqz v0, :cond_3

    .line 179
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    :cond_3
    const-string v2, "rawname=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    const/4 v0, 0x1

    .line 184
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 185
    if-eqz v0, :cond_5

    .line 186
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    :cond_5
    const-string v2, "uri=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
