.class public Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.super Landroid/widget/LinearLayout;
.source "QuickSettingsTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field private static focusDrawable:Landroid/graphics/drawable/Drawable;

.field protected static final isSprintBrand:Z


# instance fields
.field protected draw_color:Z

.field private gainFocus:Z

.field private mColSpan:I

.field private mContentLayoutId:I

.field private mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

.field private mPrepared:Z

.field private mRowSpan:I

.field private oldFlipFont:I

.field private oldLocale:Ljava/util/Locale;

.field private overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

.field private resetTouchDelegate:Z

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;

.field public tileLabel:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public tileRemoveable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private touchChildView:Landroid/view/View;

.field private touchParentView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 427
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->DEBUG:Z

    .line 608
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    .line 660
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/systemui/CustomizationUtil;->checkSkuId([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->isSprintBrand:Z

    return-void

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 186
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->draw_color:Z

    .line 248
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 249
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 395
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    .line 398
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileRemoveable:Z

    .line 409
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    .line 432
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldLocale:Ljava/util/Locale;

    .line 434
    iput v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldFlipFont:I

    .line 561
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    .line 562
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    .line 565
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->resetTouchDelegate:Z

    .line 606
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->gainFocus:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContentLayoutId:I

    .line 76
    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mColSpan:I

    .line 77
    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mRowSpan:I

    .line 79
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setFocusable(Z)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOrientation(I)V

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private directionToString(I)Ljava/lang/String;
    .locals 1
    .parameter "direction"

    .prologue
    .line 635
    sparse-switch p1, :sswitch_data_0

    .line 650
    const-string v0, "FOCUS_UNKNOWN"

    :goto_0
    return-object v0

    .line 638
    :sswitch_0
    const-string v0, " FOCUS_UP"

    goto :goto_0

    .line 640
    :sswitch_1
    const-string v0, "FOCUS_DOWN"

    goto :goto_0

    .line 642
    :sswitch_2
    const-string v0, "FOCUS_LEFT"

    goto :goto_0

    .line 644
    :sswitch_3
    const-string v0, "FOCUS_RIGHT"

    goto :goto_0

    .line 646
    :sswitch_4
    const-string v0, "FOCUS_FORWARD"

    goto :goto_0

    .line 648
    :sswitch_5
    const-string v0, "FOCUS_BACKWARD"

    goto :goto_0

    .line 635
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private isParentVisible()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v2

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, current:Landroid/view/ViewParent;
    :goto_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 162
    check-cast v1, Landroid/view/View;

    .line 163
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 161
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 167
    .end local v1           #view:Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setColorSelectorEnable(Z)V
    .locals 1
    .parameter "_enable"

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->draw_color:Z

    if-eq v0, p1, :cond_0

    .line 194
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->draw_color:Z

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->postInvalidate()V

    .line 196
    :cond_0
    return-void
.end method

.method private updatePreparedState()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->isParentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;->onPrepare()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mPrepared:Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mOnPrepareListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;->onUnprepare()V

    goto :goto_0
.end method


# virtual methods
.method protected Log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "content"

    .prologue
    .line 655
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 656
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    return-void
.end method

.method public disableQuickTipsFlag()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.systemui.QS_TIP_MORE"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->disableQuickTipFlag(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v1, 0xff

    .line 372
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->draw_color:Z

    if-ne v0, v2, :cond_0

    .line 373
    const/16 v0, 0x33

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 375
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 378
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->gainFocus:Z

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 380
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 381
    sget-object v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 383
    :cond_1
    return-void
.end method

.method getColumnSpan()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mColSpan:I

    return v0
.end method

.method protected getOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 572
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$5;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldFlipFont:I

    .line 246
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 439
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 441
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 444
    .local v0, newLocale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onLocaleChanged()V

    .line 449
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldLocale:Ljava/util/Locale;

    .line 453
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldFlipFont:I

    iget v2, p1, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v1, v2, :cond_2

    .line 455
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->onFlipFontChanged()V

    .line 456
    iget v1, p1, Landroid/content/res/Configuration;->FlipFont:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->oldFlipFont:I

    .line 458
    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    .line 180
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 349
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 352
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->resetTouchDelegate:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 354
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->resetTouchDelegate:Z

    .line 357
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 360
    .local v1, width:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 362
    .local v0, height:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    new-instance v3, Landroid/view/TouchDelegate;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 366
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    return-void
.end method

.method protected onFlipFontChanged()V
    .locals 3

    .prologue
    .line 486
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 489
    .local v0, textview:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    const v2, 0x20300ce

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 504
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0018

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 498
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d001a

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 501
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0019

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x7f07002a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6
    .parameter "_gainFocus"
    .parameter "_direction"
    .parameter "_prevFocusRect"

    .prologue
    const/4 v5, 0x1

    .line 613
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 616
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->gainFocus:Z

    .line 617
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->invalidate()V

    .line 620
    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->gainFocus:Z

    if-ne v1, v5, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 624
    .local v0, resource:Landroid/content/res/Resources;
    const v1, 0x208012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    .line 625
    sget-object v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->focusDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x2060003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 629
    .end local v0           #resource:Landroid/content/res/Resources;
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->DEBUG:Z

    if-ne v1, v5, :cond_1

    .line 630
    const-string v1, "QuickSettingsTileView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gainFocus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->directionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_1
    return-void
.end method

.method protected onLocaleChanged()V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method public onOverlayColorChanged()V
    .locals 3

    .prologue
    .line 512
    const v2, 0x7f070027

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, imageview:Landroid/view/View;
    instance-of v2, v0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    if-eqz v2, :cond_0

    .line 516
    check-cast v0, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    .end local v0           #imageview:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->onOverlayColorChanged()V

    .line 518
    :cond_0
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 521
    .local v1, indicatorview:Landroid/view/View;
    instance-of v2, v1, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    if-eqz v2, :cond_1

    .line 522
    check-cast v1, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    .end local v1           #indicatorview:Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->onOverlayColorChanged()V

    .line 523
    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 388
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->resetTouchDelegate:Z

    .line 393
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColorSelectorEnable(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;->setOverlayEnable(Z)V

    .line 271
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 311
    :goto_0
    return v0

    .line 276
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 311
    :cond_3
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 285
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 294
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColorSelectorEnable(Z)V

    goto :goto_1

    .line 304
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColorSelectorEnable(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;->setOverlayEnable(Z)V

    goto :goto_1

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V

    .line 174
    return-void
.end method

.method protected removeSelfIfNeed(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 478
    :goto_0
    return-void

    .line 467
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method setColumnSpan(I)V
    .locals 0
    .parameter "span"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->mColSpan:I

    .line 85
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 329
    if-nez p1, :cond_0

    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColorSelectorEnable(Z)V

    .line 342
    :cond_0
    return-void
.end method

.method public setOnOverlayChangeListener(I)V
    .locals 2
    .parameter "viewID"

    .prologue
    .line 413
    if-nez p1, :cond_1

    .line 414
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 420
    .local v0, overlayView:Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    if-eqz v1, :cond_0

    .line 421
    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    .end local v0           #overlayView:Landroid/view/View;
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->overlayListener:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnOverlayChangeListener;

    goto :goto_0
.end method

.method protected setTouchDelegate(II)V
    .locals 3
    .parameter "parentID"
    .parameter "childID"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 536
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 538
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    .line 539
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->resetTouchDelegate:Z

    .line 559
    :cond_1
    :goto_0
    return-void

    .line 545
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    .line 546
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->touchChildView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 552
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->resetTouchDelegate:Z

    .line 555
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->requestLayout()V

    .line 557
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->DEBUG:Z

    if-ne v0, v1, :cond_1

    .line 558
    const-string v0, "QuickSettingsTileView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTouchDelegate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->tileLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "vis"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    return-void
.end method
