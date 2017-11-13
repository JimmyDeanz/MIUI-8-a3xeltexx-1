.class public Lcom/miui/ivr/ui/MarqueeTextView;
.super Landroid/widget/TextView;
.source "MarqueeTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/miui/ivr/ui/MarqueeTextView;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    sget v0, Lcom/android/internal/R$attr;->textViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-direct {p0}, Lcom/miui/ivr/ui/MarqueeTextView;->init()V

    .line 22
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/MarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/ivr/ui/MarqueeTextView;->setSingleLine()V

    .line 32
    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
