.class public Landroid/inputmethodservice/SoftInputWindow;
.super Landroid/app/Dialog;
.source "SoftInputWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/SoftInputWindow$Callback;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field final mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

.field mContext:Landroid/content/Context;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mGravity:I

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field final mKeyEventCallback:Landroid/view/KeyEvent$Callback;

.field private mMinimizeFlag:Z

.field final mName:Ljava/lang/String;

.field final mTakesFocus:Z

.field final mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "callback"    # Landroid/inputmethodservice/SoftInputWindow$Callback;
    .param p5, "keyEventCallback"    # Landroid/view/KeyEvent$Callback;
    .param p6, "dispatcherState"    # Landroid/view/KeyEvent$DispatcherState;
    .param p7, "windowType"    # I
    .param p8, "gravity"    # I
    .param p9, "takesFocus"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mMinimizeFlag:Z

    .line 88
    iput-object p2, p0, Landroid/inputmethodservice/SoftInputWindow;->mName:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Landroid/inputmethodservice/SoftInputWindow;->mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

    .line 90
    iput-object p5, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    .line 91
    iput-object p6, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 92
    iput p7, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowType:I

    .line 93
    iput p8, p0, Landroid/inputmethodservice/SoftInputWindow;->mGravity:I

    .line 94
    iput-boolean p9, p0, Landroid/inputmethodservice/SoftInputWindow;->mTakesFocus:Z

    .line 95
    invoke-direct {p0}, Landroid/inputmethodservice/SoftInputWindow;->initDockWindow()V

    .line 97
    const-string/jumbo v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 99
    iput-object p1, p0, Landroid/inputmethodservice/SoftInputWindow;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method private initDockWindow()V
    .locals 4

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 231
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowType:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 232
    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    iget v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mGravity:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 235
    invoke-direct {p0, v0}, Landroid/inputmethodservice/SoftInputWindow;->updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V

    .line 237
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 239
    const/16 v2, 0x100

    .line 240
    .local v2, "windowSetFlags":I
    const/16 v1, 0x10a

    .line 244
    .local v1, "windowModFlags":I
    iget-boolean v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mTakesFocus:Z

    if-nez v3, :cond_0

    .line 245
    or-int/lit8 v2, v2, 0x8

    .line 251
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setFlags(II)V

    .line 252
    return-void

    .line 247
    :cond_0
    or-int/lit8 v2, v2, 0x20

    .line 248
    or-int/lit8 v1, v1, 0x20

    goto :goto_0
.end method

.method private updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 183
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    .line 184
    :cond_0
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 185
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_1
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 188
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 144
    iget-boolean v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mMinimizeFlag:Z

    if-eqz v2, :cond_0

    .line 146
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mMinimizeFlag:Z

    .line 147
    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->undoMinimizeSoftInput()V

    .line 148
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    .line 151
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget-object v5, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->isWithinBoundsNoHistory(FFFF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 155
    :cond_1
    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget-object v5, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->clampNoHistory(FFFF)Landroid/view/MotionEvent;

    move-result-object v1

    .line 157
    .local v1, "temp":Landroid/view/MotionEvent;
    invoke-super {p0, v1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 158
    .local v0, "handled":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/SoftInputWindow$Callback;->onBackPressed()V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 193
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 200
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 214
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 207
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 105
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 106
    return-void
.end method

.method public setGravity(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 173
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 174
    invoke-direct {p0, v0}, Landroid/inputmethodservice/SoftInputWindow;->updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V

    .line 175
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 176
    return-void
.end method

.method public setMinimizeFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Landroid/inputmethodservice/SoftInputWindow;->mMinimizeFlag:Z

    .line 260
    return-void
.end method

.method public setToken(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 68
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 69
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 70
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 137
    return-void
.end method
