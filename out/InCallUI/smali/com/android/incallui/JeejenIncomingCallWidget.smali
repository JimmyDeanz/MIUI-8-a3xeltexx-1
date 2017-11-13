.class public Lcom/android/incallui/JeejenIncomingCallWidget;
.super Landroid/widget/LinearLayout;
.source "JeejenIncomingCallWidget.java"


# instance fields
.field private mAnswerCallButton:Landroid/widget/Button;

.field private mCallback:Lcom/android/incallui/IJeejenInCallCallback;

.field private mRejectCallButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    iput-object v0, p0, Lcom/android/incallui/JeejenIncomingCallWidget;->mAnswerCallButton:Landroid/widget/Button;

    .line 12
    iput-object v0, p0, Lcom/android/incallui/JeejenIncomingCallWidget;->mRejectCallButton:Landroid/widget/Button;

    .line 14
    iput-object v0, p0, Lcom/android/incallui/JeejenIncomingCallWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/JeejenIncomingCallWidget;)Lcom/android/incallui/IJeejenInCallCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/JeejenIncomingCallWidget;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/android/incallui/JeejenIncomingCallWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 28
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenIncomingCallWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/JeejenIncomingCallWidget;->mAnswerCallButton:Landroid/widget/Button;

    .line 29
    iget-object v0, p0, Lcom/android/incallui/JeejenIncomingCallWidget;->mAnswerCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/incallui/JeejenIncomingCallWidget$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/JeejenIncomingCallWidget$1;-><init>(Lcom/android/incallui/JeejenIncomingCallWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/android/incallui/JeejenIncomingCallWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/JeejenIncomingCallWidget;->mRejectCallButton:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/android/incallui/JeejenIncomingCallWidget;->mRejectCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/incallui/JeejenIncomingCallWidget$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/JeejenIncomingCallWidget$2;-><init>(Lcom/android/incallui/JeejenIncomingCallWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public setCallback(Lcom/android/incallui/IJeejenInCallCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/incallui/IJeejenInCallCallback;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/incallui/JeejenIncomingCallWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;

    .line 22
    return-void
.end method
